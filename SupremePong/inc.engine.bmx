Global EventList:TList = CreateList()
Global BallList:TList = CreateList()
Global ButtonList:TList = CreateList()

'Base type for all entities
Type TEntity
	Field x:Float,y:Float
End Type

'Player paddle type
Type TPlayerPaddle Extends TEntity
	Method New()
		y=718'Set the constant Y position
	End Method
	Method Update()
		x=MouseX()-60 'make the player track the mouse
		If x > 904 x = 904 'Don't let paddle outside right edge
		If x < 0 x = 0 'Don't let paddle outside left edge
		DrawImage Paddleimg,x,y'Draw the player
	End Method
End Type

Type TEnemyPaddle Extends TEntity
	Field speed:Float
	Method New()
		y=50
		x=452
		speed = 22
	End Method
	Method Update()
		Local closestsofary:Float = 2000'random high value
		Local closestsofarx:Float = 0
		'Find closest ball's x/y
		For Local i:TBall = EachIn BallList
			If i.y < closestsofary
				closestsofary = i.y
				closestsofarx = i.x
			End If
		Next
		'move PC center towards the closest ball
		Local bx:Int = closestsofarx
		Local padc:Int = x+60
		If closestsofary <> 2000'ball exists
			If Abs(padc - bx) > 10
				If padc < bx x:+speed
				If padc > bx x:-speed
			End If
		End If
		If x > 904 x = 904 'Don't let paddle outside right edge
		If x < 0 x = 0 'Don't let paddle outside left edge
		DrawImage Paddleimg,x,y
	End Method
		
End Type

Type TBall Extends TEntity
	Field xdir:Float, ydir:Float
	Field speed:Float
	Field color:Int
	Field playerbound:Byte
	
	Function CreateBall(_x,_y)
		NewBall:TBall = New TBall
		NewBall.x = _x
		NewBall.y = _y
		NewBall.ydir=-1
		NewBall.speed = 6
		NewBall.Color = 1
		NewBall.Playerbound = False
		ParticleExplosion(NewBall.x+10, NewBall.y+10, starparticle, 5, 50)
		ListAddLast(BallList,NewBall)
	End Function
	
	Function UpdateBalls()
		For Local i:TBall = EachIn BallList
			i.Update()
		Next
	End Function
	
	Method Update()
		x:+xdir*speed
		y:+ydir*speed
		
		'collison against walls/goals
		If y < -20 'player gained a point
			BallList.Remove(Self)
			PlayerScore:+1
		End If
		If y > 768 'enemy gained a point
			BallList.Remove(Self)
			EnemyScore:+1
		End If
		If x < 0
			xdir = 1 
		End If
		If x > 1024 - 20
			xdir = -1
		End If
		'Collision against player
		If RectsOverlap(x,y,20,20,player.x,player.y,120,10) And playerbound
			speed:+.7
			ChangeColor()
			ydir = -1
			xdir = (x - player.x-60)  / 100
			Local s:TScreenShake = New TScreenShake
			playerbound = False
			PlaySound(Paddlehit)
		End If
		'Collision against Enemy
		If RectsOverlap(x,y,20,20,enemy.x,enemy.y,120,10) And Not playerbound
			speed:+.7
			ChangeColor()
			ydir = 1
			xdir = (x - enemy.x-60)  / 100
			playerbound = True
			Local s2:TScreenShake = New TScreenShake
			PlaySound(Paddlehit)
		End If
		Select color
			Case 1
				DrawImage BallImg,x,y
			Case 2
				DrawImage Ball2Img,x,y
			Case 3 
				DrawImage Ball3Img,x,y
		End Select
	End Method
	Method ChangeColor()
		color:+1
		If color > 3 color = 1
	End Method
End Type

'handles when balls are released
Type TBallHandler
	Field timer:Int,timer2:Int
	Field crazy:Byte
	Method Update()
		'release a ball every 90 to 130 frames
		If Not crazy
			If timer > Rand(90,130)
				b:TBallEmitter = New TBallEmitter
				timer=0
			End If
		Else
			If timer > 1000'Every 1000 frames, go crazy
				If timer2 > Rand(40,150)
					b:TBallEmitter = New TBallEmitter
					b.crazy = True
				End If
				timer2:+1
				If timer > 1200 timer = 0'after 300 frames of crazy, stop
			End If
		End If
				
		TBallEmitter.UpdateAll()'Updates all the emitters
		timer:+1
	End Method
