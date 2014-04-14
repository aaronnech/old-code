'Effects test
SuperStrict

Framework brl.max2d
Import rigz.timelinefx
Import rigz.tweener

SetGraphicsDriver GLMax2DDriver()


Global playerimg:TImage = LoadImage("media/player.png")
MidHandleImage(playerimg)

Type TGame
	Field ParticleManager:tlParticleManager
	Field Tweener:tTweener
	Field EffectsLibrary:tlEffectsLibrary
	Field TrailEffect:tlEffect
	Field Background:TBG
	Field Player:TPlayerShip
	
	Method Create:TGame()
		Graphics 1024, 768
		SetBlend LIGHTBLEND
		
   		ParticleManager = CreateParticleManager()
  		ParticleManager.SetScreenSize(GraphicsWidth(), GraphicsHeight())
    	ParticleManager.SetOrigin(GraphicsWidth() / 2, GraphicsHeight() / 2)
		EffectsLibrary = LoadEffects("effects.eff")
		TrailEffect = EffectsLibrary.GetEffect("Trail")
		Background = New TBG.Create(GraphicsWidth() / 2, GraphicsHeight() / 2, Self)
		Tweener = New tTweener.Create(60)
		SetUpdateFrequency(60)
		Player = New TPlayerShip.Create(GraphicsWidth() / 2, GraphicsHeight() / 2, CopyEffect(TrailEffect, ParticleManager), Self)
		Return Self
	End Method
	
	Method Run()
		While Not KeyHit(KEY_ESCAPE)
			Cls
			If KeyHit(KEY_F)
				New TAsteroid.Create(GraphicsWidth() / 2, GraphicsHeight() / 2, Self, Rand(1, 2))
			End If
			
			Tweener.Update()
			Tweener.UpdateExecutionTime()
			Background.Update()
		    Player.Update()
			TAsteroid.UpdateAll()
			TBullet.UpdateAll()
			TExplosion.UpdateAll()
		    ParticleManager.Update()
			DrawText Player.dx, 0, 20
			DrawText Player.x, 0, 40
			ParticleManager.DrawParticles(Tweener.Tween)
			Flip 1
		WEnd
	End Method
	
End Type

Type TGameEntity Extends tlEntity
  Field game:TGame
  Field Effect:tlEffect    'An effect that will be attached to this effect
End Type

Type TPlayerShip Extends TGameEntity
	Field dx:Float, dy:Float, angle:Float
	Method Create:TPlayerShip(_x:Float, _y:Float, _effect:tlEffect, _game:TGame)
		x = _x
		y = _y
		Effect = _effect
		game = _game
		addchild(effect)
		Return Self
	End Method
	Method Update()
		If KeyDown(KEY_LEFT)
			direction:-6
		End If
		If KeyDown(KEY_RIGHT)
			direction:+6
		End If
		If KeyDown(KEY_UP)
			dx:+Cos(direction) *.1
			dy:+Sin(direction) *.1
		End If
		If KeyHit(KEY_SPACE)
			New TBullet.Create(x, y, direction, game)
		End If
		x:+dx
		y:+dy
		If x < - 10 x = 1034
		If x > 1034 x = -10
		If y < - 10 y = 778
		If y > 778 y = -10
		Effect.SetEffectAngle(direction + 90)
		'SetRotation direction + 90
		'DrawImage playerimg, x, y
		'SetRotation 0
		Super.Update()
	End Method
End Type

Type TAsteroid Extends TGameEntity
	Field dx:Float, dy:Float
	Field level:Int
	Global AsteroidList:TList = CreateList()
	Method Create:TAsteroid(_x:Float, _y:Float, _game:TGame, _level:Int)
		x = _x
		y = _y
		dx = Rnd(-3, 3)
		dy = Rnd(-3, 3)
		Select _level
			Case 1
				Effect = CopyEffect(_game.EffectsLibrary.GetEffect("Asteroid"), _game.ParticleManager)
			Case 2
				Effect = CopyEffect(_game.EffectsLibrary.GetEffect("Asteroid2"), _game.ParticleManager)
			Case 3
		End Select
		game = _game
		addchild(Effect)
		ListAddLast(AsteroidList, Self)
		Return Self
	End Method
	Method Update()
		x:+dx
		y:+dy
		If x < - 10 x = 1034
		If x > 1034 x = -10
		If y < - 10 y = 778
		If y > 778 y = -10
		Super.Update()
	End Method
	Method Destroy()
		game.ParticleManager.RemoveEffect(Effect)
		AsteroidList.Remove(Self)
	End Method
	Function UpdateAll()
		For Local i:TAsteroid = EachIn AsteroidList
			i.Update()
		Next
	End Function
End Type

Type TBullet Extends TGameEntity
	Field dx:Float, dy:Float
	Field level:Int
	Global BulletList:TList = CreateList()
	Method Create:TBullet(_x:Float, _y:Float, _dir:Float, _game:TGame)
		Effect = CopyEffect(_game.EffectsLibrary.GetEffect("Bullet"), _game.ParticleManager)
		Effect.SetEffectAngle(_dir + 90)
		x = _x
		y = _y
		direction = _dir
		game = _game
		dx = Cos(direction) * 7
		dy = Sin(direction) * 7
		addchild(Effect)
		ListAddLast(BulletList, Self)
		Return Self
	End Method
	Method Update()
		x:+dx
		y:+dy
		If x < - 10 x = 1034
		If x > 1034 x = -10
		If y < - 10 y = 778
		If y > 778 y = -10
		Collided()
		Super.Update()
	End Method
	Method Collided()
		For Local i:TAsteroid = EachIn TAsteroid.AsteroidList
			If RectsOverlap(x, y, 1, 1, i.x - 50, i.y - 50, 100, 100)
				New TExplosion.Create(i.x, i.y, game)
				'Destroy()
				i.Destroy()
			End If
		Next
	End Method
	Function UpdateAll()
		For Local i:TBullet = EachIn BulletList
			i.Update()
		Next
	End Function
End Type

Type TBG Extends TGameEntity
	Method Create:TBG(_x:Float, _y:Float, _game:TGame)
		x = _x
		y = _y
		Effect = CopyEffect(_game.EffectsLibrary.GetEffect("Space"), _game.ParticleManager)
		addchild(Effect)
		Return Self
	End Method
	Method Update()
		Super.Update()
	End Method
End Type

Type TExplosion Extends TGameEntity
	Field Timer:Int
	Global ExplodeList:TList = CreateList()
	Method Create:TExplosion(_x:Float, _y:Float, _game:TGame)
		x = _x
		y = _y
		game = _game
		Effect = CopyEffect(_game.EffectsLibrary.GetEffect("Boom"), _game.ParticleManager)
		addchild(Effect)
		ListAddLast(ExplodeList, Self)
		Return Self
	End Method
	Method Update()
		If Timer > 40 Destroy()
		Super.Update()
		Timer:+1
	End Method
	Method Destroy()
		game.ParticleManager.RemoveEffect(Effect)
		ExplodeList.Remove(Self)
	End Method
	Function UpdateAll()
		For Local i:TExplosion = EachIn ExplodeList
			i.Update()
		Next
	End Function
End Type

'simple collision detection function of two rectangles - very fast and good enough
Function RectsOverlap:Byte(x0:Float, y0:Float, w0:Int, h0:Int, x2:Float, y2:Float, w2:Int, h2:Int)
	If x0 > (x2 + w2) Or (x0 + w0) < x2 Then Return False
	If y0 > (y2 + h2) Or (y0 + h0) < y2 Then Return False
	Return True
End Function


Local Asteroids:TGame = New TGame.Create()

Asteroids.Run()
