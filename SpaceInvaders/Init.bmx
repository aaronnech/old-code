Rem
PRE DECLARED VERIABLES.
.
.
.
.
.
.
.
.
.
.
End Rem
'FPS Stuff
Const	ReqFPS:Int=60

Global	SUperiod:Int=1000/ReqFPS
Global	SUtime:Int=MilliSecs()-SUperiod
Global	SUelapsed:Int
Global	SU:Int
Global	SUticks:Int

'Loopers
Global i:Int, CHECKALIEN:TAlien, CHECKBULLET:TBullet

'TLists...
Global AlienList:TList = CreateList()
Global BulletList:TList = CreateList()
Global ExplosionList:TList = CreateList()

'Constants..
Const PARENT_PLAYER:Int = 2,PARENT_ALIEN1:Int = 1
Const DIR_UP:Int = 1, DIR_DOWN:Int = -1

'Globals...
Global ALIEN_LAYOUT[20,8]
Global FIRE_DOWN:Int = KeyDown(KEY_SPACE), FIRE_TIMER:Float
Global LIFES:Int=3,LEVEL:Int=1,SCORE:Int,EARTHHP:Float=100
Global player:TPlayer

'Media loading..

'images
Global BG:TImage = LoadImage("Media\BG.png")
Global intro:TImage = LoadImage("Media\intro.png")
Global player_img:TImage = LoadImage("Media\player.png")
Global press_ent:TImage = LoadImage("Media\press_return.png")

'animated images
Global alien1_img:TImage = LoadAnimImage("Media\alien1.png",25,25,0,3)
Global alien2_img:TImage = LoadAnimImage("Media\alien2.png",25,25,0,3)
Global alien3_img:TImage = LoadAnimImage("Media\alien3.png",25,25,0,3)
Global alien4_img:TImage = LoadAnimImage("Media\alien4.png",25,25,0,3)
Global explosion_img:TImage = LoadAnimImage("Media\explosion.png",25,25,0,5)

'sounds
Global fire:TSound = LoadSound("Media\fire.wav")
Global boom:TSound = LoadSound("Media\boom.wav")
Global bg_music:TSound = LoadSound("Media\music.ogg",SOUND_LOOP)

Rem
OBJECTS
.
.
.
.
.
.
.
.
End Rem

'Explosion object, handles explosion effects, and emition
Type TExplosion
	Field FrameTimer:Float,Current_Frame:Int
	Field x:Int,y:Int,size:Int
	Method Create(bx:Int,by:Int,bsize:Int=1)
		ListAddLast ExplosionList,Self
		x = bx
		y = by
		size = bsize
		FrameTimer = 0
		Current_Frame = 0
	End Method
	
	Method Update()
		If size = 2 SetScale 6.0,6.0
		DrawImage explosion_img,x,y,Current_Frame
		SetScale 1.0,1.0
		FrameTimer:+0.1
		Current_Frame = FrameTimer
		If FrameTimer > 4
			ExplosionList.remove(Self)
			If size = 2 player.Mobile = True
		End If
	End Method
	
End Type

'Alien Object, keeps track of aliens, and adds AI to them
Type TAlien
	Field x:Int,y:Int,orgx:Int,lr:Int
	Field Alien:TImage,IMGFrame:Int,IMGFrameTimer:Float,shoottimer:Int, shoottime:Int
	
	Method Create(PX:Int,PY:Int,A_Type:Int)
		x = (PX*35) - 15
		y = (PY*35) - 48
		orgx = x
		lr = 2
		shoottimer = Rand(2000,7000)
		shoottime = MilliSecs()
		Select A_Type
			Case 1			
				Alien = alien1_img
				shoottimer = Rand(4000,7000)
			Case 2
				Alien = alien2_img
				shoottimer = Rand(3500,6000)
			Case 3
				Alien = alien3_img
				shoottimer = Rand(2300,4500)
			Case 4
				Alien = alien4_img
				shoottimer = Rand(1500,3000)
		End Select
		IMGFrame = 0
		ListAddLast AlienList,Self
	End Method
	
	Method Update()
		If x >=(orgx+20) lr = 1
		If x <=(orgx-20) lr = 2
		If x < (orgx+20) And lr=2 x:+3
		If x > (orgx-20) And lr=1 x:-3
		
		If MilliSecs() > shoottime + shoottimer
			PlaySound fire
			Self.Shoot()
			shoottime = MilliSecs()
		End If
		
		IMGFrame = IMGFrameTimer
		
		DrawImage Alien,x,y,IMGFrame
		
		IMGFrameTimer:+0.05
		If IMGFrameTimer > 3 IMGFrameTimer = 0
	End Method
	
	Method Shoot()
		Local bullet:TBullet = New TBullet
		bullet.Create(PARENT_ALIEN,Self.x,Self.y)
		
	End Method
	
	Method BlowUp()
		AlienList.Remove(Self)
		Local exp1:TExplosion = New TExplosion
		exp1.Create(Self.x,Self.y)
		SCORE:+1
	End Method
	