End Type
Global BallEmitterList:TList = CreateList()
'object that emits balls
Type TBallEmitter Extends TEntity
	Field timer:Int
	Field crazy:Byte
	
	Method New()
		x = Rand(20,980)
		y = 768
		ListAddLast(BallEmitterList,Self)
	End Method
	
	Method Update()
		'if it's crazy, change the x location to be narrower..
		If crazy
			crazy = False
			x = Rand(362,662)
		End If
		
		If y > 700
			y:-4
		Else
			timer:+1
		End If
		If timer = 3
			TBall.CreateBall(x+17,y+3)
		End If
		If timer = 5
			BallEmitterList.Remove(Self)
		End If
		DrawImage EmitterImg,x,y
	End Method
	
	Function UpdateAll()
		For i:TBallEmitter = EachIn BallEmitterList
			i.Update()
		Next
	End Function
End Type

'the button class
Type TButton Extends TEntity
	Field ID:String
	Field Highlight:Byte
	Field Hover:Int
	Field Nimage:TImage
	Field HLimage:TImage
	
	'creates a button with a image and a hlight image
	Function CreateButton(_x:Int,_y:Int, _id:String, NI:TImage, HI:TImage)
		Local NewButton:TButton = New TButton
		NewButton.x = _x
		NewButton.y = _y
		NewButton.ID = _id
		NewButton.NImage = NI
		NewButton.HLImage = HI
		ListAddLast(ButtonList,NewButton)
	End Function
	
	'updates the buttons
	Function UpdateButtons()
		For Local i:TButton = EachIn ButtonList
			i.Update()
		Next
	End Function
	
	'method that checks for clicks and hovers
	Method Update()
		If MouseX() > x And MouseX()<x+ImageWidth(Nimage) And MouseY()>y And MouseY()<y+ImageHeight(Nimage)
			Highlight = True
			If Hover <> 2 Hover = 3
			If MouseHit(1)
				TEventFire.NewEvent(ID)
				PlaySound(ClickSound)
			End If
		Else
			Highlight = False
			Hover = 1
		End If
		If Hover = 3
			PlaySound(HoverSound)
			Hover = 2
		End If
		If Highlight
			DrawImage HLImage,x,y
		Else
			DrawImage NImage,x,y
		End If
	End Method
End Type

'Older pure bmax version of my particle module
Type TParticle Extends TEntity
	Global ParticleList:TList = CreateList()
	
	Field a:Float = 1,r:Int
	Field ox:Int,oy:Int
	Field img:TImage
	Field dx:Float,dy:Float, da:Float
	Field maxdistance:Int
	Field fade:Int
	
	'Creates a particle arguments are pretty self explanitory
	Method Create:TParticle(_x:Int, _y:Int, _img:TImage, _dir:Int = 0, _speed:Float = 0, frames:Int = 0, _fade:Int = False)
		ListAddLast(ParticleList,Self)
		x = _x
		y = _y
		ox = _x
		oy = _y
		img = _img
		dx = Sin(_dir) * _speed
		dy = Cos(_dir) * _speed
		da = 1.0 / frames
		maxdistance = frames
		
		If _fade
			fade = True
		End If
	End Method
	
	'update and set alpha to fade
	Method Update:TParticle()
		x:+dx
		y:+dy
		If fade a:-da
		SetRotation(r)
		SetAlpha(a)
		DrawImage img,x,y
		SetRotation(0)
		SetAlpha(1)
		
		maxdistance:- 1
		If Not maxdistance Then
			Destroy()
		End If

	End Method
	
	'access methods
	Method SetPAlpha(alpha:Float)
		a = alpha
	End Method
	
	Method SetPRotation(rot:Int)
		r = rot
	End Method
	
	Method Destroy()
		ParticleList.Remove(Self)
	End Method
	
	Method SetX(_x:Int)
		x = _x
	End Method
	
	Method SetY(_y:Int)
		y = _y
	End Method
	'update all
	Function UpdateAllParticles()
		For Local UpdateParticles:TParticle = EachIn ParticleList
			UpdateParticles.Update()
		Next
	End Function
	'clear all the particles
	Function ClearAll()
		ParticleList.Clear()
	End Function
	
