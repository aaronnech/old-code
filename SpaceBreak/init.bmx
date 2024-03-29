
'-----
'-----
'-----
'-----
'GLOBALS
'-----
'-----
'-----
'-----
SeedRnd MilliSecs()

Global QUIT:Int = False
Global MainMenu:Int = True

Global LEVEL:Int
Global POINTS:Int

Global title_img:TImage = LoadImage("incbin::Media/title.png")
Global play_bg:TImage = LoadImage("incbin::Media/play_bg.png")

Global paddle:TImage = LoadImage("incbin::Media/paddle.png")
Global playerx:Float
Global playery:Float
Global playerspeed:Float

Global LIVES:Int

Global background_timer:Int

Global brick_1:TImage = LoadImage("incbin::Media/brick_1.png")
Global shard_1:TImage = LoadImage("incbin::Media/shard_1.png")
Global brick_2:TImage = LoadImage("incbin::Media/brick_2.png")
Global shard_2:TImage = LoadImage("incbin::Media/shard_2.png")
Global brick_3:TImage = LoadImage("incbin::Media/brick_3.png")
Global shard_3:TImage = LoadImage("incbin::Media/shard_3.png")
Global brick_4:TImage = LoadImage("incbin::Media/brick_4.png")
Global shard_4:TImage = LoadImage("incbin::Media/shard_4.png")
Global brickxy:Int[7,6]

Global yp:TImage = LoadImage("incbin::Media/yellow_partical.png")
Global star:TImage = LoadImage("incbin::Media/star.png")
Global flame:TImage = LoadImage("incbin::Media/flame.png")

Global ball:TImage = LoadImage("incbin::Media/ball.png")
Global bally:Float
Global ballx:Float
Global bally_dir:Float
Global ballx_dir:Float
Global ballspeed:Float
Global ball_go:Int
Global brick_coll:Int

Global bigfont:TImageFont = LoadImageFont("Media/Mantel.ttf",60)
Global pointfont:TImageFont = LoadImageFont("Media/Mantel.ttf",18)

'Global bgmusic:TSound = LoadSound("Media/bgmusic.ogg",SOUND_LOOP)
Global bounce:TSound = LoadSound("incbin::Media/bounce.wav")
Global click:TSound = LoadSound("incbin::Media/click.wav")
Global crash:TSound = LoadSound("incbin::Media/crash.wav")

Global freshhover:Int = True


Global table:fry_TTable
'-----
'-----
'-----
'-----
'CONSTANTS
'-----
'-----
'-----
'-----


'-----
'-----
'-----
'-----
'TYPES/LISTS
'-----
'-----
'-----
'-----
Global BrickList:TList = CreateList()


Type TBrick
	Field x:Int,y:Int
	Field img:TImage,t:Int
	Field hp:Int
	
	Method Create:TBrick(_x:Int,_y:Int,_t:Int)
		ListAddLast(BrickList,Self) 
		x = _x
		y = _y
		t = _t
		
		Select t
			Case 1
				img = brick_1
			Case 2
				img = brick_2
			Case 3
				img = brick_3
			Case 4
				img = brick_4
		End Select
	End Method
	
	Method Update()
		DrawImage img,x,y
	End Method
	
End Type


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



'-----
'-----
'-----
'-----
'FUNCTIONS
'-----
'-----
'-----
'-----

Rem
HIGHSCORE functions

AddHS(i:String,p:Int)
adds a hs to the file

PhraseHS()
phrases the hs file into the hs table

RemoveHS(i:String)
remove a hs from the file

ClearHSFile()
clears the hs file

End Rem
Function AddHS(i:String,p:Int)
	FileMemoryList.Clear()
	If Len(i) > 3
		Return
	End If
	
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
		If b.initals = i
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
	
	WriteString(file,i)
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


Rem
Update functions

UpdateLives()
updates the players lifes

UpdatePlayer()
updates the player

UpdateBall()
updates the ball physics, ect.

UpdateBricks()
Updates the bricks

UpdateBG()
updates the background depending on the selected background

End Rem