End Type

'Player object, keeps track of the player, and adds functionality to him
Type TPlayer
	Field x:Int,y:Int,HP:Int,Mobile:Int
	
	Method Create()
		x = 400
		y = 480
		HP = 10
		Mobile = True
	End Method
	
	
	Method Update()
		FIRE_DOWN:Int = KeyDown(KEY_SPACE)
		
		If KeyDown(KEY_RIGHT) And x < 760 And Mobile = True x:+8
		If KeyDown(KEY_LEFT) And x > 0 And Mobile = True x:-8
		If KeyHit(KEY_SPACE) And Mobile = True PlaySound fire Self.Shoot()
		If FIRE_DOWN And Mobile = True And FIRE_TIMER >= 2 PlaySound fire Self.Shoot()
		
		
		DrawImage player_img,x,y
		
		FIRE_TIMER:+0.1
		If FIRE_TIMER > 2.1 FIRE_TIMER = 0
	End Method
	
	Method Shoot()
		Local bullet:TBullet = New TBullet
		bullet.Create(PARENT_PLAYER,Self.x,Self.y)
	End Method
	
	Method Hit()
		Local exp1:TExplosion = New Texplosion
		exp1.Create(Self.x,Self.y)
		HP:-1
		If HP = 0
			Self.Die()
		End If
	End Method
	
	Method Die()
		Mobile = False
		Local exp1:TExplosion = New Texplosion
		exp1.Create(Self.x,Self.y,2)
		LIFES:-1
		HP = 10
		If Lifes = 0
			Mobile = True
			GameOver()
		End If
	End Method
End Type

'Bullet object, keeps track of the bullets, checks if they hit somthing
Type TBullet
	Field x:Int,y:Int
	Field direction:Int
	Field speed:Int
	Field par:Int
	
	Method Create(parent:Int,PX,PY)
		ListAddLast BulletList,Self
		Select parent
			Case PARENT_PLAYER
				x=PX + 20
				y=PY + 10
				direction = DIR_UP
				par = PARENT_PLAYER
			Case PARENT_ALIEN
				x=PX + 12
				y=PY + 5
				direction = DIR_DOWN
				par = PARENT_ALIEN
		End Select
		
	End Method

	Method Update()
	
		If direction = DIR_UP
			y:-8
		Else
			y:+8
		End If
		
		If par = PARENT_PLAYER
			For CHECKALIEN:TAlien = EachIn AlienList
				If RectsOverlap(x,y,5,20,CHECKALIEN.x,CHECKALIEN.y,25,25)
					PlaySound boom
					CHECKALIEN.BlowUp()
					
					BulletList.Remove(Self)
				End If
			Next
		End If
		
		If par = PARENT_ALIEN
			If RectsOverlap(player.x+5,player.y,30,50,x,y,25,25)
				PlaySound boom
				player.Hit()
				BulletList.Remove(Self)
			End If
		End If
		
		If y < -20
			BulletList.Remove(Self)
		End If
		If y > 610
			BulletList.Remove(Self)
			EARTHHP:-0.1
			If EARTHHP < 0
				GameOver()
			End If
		End If
		
		SetColor 0,0,255
		DrawOval x,y,5,20
		SetAlpha .3
		DrawOval x,y,10,25
		SetAlpha 1.0
		SetColor 255,255,255
	End Method