End Type
'random numbers, simple a object the moves from one end to the other on the screen and deletes itself
Type TRandomNumbers Extends TEntity
	Global RandomNumberList:TList = CreateList()
	Method New()
		x = -20
		y = Rand(70,700)
		ListAddLast(RandomNumberList,Self)
	End Method
	Method Update()
		If x > 1040 RandomNumberList.remove(Self)
		x:+8
		DrawImage biparticle,x,y
	End Method

	Function UpdateAll()
		For Local i:TRandomNumbers = EachIn RandomNumberList
			i.Update()
		Next
	End Function
	Function Clear()
		RandomNumberList.Clear()
	End Function
End Type

Type TEventFire
	Field Message:String
	
	'a new event is simple a object with a string, the string is what the button class fills.
	Function NewEvent(msg:String)
		Local NewEvent:TEventFire = New TEventFire
		NewEvent.Message = msg
		ListAddLast(EventList,NewEvent)
	End Function
			
End Type

Type TScreenShake
	Field timer:Int'main animation timer for the shake
	Global ShakeQue:TList = CreateList()'list to keep track of shakes executed
	Method New()
		ListAddLast(ShakeQue,Self)'add to que
	End Method
	Method Update()
		'Animation steps - down then up over 8 frames
		If timer = 1
			SetViewOffset(10,10)
		End If
		If timer = 2
			SetViewOffset(20,20)
		End If
		If timer = 3
			SetViewOffset(10,10)
		End If
		If timer = 4
			SetViewOffset(0,0)
		End If
		If timer = 5
			SetViewOffset(-10,-10)
		End If
		If timer = 6
			SetViewOffset(-20,-20)
		End If
		If timer = 7
			SetViewOffset(-10,-10)
		End If
		If timer = 8
			SetViewOffset(0,0)
		End If
		timer:+1
	End Method
	Function UpdateAll()
		For Local i:TScreenShake = EachIn ShakeQue
			i.Update()'update the animation of each shake in que
		Next
	End Function
	Function Clear()'Clear the que list
		ShakeQue.Clear()
	End Function
End Type

'simple collision detection function of two rectangles - very fast and good enough
Function RectsOverlap:Byte(x0:Float, y0:Float, w0:Int, h0:Int, x2:Float, y2:Float, w2:Int, h2:Int)
	If x0 > (x2 + w2) Or (x0 + w0) < x2 Then Return False
	If y0 > (y2 + h2) Or (y0 + h0) < y2 Then Return False
	Return True
End Function
'Draw the frame
Function DrawBG()
	SetColor 102,255,0
	If frametimer > 20 SetColor 0,204,255
	If frametimer > 40 SetColor 255,204,200
	If frametimer > 60 frametimer = 0 SetColor 102,255,0

	DrawRect 0,765,1024,3'bottom
	DrawRect 0,0,3,768'left
	DrawRect 0,0,1024,3'top
	DrawRect 1021,0,3,768'right
	SetColor 255,255,255
End Function

'Update and draw all the effects in the background
Function DrawPBG()
	
	'random fireworks
	If bitimer > Rand(15,200)
		bitimer = 0
		ParticleExplosion(Rand(30,970), Rand(30,730), biparticle, 5, 40)
		ParticleExplosion(Rand(30,970), Rand(30,730), biparticle, 5, 40)
		ParticleExplosion(Rand(30,970), Rand(30,730), biparticle, 5, 40)
		ParticleExplosion(Rand(30,970), Rand(30,730), biparticle, 5, 40)
		ParticleExplosion(Rand(30,970), Rand(30,730), biparticle, 5, 40)
		ParticleExplosion(Rand(30,970), Rand(30,730), biparticle, 5, 40)
	End If
	'random numbers running across the screen
	If bitimer2 > Rand(5,10)
		bitimer2 = 0
		New TRandomNumbers
	End If
	DrawBG()
	TScreenShake.UpdateAll()
	TRandomNumbers.UpdateAll()
	SetImageFont(pointsfont)
	DrawText EnemyScore,10,384
	DrawText PlayerScore,960,384
	SetImageFont(normalfont)