Function UpdateBG()
	If background_timer >= 12
		ParticleExplosion(400, 300, star, 40, 250, Rand(5,15), False, 2)
		background_timer = 0
	End If
	UpdateParticlesZ(2)
	DrawImage(play_bg,0,0)
	background_timer:+1
End Function


Function UpdateLives()
	If LIVES = -1
		Lost()
	Else
		For Local i:Int = 1 To LIVES
			DrawImage ball,620+(i*25),30
		Next
	End If


End Function

Function UpdateBricks()
	
	For Local bricks:TBrick = EachIn BrickList
		bricks.update()
	Next
	
End Function

Function UpdatePlayer()


	If KeyDown(KEY_RIGHT) And playerx < 800-ImageWidth(paddle) playerx:+playerspeed
	If KeyDown(KEY_LEFT) And playerx > 0 playerx:-playerspeed
	If KeyHit(KEY_SPACE) And ball_go = False
		ball_go = True
		bally_dir = -1
		ballx_dir = 0
	End If
	
	
		
	DrawImage(paddle,playerx,playery)
End Function


Function UpdateBall()
	
	brick_coll = False
	If ball_go
		ballx:+(ballx_dir*ballspeed)
		bally:+(bally_dir*ballspeed)
		
		
		If bally < 70
			bally_dir = 1
			PlaySound bounce
			ParticleExplosion(ballx, bally, yp, 10, 15)
		End If
		If bally > 600 - ImageHeight(ball)
			ballx = playerx + (ImageWidth(paddle) / 2) - (ImageWidth(ball) / 2)
			bally = 520
			If bally_dir <> 0 bally_dir = 0
			If ballx_dir <> 0 ballx_dir = 0
			ball_go = False 
			LIVES:-1
		End If
		If ballx < 0
			ballx_dir = 1 
			PlaySound bounce
			ParticleExplosion(ballx, bally, yp, 10, 15)
		End If
		If ballx > 800 - ImageWidth(ball)
			ballx_dir = -1
			PlaySound bounce
			ParticleExplosion(ballx, bally, yp, 10, 15)
		End If
		
		If ImagesCollide(ball,ballx,bally,0,paddle,playerx,playery,0) And bally_dir > 0
			bally_dir = -1
			ballx_dir = (ballx+10 - playerx+60) / 60 - 2
			PlaySound bounce
			ParticleExplosion(ballx, bally, yp, 10, 15)
		End If
		
		For Local bricks:TBrick = EachIn BrickList
			If brick_coll = False
				'Left side
				If RectsOverlap(ballx,bally,20,20,bricks.x,bricks.y,8,ImageHeight(bricks.img))
					ballx_dir = -1 
					brick_coll = True
				End If
				'Right side
				If RectsOverlap(ballx,bally,20,20,(bricks.x+ImageWidth(bricks.img))-8,bricks.y,8,ImageHeight(bricks.img)) 
					ballx_dir = 1 
					brick_coll = True
				End If
				'top
				If RectsOverlap(ballx,bally,20,20,bricks.x,bricks.y,ImageWidth(bricks.img),8) 
					bally_dir = -1 
					brick_coll = True
				End If
				'bottom
				If RectsOverlap(ballx,bally,20,20,bricks.x,(bricks.y+ImageHeight(bricks.img))-8,ImageWidth(bricks.img),8) 
					bally_dir = 1 
					brick_coll = True
				End If
			
				If brick_coll
					POINTS:+(bricks.t*2)
					Select bricks.t
						Case 1
							ParticleExplosion(bricks.x+45, bricks.y+15, shard_1, 30, 50, Rand(2,4), True)
						Case 2
							If ballspeed < 8 ballspeed = 8
							ParticleExplosion(bricks.x+45, bricks.y+15, shard_2, 30, 50, Rand(2,4), True)
						Case 3
							If ballspeed < 10 ballspeed = 10
							ParticleExplosion(bricks.x+45, bricks.y+15, shard_3, 30, 50, Rand(2,4), True)
						Case 4
							If ballspeed < 12 ballspeed = 12
							ParticleExplosion(bricks.x+45, bricks.y+15, shard_4, 30, 50, Rand(2,4), True)
					End Select
					
					ParticleExplosion(ballx, bally, yp, 10, 15)
					BrickList.remove(bricks)
					PlaySound crash
				End If
			End If
		Next 
		
	Else
		ballx = playerx + (ImageWidth(paddle) / 2) - (ImageWidth(ball) / 2)
		bally = 520
		If bally_dir <> 0 bally_dir = 0
		If ballx_dir <> 0 ballx_dir = 0
	End If
	
	
	DrawImage(ball,ballx,bally)
	
	
