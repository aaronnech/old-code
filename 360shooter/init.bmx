'------------------------
'GLOBAL
'------------------------

'Background
Global bg_img:TImage = LoadImage("incbin::Media/bg.png")

'Player
AutoMidHandle True
Global player_img:TImage = LoadImage("incbin::Media/player.png")
Global firepart:TImage = LoadImage("incbin::Media/fire.png")
Global firepart2:TImage = LoadImage("incbin::Media/fire2.png")
Global playerpart:TImage = LoadImage("incbin::Media/playerpart.png")
Global target_img:TImage = LoadImage("incbin::Media/target.png")
Global shield_img:TImage = LoadImage("incbin::Media/shield.png")
Global starpart:TImage = LoadImage("incbin::Media/star.png")
Global landingpad:TImage = LoadImage("incbin::Media/landing.png")
AutoMidHandle False
Global px:Float = 512, py:Float = 384
Global pdx:Float, pdy:Float
Global protation:Int
Global burning:Int
Global dead:Int,deadtimer:Int
Global targetrot:Int
Global player_st:Int = 1
Global player_shield:Int

Global TOPSPEED:Int = 15
Global HEALTH:Int = 10
Global BOMBS:Int = 10

Global bg_music:TSound = LoadSound("Media/bgmusic.wav",SOUND_LOOP)

'hostile
AutoMidHandle True
Global hostile_img:TImage = LoadImage("incbin::Media/hostile.png")
AutoMidHandle False
Global CREATED_ENEMIES:Int

'Projectiles
AutoMidHandle True
Global bullet_img:TImage = LoadImage("incbin::Media/bullet.png")
Global bomb_img:TImage = LoadImage("incbin::Media/bomb.png")
Global bomb_exp:TImage = LoadImage("incbin::Media/bomb_exp.png")
AutoMidHandle False
Global shoot_sound:TSound = LoadSound("incbin::Media/shooting.wav")
Global boom_sound:TSound = LoadSound("incbin::Media/boom.wav")
Global bomb_sound:TSound = LoadSound("incbin::Media/bomb_boom.wav")

'HUD
Global hud_shield_img:TImage = LoadImage("incbin::Media/hud_shields.png")
Global hud_radar_img:TImage = LoadImage("incbin::Media/hud_radar.png")

'other
Global alert:TSound = LoadSound("incbin::Media/beep.wav")
Global calert:TChannel = AllocChannel()
Global std:TImageFont = LoadImageFont("Media/BEWARE__.TTF", 15)

Global MainMenu:Int = True
Global table:fry_TTable

'------------------------
'CONSTANT
'------------------------

Const ACCELERATION:Float = 0.1
Const BULLET_SPEED:Int = 20
Const START_ENEMIES:Int = 0

Const radarScale:Int = 40 '8000/200
Const radarOffset:Int = 100 'Radius of Radar



'------------------------
'TYPE/CLASS
'------------------------
Global BulletList:TList = CreateList()
Global EnemyList:TList = CreateList()
Global BombList:TList = CreateList()


Type TBullet
	Field x:Float,y:Float
	Field dx:Float,dy:Float
	Field angle:Int
	Field a:Float = 1
	Field s:Int

	Const da:Float = 1.0 / 50

	Method Create:TBullet(_x:Float,_y:Float,_ang:Int, _s:Int = 1)
		ListAddLast(BulletList,Self)
		x = _x
		y = _y
		angle = _ang
		dx = AngleToDX(_ang)
		dy = AngleToDY(_ang)
		s = _s
	End Method
	
	Method Update()
		x:+dx*BULLET_SPEED
		y:+dy*BULLET_SPEED
		x:+ -pdx
		y:+ -pdy
		a:-da
		
		'check for collisions
		If s = 2
			If Not dead
				If RectsOverlap(x-3.5, y-3.5, 7, 7, 492, 364, 20, 20)
					BulletList.Remove(Self)
					HEALTH:-1
					If HEALTH
						player_shield = True
					End If
				End If
			End If
		End If
		If s = 1
			For Local e:TEnemy = EachIn EnemyList
				If RectsOverlap(x-3.5, y-3.5, 7, 7, e.x-10, e.y-10, 20, 20)
					BulletList.Remove(Self)
					e.hp:-1
					If e.hp
						e.shield = True
					End If
					Exit
				End If
			Next
		End If

		If x > -8 And x < 1032 And y > -8 And y < 776
			SetAlpha a
			SetRotation angle
			DrawImage bullet_img,x,y
			SetRotation 0
			SetAlpha 1
		End If
	End Method

End Type