End Function

'Particle explosion function; creates a explosion of particles
Function ParticleExplosion(_x:Int, _y:Int, image:TImage, n:Int, frames:Int)
	
	For Local i:Int = 1 To n
		Local dir:Int = Rand(0, 359)'random direction for each particle
		Local speed:Float = Rnd(0.08, 1.5)'random speed
		Local part:TParticle = New TParticle.Create(_x, _y, image, dir, speed, frames - 10 + Rand(20), True)'create each particle
	Next

End Function

'Update timers
Function UpdateTimers()
	bitimer:+1
	bitimer2:+1
	frametimer:+1
	FlushMouse()
End Function

'Reset variables and clean up the game
Function CleanUpGame()
	SetViewOffset(0,0)
	BallList.Clear()
	player = Null
	enemy = Null
	EnemyScore = 0
	PlayerScore = 0
	bitimer = 0
	bitimer2 = 0
	quit=False
	TParticle.ClearAll()
	TRandomNumbers.Clear()
	TScreenShake.Clear()
	ButtonList.Clear()
	EventList.Clear()
	FlushKeys()
	FlushMouse()
End Function

'see if we won
Function CheckForWin:Byte()
	If PlayerScore >= Goal
		Win()
		Return True
	End If
	If EnemyScore >= Goal
		Lose()
		Return True
	End If
	Return False
End Function

'player lost
Function Win()
	SetImageFont(pointsfont)
	CleanUpGame()
	TButton.CreateButton(437,375,"Back",Backbutton,hBackbutton)
	For Local b:Int = 0 To 89
		ParticleExplosion(Rand(30,970), Rand(30,730), biparticle, 5, 100)
	Next
	Repeat
		Cls
		DrawBG()'Draw the green frame
		DrawText "You Lost!!!",400,0
		TButton.UpdateButtons()
		'update cursor
		ParticleExplosion(MouseX(), MouseY(), starparticle, 5, 20)
		TParticle.UpdateAllParticles()
		DrawImage CursorImg,MouseX(),MouseY()
		'An Event handler for the TEventFire type
		For Local i:TEventFire = EachIn EventList
			Select i.Message
				Case "Back"'Back button pressed
					Return	
			End Select		
		Next
		UpdateTimers()
		Flip 1
	Forever
	SetImageFont(normalfont)
End Function

'player lost
Function Lose()
	SetImageFont(pointsfont)
	CleanUpGame()
	TButton.CreateButton(437,375,"Back",Backbutton,hBackbutton)
	For Local b:Int = 0 To 89
		ParticleExplosion(Rand(30,970), Rand(30,730), biparticle, 5, 100)
	Next
	Repeat
		Cls
		DrawBG()'Draw the green frame
		DrawText "You Lost!!!",400,0
		TButton.UpdateButtons()
		'update cursor
		ParticleExplosion(MouseX(), MouseY(), starparticle, 5, 20)
		TParticle.UpdateAllParticles()
		DrawImage CursorImg,MouseX(),MouseY()
		'An Event handler for the TEventFire type
		For Local i:TEventFire = EachIn EventList
			Select i.Message
				Case "Back"'Back button pressed
					Return	
			End Select		
		Next
		UpdateTimers()
		Flip 1
	Forever
	SetImageFont(normalfont)
End Function



'Offsets the whole screen - used for a screen shake effect
Function SetViewOffset(offsetx:Float,offsety:Float)
	Global Original_offsetx:Float'Variable to remember the current offset
	Global Original_offsety:Float'Variable to remember the current offset
	glMatrixMode GL_PROJECTION'Switch the matrix mode
	glTranslatef offsetx-Original_offsetx,offsety-Original_offsety,0'Translate the camera to the given offsets
	Original_offsetx = offsetx'Store the current offset
	Original_offsety = offsety'Store the current offset
	glMatrixMode GL_MODELVIEW'Switch the Matrix mode back
	glLoadIdentity'Reset
End Function