End Type

Rem
FUNCTIONS..
.
.
.
.
.
.
.
.
End Rem

'external win api stuff
Extern "win32"
	Function GetActiveWindow%()
	Function IsZoomed%(hwnd%)
	Function ExtractIconA%(hWnd%,File$z,Index%)
	Function SendMessage:Int(hWnd:Int,MSG:Int,wParam:Int,lParam:Int) = "SendMessageA@16"
End Extern

'Enables the minimize button using win api
Function enableMinimize(hWnd:Long)
' Adds the Minimize Button "_"
	Local tmp:Long = GetWindowLongA( hWnd, GWL_STYLE )
	tmp = tmp | WS_MINIMIZEBOX
	SetWindowLongA( hWnd, GWL_STYLE, tmp )
	DrawMenuBar( hWnd )
End Function

'Sets icon
Function SetIcon(iconname$, TheWindow%)	
	?Win32
	Local icon:Int =ExtractIconA(TheWindow,iconname,0)
	Local WM_SETICON:Int = $80
	Local ICON_SMALL:Int = 0
	Local ICON_BIG:Int = 1
	sendmessage(TheWindow, WM_SETICON, ICON_BIG, icon)
	?
End Function

'checks if 2 rects on the screen have collided
Function RectsOverlap%(x0:Int, y0:Int, w0:Int, h0:Int, x2:Int, y2:Int, w2:Int, h2:Int)
	If x0 > (x2 + w2) Or (x0 + w0) < x2 Then Return False
	If y0 > (y2 + h2) Or (y0 + h0) < y2 Then Return False
	Return True
End Function

'the up level sequence
Function ShowLevelUp(lv:Int)
Local timer:Float
Local x:Int
	Repeat
		Cls
		
		DrawText "Level "+lv,x,300
		
		x:+2
		timer:+0.5
		If AppTerminate() End
		Flip
	Until timer = 200
	FlushKeys()
End Function

'game over sequence
Function GameOver()
Local timer:Float
Local x:Int
	Repeat
		Cls
		
		
		DrawText "Game Over...",x,300
		
		x:+2
		timer:+0.5
		If AppTerminate() End
		Flip
	Until timer = 200
	
MainMenu()
End Function

'main menu seqence
Function MainMenu()
Local play:Int = False
Local flasher:Float

	LIFES=3
	LEVEL=1
	SCORE=0
	EARTHHP = 100
	BulletList.Clear()
	AlienList.Clear()
	ExplosionList.Clear()
	RestoreData LEVEL1
	For Local y:Int=1 To 8
		For Local x:Int=1 To 20
			Local Datastorage:Int
			ReadData Datastorage
			ALIEN_LAYOUT[x-1,y-1] = Datastorage
			If ALIEN_LAYOUT[x-1,y-1] > 0
				Local Alien:TAlien = New TAlien
				Alien.Create x+1,y+1,ALIEN_LAYOUT[x-1,y-1]
			End If
		Next
	Next

	Repeat
		Cls
		DrawImage BG,0,0
		DrawImage intro,220,150
		If flasher > 1
			DrawImage press_ent,320,400
		End If
		
		
		For Local AA:TAlien = EachIn AlienList
			AA.shoottime = MilliSecs()
		Next
		
		If KeyHit(KEY_ENTER) play = True
		
		If AppTerminate() End
		
		flasher:+0.03
		If flasher > 2 flasher=0
		Flip
	Until play
	FlushKeys()
End Function

'win game sequence
Function Win()
	Local timer:Float
	Local x:Int
	Repeat
		Cls
		
		
		DrawText "Earth is saved! Great job!",x,300
		
		x:+2
		timer:+0.5
		If AppTerminate() End
		Flip
	Until timer = 200
	
	MainMenu()
End Function

'lvl 1
#LEVEL1
DefData 2,2,2,0,0,0,1,1,1,1,1,1,1,1,0,0,0,2,2,2
DefData 2,2,2,0,0,0,1,1,1,1,1,1,1,1,0,0,0,2,2,2
DefData 2,2,2,0,0,0,1,1,1,1,1,1,1,1,0,0,0,2,2,2
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0