Global BallList:TList = CreateList()
Global EBall:TImage = LoadImage("Images/ball.png")
Global BG:TImage = LoadImage("Images/background.png")
Global PlayerIMG:TImage = LoadImage("Images/player.png")
Global yParticle:TImage = LoadImage("Images/yellow_particle.png")
Global titleimg:TImage = LoadImage("Images/title.png")
Global sfxballball:TSound = LoadSound("Images/ballball.wav")
Global sfxballwall:TSound = LoadSound("Images/ballwall.wav")
Global sfxcheer:TSound = LoadSound("Images/cheer.wav")

Global music:TSound = LoadSound("Images/Jungle.wav",SOUND_LOOP)
Global musicchannel:TChannel

Global MainMenu:Int = True
Global runtime:Int
Global GameOver:Int = False
Global EHS:Int = False
Global HS:Int = False
Global PlayerX:Float,PlayerY:Float
Global Score:Int
Global PVec:TVec2 = New TVec2.Init(0,0)
Global table:fry_TTable

MidHandleImage(PlayerIMG)

Type TPoint
	Field x:Float, y:Float
End Type

Type EnemyBall
	Field Vec:TVec2
	Field point:TPoint
	Field radius:Int
	Field mass:Int
	Field solidtimer:Int
	Field a:Float
	Method New()
		solidtimer = 0
		point = New TPoint
		radius = 10
		chance:Float = Rnd(-3,3)
		chance:*2
		Vec = New TVec2.Init(2,2)
		Vec.Multiply(chance,chance-1.235)
		point.x = Rnd(20, 380)
		point.y = Rnd(20, 480)
		mass = 30
		ListAddLast(BallList,Self)
	End Method
	
	Function UpdateAll()
		For Local i:EnemyBall = EachIn BallList
			i.Update()
		Next
	End Function
	
	Method Update()
		If solidtimer >= 72
			'update positions
			If GameOver Vec.y:+2
			point.x:+Vec.x
			point.y:+Vec.y
			
			'left wall
			If point.x<radius Then
				point.x=radius
				vec.x:*-1.0
				PlaySound sfxballwall
			End If
			'right wall
			If point.x>GraphicsWidth()-radius Then
				point.x=GraphicsWidth()-radius
				vec.x:*-1.0
				PlaySound sfxballwall
			End If
			'top wall
			If point.y<radius Then
				point.y=radius
				vec.y:*-1.0
				PlaySound sfxballwall
			End If
			'bottom wall
			If point.y>GraphicsHeight()-radius Then
				If Not GameOver
					point.y=GraphicsHeight()-radius
					vec.y:*-1.0
					PlaySound sfxballwall
				Else
					If point.y > GraphicsHeight()+radius BallList.Remove(Self)
				End If
			End If
			
			'vs. Player Ball
			If PointsToDistance(PlayerX,PlayerY,point.x,point.y) < 20
				GameOver=True
				Score = runtime
			End If
			
			'vs. Enemy balls
			For Local ball2:Enemyball = EachIn BallList
			
				Local collisionDistance# = 20
				Local actualDistance# = PointsToDistance(point.x,point.y,ball2.point.x,ball2.point.y)
				
				If actualDistance<collisionDistance And ball2 <> Self And ball2.solidtimer >= 72
					collNormalAngle#=ATan2(ball2.point.y-point.y, ball2.point.x-point.x)
					moveDist1#=(collisionDistance-actualDistance)*(ball2.mass/Float((mass+ball2.mass)))
					moveDist2#=(collisionDistance-actualDistance)*(mass/Float((ball2.mass+mass)))
					point.x:+ moveDist1*Cos(collNormalAngle+180)
					point.y:+ moveDist1*Sin(collNormalAngle+180)
					ball2.point.x:+ moveDist2*Cos(collNormalAngle)
					ball2.point.y:+ moveDist2*Sin(collNormalAngle)
					
					
					n:TVec2 = New TVec2.Init(Cos(collNormalAngle),Sin(collNormalAngle))
	
					a1# = vec.DotProduct(n)
					a2# = ball2.vec.DotProduct(n)
	
					optimisedP# = (2.0 * (a1-a2)) / (mass + ball2.mass)
					
					vec.x:- (optimisedP*ball2.mass*n.x)
					vec.y:- (optimisedP*ball2.mass*n.y)
					
					ball2.vec.x:+ (optimisedP*mass*n.x)
					ball2.vec.y:+ (optimisedP*mass*n.y)
					PlaySound sfxballball
				End If
			Next
		Else
			solidtimer:+1
			a:+0.01388888888'Aprox. 1/72
		End If
	End Method
	
	Function RenderAll()
		For Local i:EnemyBall = EachIn BallList
			i.Render()
		Next
	End Function
	Method Render()
		If solidtimer >= 71
			DrawImage EBall,point.x-radius,point.y-radius
		Else
			SetAlpha(a)
			DrawImage EBall,point.x-radius,point.y-radius
			SetAlpha(1.0)
		End If
	End Method
