Strict

Import "Init.bmx"

?Win32
Import "res.o"
?

AppTitle = "Space Invaders"
Graphics 800,600

EnableMinimize(GetActiveWindow())
SetIcon(AppFile,GetActiveWindow())
SeedRnd MilliSecs()
SetBlend(ALPHABLEND)
DrawImage BG,0,0
PlaySound bg_music


MainMenu()

'Create player object
player:TPlayer = New TPlayer
player.Create


FlushKeys()
While Not AppTerminate() = True
	'Set FPS
	Repeat
		SUelapsed=MilliSecs()-SUtime
	Until SUelapsed
	SUticks=SUelapsed/SUperiod
	If SUticks>1000 Then SUticks=1
	For SU=1 To SUticks
		SUtime=SUtime+SUperiod
	Next

	Cls
	'draw bg image first and foremost
	DrawImage BG,0,0
	

	
	'Update player object
	player.Update
	
	'Update the Alien objects
	For CHECKALIEN:TAlien = EachIn AlienList
		CHECKALIEN.Update
	Next
	
	'Update bullets
	For CHECKBULLET:TBullet = EachIn BulletList
		CHECKBULLET.Update
	Next
	
	'Update explosion objects
	For Local AllEXPs:TExplosion = EachIn ExplosionList
		AllEXPs.Update
	Next
	
	'HUD
	SetColor 70,70,70
	DrawRect 0,540,800,60
	SetColor 255,255,255
	DrawText "Earth Status: "+Left(EARTHHP,4)+"%/100% Destroyed",100,540
	DrawText "Player Shield: "+player.HP*10+"%/100%",100,570
	DrawText "Lifes: "+LIFES,650,540
	DrawText "Level: "+LEVEL,650,560
	DrawText "Score: "+SCORE,650,580
	
	'all aliens cleared, next level
	If AlienList.Count() = 0
		LEVEL:+1
		BulletList.Clear
		ExplosionList.Clear
		If LEVEL = 11
			Win()
		End If
		ShowLevelUp(LEVEL)
		Select LEVEL
			Case 2
				RestoreData LEVEL2
			Case 3
				RestoreData LEVEL3
			Case 4
				RestoreData LEVEL4
			Case 5
				RestoreData LEVEL5
			Case 6
				RestoreData LEVEL6
			Case 7
				RestoreData LEVEL7
			Case 8
				RestoreData LEVEL8
			Case 9
				RestoreData LEVEL9
			Case 10
				RestoreData LEVEL10
		End Select
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
	End If
	
	' minimized hold the game
	If AppSuspended()
	Repeat
	For CHECKALIEN:TAlien = EachIn AlienList
		CHECKALIEN.shoottime = MilliSecs()
	Next
	Until Not AppSuspended()
	End If
	
	' hit escape will bring you back to the main menu
	If KeyHit(KEY_ESCAPE) MainMenu()
	
	
	Flip
Wend
End



Rem
LEVEL DATA
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
.
w = 20
h = 8
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
DefData 2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
.
End Rem

#LEVEL2
DefData 2,2,2,0,0,0,1,1,1,1,1,1,1,1,0,0,0,2,2,2
DefData 2,2,2,0,0,0,1,1,1,1,1,1,1,1,0,0,0,2,2,2
DefData 2,2,2,0,0,0,1,1,1,1,1,1,1,1,0,0,0,2,2,2
DefData 3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3
DefData 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

#LEVEL3
DefData 3,3,3,0,0,0,1,1,1,1,1,1,1,1,0,0,0,3,3,3
DefData 3,3,3,0,0,0,1,1,1,1,1,1,1,1,0,0,0,3,3,3
DefData 3,3,3,0,0,0,1,1,1,1,1,1,1,1,0,0,0,3,3,3
DefData 0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0
DefData 1,0,0,0,0,0,0,1,1,0,0,1,1,0,0,0,0,0,0,1
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

#LEVEL4
DefData 1,1,1,0,0,0,1,1,3,1,1,3,1,1,0,0,0,1,1,1
DefData 3,3,3,0,0,0,1,1,1,1,1,1,1,1,0,0,0,3,3,3
DefData 3,3,3,0,0,0,1,1,3,1,1,3,1,1,0,0,0,3,3,3
DefData 0,0,0,2,2,2,2,3,3,3,3,3,3,2,2,2,2,0,0,0
DefData 1,0,0,0,0,2,0,1,1,0,0,1,1,0,2,0,0,0,0,1
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

#LEVEL5
DefData 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
DefData 2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3
DefData 1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1
DefData 0,0,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

#LEVEL6
DefData 3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3
DefData 4,4,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,4,4
DefData 4,4,4,2,2,2,0,0,0,0,0,0,0,0,2,2,2,4,4,4
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

#LEVEL7
DefData 4,4,4,4,4,4,4,4,4,4,3,3,3,3,3,3,3,3,3,3
DefData 3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3
DefData 3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
DefData 0,0,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

#LEVEL8
DefData 4,3,2,2,1,1,1,1,1,1,1,1,1,1,1,1,2,2,3,4
DefData 4,3,2,2,1,1,1,1,1,1,1,1,1,1,1,1,2,2,3,4
DefData 4,3,2,2,2,0,0,0,0,0,0,0,0,0,0,2,2,2,3,4
DefData 4,3,2,2,0,0,0,0,0,0,0,0,0,0,0,0,2,2,3,4
DefData 4,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,4
DefData 4,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,4
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

#LEVEL9
DefData 4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4
DefData 4,4,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,4,4
DefData 4,4,4,0,0,0,0,3,3,3,3,3,3,0,0,0,0,4,4,4
DefData 4,4,4,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4
DefData 0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

#LEVEL10
DefData 4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4
DefData 4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4
DefData 4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4
DefData 4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4
DefData 3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,3
DefData 0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,2,2,2,2,2,2,0,0,0,0,0,0,0
DefData 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0