End Function



Rem
Other functions,
just random scriptings, nice and organized into their own functions


End Rem


Function Won()
	SetColor 217,219,21
	DrawText "Points: "+POINTS,10,40	
	DrawText "Level: "+LEVEL,10,5	
	SetColor 255,255,255
	SetImageFont(bigfont)
	Local timer:Int = MilliSecs()
	Local leave:Int
	LEVEL:+1
	
	SetColor 0,0,0
	DrawRect (GraphicsWidth() / 2) - 145,(GraphicsHeight() / 2) - 100, 300, 200
	SetColor 255,255,255
	If LEVEL < 21
		SetColor 91,216,224
		DrawText "Cleared",(GraphicsWidth() / 2) - 150, (GraphicsHeight() / 2) - 30
		SetColor 255,255,255
		While MilliSecs() < timer + 3000
			FlushKeys()
			If AppTerminate()
				leave = Confirm("Are you sure you want To quit?",True)
				If leave End
			End If
			Flip 1
		Wend
		ResetGame(False)
	Else
		SetColor 91,216,224
		DrawText "You Win",(GraphicsWidth() / 2) - 145, (GraphicsHeight() / 2) - 30
		SetColor 255,255,255
		While MilliSecs() < timer + 3000
			FlushKeys()
			If AppTerminate()
				leave = Confirm("Are you sure you want To quit?",True)
				If leave End
			End If
			Flip 1
		Wend
		ResetGame(False)
		fry_SetScreen("Enter Highscore")
		MainMenu = True
	End If		
	SetImageFont(pointfont)
End Function

Function Lost()
	SetColor 217,219,21
	DrawText "Points: "+POINTS,10,40	
	DrawText "Level: "+LEVEL,10,5	
	SetColor 255,255,255
	SetImageFont(bigfont)
	Local timer:Int = MilliSecs()
	Local leave:Int

	SetColor 0,0,0
	DrawRect (GraphicsWidth() / 2) - 150,(GraphicsHeight() / 2) - 100, 300, 200
	SetColor 255,255,255
	
	SetColor 91,216,224
		DrawText "Failed",(GraphicsWidth() / 2) - 130, (GraphicsHeight() / 2) - 30
	SetColor 255,255,255

	While MilliSecs() < timer + 3000
		FlushKeys()
		If AppTerminate()
			leave = Confirm("Are you sure you want To quit?",True)
			If leave End
		End If
		Flip 1
	Wend
	ResetGame(False)
	fry_SetScreen("Enter Highscore")
	MainMenu = True
	SetImageFont(pointfont)
End Function


Function RectsOverlap%(x0:Int, y0:Int, w0:Int, h0:Int, x2:Int, y2:Int, w2:Int, h2:Int)
	If x0 > (x2 + w2) Or (x0 + w0) < x2 Then Return False
	If y0 > (y2 + h2) Or (y0 + h0) < y2 Then Return False
	Return True
End Function