End Type

Function AddBall()
	Local b:EnemyBall = New Enemyball
End Function

Function EndGame()
	fry_SetScreen("Enter Highscore")
	EHS = True
	MainMenu = True
	GameOver = False
	MusicChannel.Stop()
	PVec.y = 0
	runtime = 0
	For Local i:Int = 0 To 7
		ParticleExplosion(Rand(100,300),Rand(100,400),yParticle,40,100)
	Next
	PlaySound(sfxcheer)
End Function


'-------------------------------------------------------------
'Highscore file interaction
'-------------------------------------------------------------
Global FileMemoryList:TList = CreateList()

Type TFileMemory
	Field initals:String, points:Int
	
	Method AddToList:TFileMemory()
		ListAddLast(FileMemoryList,Self)
	End Method
	
	Method RemoveFromList:TFileMemory()
		FileMemoryList.Remove(Self)
	End Method
	
	
	Method Compare:Int(p:Object)
		Local pr:TFileMemory = TFileMemory(p)
		
		If(Self.points < pr.points) Then
			Return True
		Else 
			Return False
		End If
	End Method
	
	
End Type
Function AddHS(i:String,p:Int)
	FileMemoryList.Clear()
	If Len(i) > 3
		Return
	End If
	Local ei:string = Upper(i)
	'Check if the points are lesser then existing points
	Local filestore:TFileMemory
	Local file:TStream = ReadFile("hs.data")
	While Not Eof(file)
		
		filestore:TFileMemory = New TFileMemory
		filestore.AddToList()
		filestore.initals = ReadString(file,3)
		filestore.points = ReadInt(file)
		
	Wend
	CloseFile(file)
	For Local b:TFileMemory = EachIn FileMemoryList
		If b.initals = ei
			If b.points > p
				Return
			Else
				RemoveHS(b.initals)
			End If
		End If
	Next
	
	'write new HS
	file:TStream = OpenFile("hs.data",True,True)
	SeekStream(file,StreamSize(file)) 'seek to end of file
	
	WriteString(file,ei)
	WriteInt(file,p)
	
	CloseFile(file)

End Function

Function PhraseHS()
	FileMemoryList.Clear()
	Local filestore:TFileMemory
	Local file:TStream = ReadFile("hs.data")
	While Not Eof(file)
		
		filestore:TFileMemory = New TFileMemory
		filestore.AddToList()
		filestore.initals = ReadString(file,3)
		filestore.points = ReadInt(file)
		
	Wend
	FileMemoryList.Sort()
	For Local i:TFileMemory = EachIn FileMemoryList
		table.AddItem([Upper(i.initals),String(i.points)])
	Next
	
	CloseFile(file)
End Function

Function RemoveHS(i:String)
	FileMemoryList.Clear()
	Local filestore:TFileMemory
	Local file:TStream = ReadFile("hs.data")
		While Not Eof(file)
		
			filestore = New TFileMemory
			filestore.AddToList()
			filestore.initals = ReadString(file,3)
			filestore.points = ReadInt(file)
			
			If filestore.initals = i
				filestore.RemoveFromList()
			End If
			
			
		
		Wend
	
	CloseFile(file)
	
	file = WriteFile("hs.data")
		For Local b:TFileMemory = EachIn FileMemoryList
			WriteString(file,b.initals)
			WriteInt(file,b.points)
		Next
	CloseFile(file)
End Function

Function ClearHSFile()
	Local file:TStream = WriteFile("hs.data")
	CloseFile(file)
End Function