Type TBomb
	Field timer:Int,duration:Int
	Field x:Float, y:Float
	
	Method Create:TBomb(_x:Float,_y:Float,_dur:Int = 100)
		ListAddLast(BombList,Self)
		x = _x
		y = _y
		duration = _dur
	End Method
	
	Method Update()
		If x > -28 And x < 1052 And y > -28 And y < 796
			DrawImage bomb_img,x,y
		End If
		
		x:+-pdx
		y:+-pdy

		
		If timer >= duration
			PlaySound bomb_sound
			BombList.Remove(Self)
			EmitParticle(x,y,bomb_exp,10)
			For Local e:TEnemy = EachIn EnemyList
				If PointsToDistance(e.x,e.y,x,y) < 150 e.die()
			Next
			If PointsToDistance(512,384,x,y) < 150 And Not dead PlayerDie()
		End If
		
		timer:+1
	End Method

End Type


Type TEnemy
	Field x:Float,y:Float
	Field dx:Float,dy:Float
	Field angle:Int
	Field shoottimer:Int
	Field acc:Float
	Field ts:Int
	Field hp:Int = 2
	Field st:Int, shield:Int
	
	
	Method Create:TEnemy()
		ListAddLast(EnemyList,Self)
		x = Rand(-4000,4768)
		y = Rand(-4000,5024)
		acc = Rnd(.09,.29)
		ts = Rand(4,15)
	End Method
	
	Method Update()
		'DrawText PointsToDistance(x,y,400,300),0,40
		If Not dead
			angle = PointsToAngle(x,y,512,384)+90
			dx:+AngleToDX(angle)* acc
			dy:+AngleToDY(angle)* acc
			If dx > ts dx = ts
			If dx < -ts dx = -ts
			If dy > ts dy = ts
			If dy < -ts dy = -ts
			
	
				
			If PointsToDistance(x,y,512,384) < 200
				If shoottimer > Rand(20,35)
					PlaySound shoot_sound
					Local bul:TBullet = New TBullet.Create(x,y,angle,2)
					shoottimer = 0
				End If
				shoottimer:+1
			End If
		End If
		x:+dx
		y:+dy
		x:+ -pdx
		y:+ -pdy
		If st = 20
			st = 1
			shield = False
		End If
		If hp = 0 Die()
		If x < 1034 And x > -10 And y < 778 And y > -10
			If Not dead
				'after burner
				EmitParticle(Cos(angle-90) * -9 + x, Sin(angle-90) * -9 + y, firepart2, 10, True, Rand(angle+145, angle+215), 3)
			End If
			
			SetRotation angle
			DrawImage hostile_img,x,y
			SetRotation 0
			
			If shield DrawImage shield_img,x,y
		End If
		If shield st:+1
	End Method

	Method Die()
		PlaySound boom_sound
		ParticleExplosion(x, y, playerpart, 10, 40,,True)
		ParticleExplosion(x, y, firepart, 10, 40, .25)
		ParticleExplosion(x, y, firepart2, 10, 40)
		EnemyList.Remove(Self)
	End Method

End Type


'------------------------
'FUNCTION
'------------------------

Function UpdateBG()

	'SetAlpha .3
	TileImage bg_img,-(px+pdx),-(py+pdy)
	'SetAlpha 1

End Function

Function UpdateBullets(movex:Float = 0, movey:Float = 0)
	For Local b:TBullet = EachIn BulletList
		b.Update()
		b.x:+movex
		b.y:+movey
	Next
	For Local b2:TBomb = EachIn BombList
		b2.Update()
		b2.x:+movex
		b2.y:+movey
	Next
End Function

Global leftover:Float=0
Const dotspacing:Float=5