Function PhraseLevel()
	BrickList.Clear()
	Local Datastorage:Int
	Local newbrick:TBrick
	Select LEVEL
		Case 1
			RestoreData Level1
		Case 2
			RestoreData Level2
		Case 3
			RestoreData Level3
		Case 4
			RestoreData Level4		
		Case 5
			RestoreData Level5
		Case 6
			RestoreData Level6
		Case 7
			RestoreData Level7
		Case 8
			RestoreData Level8
		Case 9
			RestoreData Level9
		Case 10
			RestoreData Level10
		Case 11
			RestoreData Level11
		Case 12
			RestoreData Level12
		Case 13
			RestoreData Level13
		Case 14
			RestoreData Level14		
		Case 15
			RestoreData Level15
		Case 16
			RestoreData Level16
		Case 17
			RestoreData Level17
		Case 18
			RestoreData Level18
		Case 19
			RestoreData Level19
		Case 20
			RestoreData Level20
	End Select
	
	
	For Local y:Int = 1 To 6
		For Local x:Int = 1 To 7
			ReadData Datastorage
			brickxy[x-1,y-1] = datastorage
			Select brickxy[x-1,y-1]
				Case 1
					newbrick = New TBrick.Create((x*90),(y*30)+45,1)
				Case 2
					newbrick = New TBrick.Create((x*90),(y*30)+45,2)
				Case 3
					newbrick = New TBrick.Create((x*90),(y*30)+45,3)
				Case 4
					newbrick = New TBrick.Create((x*90),(y*30)+45,4)
			End Select
		Next
	Next
End Function



Function ResetGame(all:Int = True)
	ClearParticlesZ()
	playerx = 350
	playery = 550
	playerspeed = 14
	
	bally = 520
	ballx = playerx + (ImageWidth(paddle) / 2) - (ImageWidth(ball) / 2)
	bally_dir = 0
	ballx_dir = 0
	ballspeed = 6
	ball_go = False
	
	If all	
		LEVEL = 1
		LIVES = 5
		POINTS = 0
		ClearParticles()
	End If
	
	PhraseLevel()
	
End Function


?win32
Extern "win32"
	Function ExtractIconA%(hWnd%,File$z,Index%)
	Function GetActiveWindow%()
	Function SendMessage:Int(hWnd:Int,MSG:Int,wParam:Int,lParam:Int) = "SendMessageA@16"
End Extern
?

Function SetIcon(iconname$, TheWindow%)	
	?Win32
	Local icon:Int=ExtractIconA(TheWindow,iconname,0)
	Local WM_SETICON:Int = $80
	Local ICON_SMALL:Int = 0
	Local ICON_BIG:Int = 1
	sendmessage(TheWindow, WM_SETICON, ICON_BIG, icon)
	?
End Function

'-----
'-----
'-----
'-----
'LEVELS
'-----
'-----
'-----
'-----

Rem
FORMAT INFO::::


w = 7
h = 6

0 = no brick in this grid
1 = blue brick
2 = green brick
3 = purple brick
4 = black brick

SAMPLES::::

#Level1
DefData 1,2,3,4,1,2,1
DefData 4,0,4,0,4,0,2
DefData 4,0,4,0,4,0,2
DefData 4,4,4,0,3,2,2
DefData 2,0,0,0,0,0,2
DefData 2,0,0,0,0,0,2

#Level2
DefData 0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0

End Rem



#Level1
DefData 1,1,1,1,1,1,1
DefData 1,1,1,1,1,1,1
DefData 1,1,1,0,1,1,1
DefData 0,1,1,1,1,1,0
DefData 0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0


#Level2
DefData 1,1,2,2,2,1,1
DefData 1,1,2,2,2,1,1
DefData 1,1,1,1,1,1,1
DefData 0,0,1,1,1,0,0
DefData 0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0

#Level3
DefData 1,2,2,2,2,2,1
DefData 1,1,2,2,2,1,1
DefData 1,1,1,1,1,1,1
DefData 0,1,1,1,1,1,0
DefData 0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0

#Level4
DefData 1,1,1,2,1,1,1
DefData 1,2,2,2,2,2,1
DefData 1,2,2,2,2,2,1
DefData 1,1,1,1,1,1,1
DefData 0,0,1,1,1,0,0
DefData 0,0,0,0,0,0,0

#Level5
DefData 1,1,2,3,2,1,1
DefData 1,1,2,2,2,1,1
DefData 1,1,2,2,2,1,1
DefData 0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0

#Level6
DefData 3,2,2,1,2,2,3
DefData 1,1,1,1,1,1,1
DefData 1,1,1,1,1,1,1
DefData 1,1,1,0,1,1,1
DefData 0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0

#Level7
DefData 1,1,1,1,1,1,1
DefData 2,2,3,3,3,2,2
DefData 2,2,1,1,1,2,2
DefData 1,1,1,1,1,1,1
DefData 0,0,1,1,1,0,0
DefData 0,0,0,0,0,0,0

#Level8
DefData 3,3,1,1,1,3,3
DefData 3,3,2,2,2,3,3
DefData 2,2,2,2,2,2,2
DefData 1,1,1,1,1,1,1
DefData 0,0,1,1,1,0,0
DefData 0,0,0,0,0,0,0

#Level9
DefData 3,2,2,2,2,2,3
DefData 3,2,2,2,2,2,3
DefData 3,1,1,1,1,1,3
DefData 3,3,1,1,1,3,3
DefData 2,3,1,1,1,3,2
DefData 0,0,0,0,0,0,0

#Level10
DefData 2,2,2,2,2,2,2
DefData 1,1,1,1,1,1,1
DefData 3,3,3,3,3,3,3
DefData 2,2,2,2,2,2,2
DefData 1,1,1,1,1,1,1
DefData 3,3,3,3,3,3,3

#Level11
DefData 1,2,2,1,2,2,1
DefData 1,2,3,1,3,2,1
DefData 3,1,1,1,1,1,3
DefData 1,3,1,1,1,3,1
DefData 1,0,3,3,3,1,1
DefData 1,1,1,1,1,1,1

#Level12
DefData 3,1,1,1,1,1,3
DefData 3,3,3,3,3,3,3
DefData 3,3,3,3,3,3,3
DefData 0,2,2,2,2,2,0
DefData 0,2,2,2,2,2,0
DefData 0,0,0,0,0,0,0

#Level13
DefData 0,3,3,4,3,3,0
DefData 0,3,3,3,3,3,0
DefData 2,1,2,1,2,1,2
DefData 1,1,1,1,1,1,1
DefData 0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0

#Level14
DefData 2,2,4,4,4,2,2
DefData 2,2,2,2,2,2,2
DefData 1,1,1,1,1,1,1
DefData 1,1,1,1,1,1,1
DefData 1,1,1,1,1,1,1
DefData 0,0,0,0,0,0,0

#Level15
DefData 2,2,4,4,4,2,2
DefData 2,2,2,2,2,2,2
DefData 1,1,1,1,1,1,1
DefData 1,4,1,1,1,4,1
DefData 1,1,4,4,4,1,1
DefData 0,0,0,0,0,0,0

#Level16
DefData 4,3,3,3,3,3,4
DefData 3,3,4,4,4,3,3
DefData 4,3,3,3,3,3,4
DefData 2,2,2,2,2,2,2
DefData 1,1,1,1,1,1,1
DefData 0,0,0,0,0,0,0

#Level17
DefData 1,1,1,1,1,1,1
DefData 1,1,1,1,1,1,1
DefData 1,1,1,1,1,1,1
DefData 1,1,1,1,1,1,1
DefData 1,1,1,1,1,1,1
DefData 1,1,1,1,1,1,1

#Level18
DefData 2,2,2,2,2,2,2
DefData 2,2,2,2,2,2,2
DefData 2,2,2,2,2,2,2
DefData 2,2,2,2,2,2,2
DefData 2,2,2,2,2,2,2
DefData 2,2,2,2,2,2,2

#Level19
DefData 3,3,3,3,3,3,3
DefData 3,3,3,3,3,3,3
DefData 3,3,3,3,3,3,3
DefData 3,3,3,3,3,3,3
DefData 3,3,3,3,3,3,3
DefData 3,3,3,3,3,3,3

#Level20
DefData 4,4,4,4,4,4,4
DefData 4,4,4,4,4,4,4
DefData 4,4,4,4,4,4,4
DefData 4,4,4,4,4,4,4
DefData 4,4,4,4,4,4,4
DefData 4,4,4,4,4,4,4