Function UpdatePlayer()

	Local RadPx:Float
	Local RadPy:Float
	If KeyDown(KEY_SPACE)	
		If burning = False burning = True
		pdx:+AngleToDX(protation)*ACCELERATION
		pdy:+AngleToDY(protation)*ACCELERATION
	Else
		If burning = True burning = False
	End If
		
	protation = PointsToAngle(512,384,MouseX(),MouseY())+90
	If MouseHit(1) And Not dead
		PlaySound shoot_sound
		Local bul:TBullet = New TBullet.Create(512,384,protation)
	End If
	
	If MouseHit(2) And Not dead And BOMBS
		'PlaySound shoot_sound
		Local bom:TBomb = New TBomb.Create(512,384)
		BOMBS:-1
	End If
	
	'old method for thruster trail
	'If burning And Not dead
	'	EmitParticle(Cos(protation-90) * -9 + 512, Sin(protation-90) * -9 + 384, firepart2, 10, True, 180, 3, ,True)
	'End If
	
	If pdx > TOPSPEED pdx = TOPSPEED
	If pdx < -TOPSPEED pdx = -TOPSPEED
	If pdy > TOPSPEED pdy = TOPSPEED
	If pdy < -TOPSPEED pdy = -TOPSPEED

	If protation > 360 protation = protation - 360
	If protation < 0 protation = protation + 360
	
	'new method for thruster trail
	Local distance:Float=Sqr(pdx*pdx+pdy*pdy) 'this is how far the ship moved this frame)
	Local dx:Int = pdx/distance 'make (dx,dy) a unit vector in the direction of the ship's movement
	Local dy:Int = pdy/distance
	If burning And Not dead
               Local t:Float = 0
		While t<distance
			Local _x#=(Cos(protation-90) * -9 + 512) - t*dx
			Local _y#=(Sin(protation-90) * -9 + 384) - t*dy
	   		EmitParticle(_x, _y, firepart2, 10, True, 180, 3, ,True)
	   		t:+dotspacing
		Wend
	End If
	
	
	px :+ pdx
	py :+ pdy	

	If HEALTH < 1 PlayerDie()
	If deadtimer > 115
		ParticleExplosion(512,384,starpart,70,15,Rnd(2.11,3.99))
		dead = False
		deadtimer = 0
	End If

	If player_st = 20
		player_st = 1
		player_shield = False
	End If
	
	DrawImage landingpad,-px+1024,-py+768
	
	If Not dead
		SetRotation protation
		DrawImage player_img,512,384
		SetRotation 0
		If player_shield
			DrawImage shield_img,512,384
			player_st:+1
		End If
	Else
		SetAlpha .2
		SetRotation protation
		DrawImage player_img,512,384
		SetRotation 0
		SetAlpha 1
		deadtimer:+1
	End If
	
	targetrot:+5
	If targetrot > 360 targetrot = 0
	If targetrot < 0 targetrot = 360
	SetRotation targetrot
	DrawImage target_img,MouseX(),MouseY()
	SetRotation 0
	

End Function

Function PlayerDie()
	PlaySound boom_sound
	dead = True
	ParticleExplosion(512, 384, playerpart, 10, 40,,True)
	ParticleExplosion(512, 384, firepart, 10, 40, .25)
	ParticleExplosion(512, 384, firepart2, 10, 40)
	
	'"Push" enemy's, particles, and bullets off to where they were (don't follow player)
	For Local e:TEnemy = EachIn EnemyList
		e.x:+px-512
		e.y:+py-384
	Next
	UpdateParticlesZ(,px-512,py-384)
	UpdateBullets(px-512,py-384)
	
	px = 512
	py = 384
	pdx = 0
	pdy = 0
	burning = 0
	player_shield = False
	HEALTH = 10

End Function

Function UpdateEnemys()
	Local ok:Int = False
	For Local e:TEnemy = EachIn EnemyList
		e.Update()
		If Not ok And Not dead
			If e.x < 1034 And e.x > -10 And e.y < 778 And e.y > -10
				ok = True
			End If
		End If
	Next
	
	'alert if in view
	If ok
		If Not ChannelPlaying(calert) calert = PlaySound(alert)
	Else
		If ChannelPlaying(calert) StopChannel(calert)
	End If
			
End Function

Function UpdateHUD()
	Local RadPx:Float,RadPy:Float
	'Shield bar
	DrawImage hud_shield_img,30,5
	
	SetColor 131,210,215
	For Local i:Int = 1 To HEALTH
		DrawRect (i*14)+80,29,7,30
		SetAlpha .3
		DrawRect (i*14-4)+80,25,15,38
		SetAlpha 1
	Next
	SetColor 255,255,255
	
	'# of bombs
	DrawImage bomb_img,60, 110
	DrawText " x  "+BOMBS,80, 110
	
	
	'Radar(replace w/ image later)
	
	
	'SetColor 0,150,0
	'DrawOval 824,568,200,200
	'SetColor 255,255,255
	
	DrawImage hud_radar_img,824,568

	'plot a pixel at the enemies locations on the radar
	For Local e:TEnemy = EachIn EnemyList
		RadPx = ((e.x-(px+512))/radarScale+(px/radarScale)) + 919
		RadPy = ((e.y-(py+384))/radarScale+(py/radarScale)) + 663
		If PointsToDistance(924,668,RadPx,RadPy) < radarOffset
			Plot(RadPx,RadPy)
		End If
	Next
End Function


Function RectsOverlap%(x0:Int, y0:Int, w0:Int, h0:Int, x2:Int, y2:Int, w2:Int, h2:Int)
	If x0 > (x2 + w2) Or (x0 + w0) < x2 Then Return False
	If y0 > (y2 + h2) Or (y0 + h0) < y2 Then Return False
	Return True
End Function




Extern "Win32"
	Function GetSystemMetrics:Int(Axis:Int)
End Extern
