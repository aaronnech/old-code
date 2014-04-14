Import "res.o"'import icon resource
Include "inc.engine.bmx"'include the code behind the game mechanics

AppTitle = "Black Friday"'set the application title
HideMouse()'hide the mouse, we have our own

SetGraphicsDriver(D3D9Max2DDriver())'set the graphics driver to open GL
Graphics 1024, 768, 32'Graphics mode
SetIcon(AppFile)'Extract the icon resource and display it on everything
SetBlend ALPHABLEND'Alpha blend for now
SetAudioDriver("FreeAudio DirectSound")'Set the audio driver.. without this I experienced some delay on vista systems
SeedRnd(MilliSecs())'Seed the random number generator


DrawImage LoadImage("media/loading.png"), 312, 334 'Draw a quick loading image
Flip 1'display this image

Include "inc.media.bmx"'load all the files... while displaying the loading image
SetImageFont(myfont)
'START THE GAME

'Main loop, decides which screen to display
Repeat
	Select SCREEN'Current screen
		Case "MENU"'What we start with
			jinglebellschan = AllocChannel()'Re allocate channel
			If peoplechan.Playing() StopChannel(peoplechan)'stop the other music
			PlaySound(jinglebells, jinglebellschan)'start music
			Menu()'goto menu
		Case "GAME"'after pressing play
			peoplechan = AllocChannel()'same as above
			If jinglebellschan.Playing() StopChannel(jinglebellschan)
			PlaySound(people, peoplechan)
			Game()
	End Select
Forever

'MAIN MENU
Function Menu()

	'create a play button
	TButton.CreateButton(437, 400, "Play", Playbuttonimg, hPlaybuttonimg)'the player button
	
	While Not KeyHit(KEY_ESCAPE)
			Cls
			'update the background    
			DrawImage bgimage, 0, 0
			DrawImage logoimg, 300, 200
			SnowStorm.Update()'snow effect
			TButton.UpdateButtons()'update button
			UpdateMouse(mouse)'update the mouse
			'An Event handler for the TEventFire type - buttons fire events with their names
			For Local i:TEventFire = EachIn EventList
				Select i.Message
					Case "Play"'Play button pressed
						'Clean up the main menu
						CleanUp()
						CleanGUI()
						'Start the game
						SCREEN = "GAME"
						Return
				End Select
			Next
			
			CheckMinimize()'pause if we alt-tab the game or something
			FlushMouse()
			Flip
	Wend
	End
End Function

'PAUSED MENU
Function Pause:Byte()
	FlushMouse()
	SetOrigin(0, 0)'Reset any shake effects
	'create GUI(are you sure you want to quit?)
	TButton.CreateButton(507, 375, "No", nobuttonimg, hnobuttonimg)'the NO button
	TButton.CreateButton(367, 375, "Yes", yesbuttonimg, hyesbuttonimg)'the YES button
	Local bg:TImage = GetBlurredSS()

	Repeat
		Cls
		'draw the "do you want to quit?" window pile of snow thing
		DrawImageRect bg, 0, 0, 1024, 768
		DrawImage quitwindow, 512, 384
		'draw buttons
		TButton.UpdateButtons()
		'Update our mouse once again
		UpdateMouse(mouse)
		'An Event handler for the TEventFire type - buttons fire events with their names
		For Local i:TEventFire = EachIn EventList
			Select i.Message
				Case "Yes"'Yes button pressed = return to menu
					SCREEN = "GAME"
					CleanGUI()
					Return True
				Case "No"'No button pressed = return to game
					SCREEN = "GAME"
					CleanGUI()
					Return False
			End Select
		Next
		'return to game if they hit escape
		If KeyHit(KEY_ESCAPE)
		 	SCREEN = "GAME"
			CleanGUI()
			Return False
		End If
		CheckMinimize()'pause if tabbed or whatever
		FlushMouse()
		Flip
	Forever
End Function

'MAIN GAME PLAY
Function Game()
	player = New TPlayer'The player object. The holy grail of control(yeh, dramatic)
	Local Doors:TDoors = New TDoors'Object that controls enemy dispensing
	G.Drop()'Drop this gift to start with
	Local SnowBallDropper:TSnowBallDispenser = New TSnowBallDispenser'obviously dispenses snowballs
	Local Factsthingy:TFact = New TFact
	Clock.Reset()
	Clock.going = False
	Repeat
		Cls
		DrawBG()'Draw our background, and update some things
		If level > 0 SnowBallDropper.Update()'Update our snow
		player.Update()'Update our player
		Doors.Update()'Update our enemies
		G.Update()'Update our gift
		SnowStorm.Update()'Update the snow effect
		SetBlend LIGHTBLEND'Set particles to light blend
		TParticle.UpdateAllParticles()'Update Particles
		SetBlend ALPHABLEND
		Clock.Update()
		If level <=.75 Tutorial.Update() 'Update tutorial; don't need to update it after the third gift
		If level >=.75 Factsthingy.Update()
		'Check if the player is dead
		If SCREEN = "DEAD"
			Death()'Execute death sequence
			SCREEN = "MENU"'Set the screen to menu
		End If
		'If you hit escape, and you're in game, you're paused now.
		If KeyHit(KEY_ESCAPE) And SCREEN = "GAME"'
			SCREEN = "PAUSE"
		End If
		'If we're paused, then we can check if we want to go the the main menu now
		If SCREEN = "PAUSE"
			If Pause()
				SCREEN = "MENU"
			End If
		End If
		'if we want to go to the menu, we have to clean up everything, then we can go
		If SCREEN = "MENU"
			CleanUp()
			Return
		End If
		'Check if we're tabbed... blah blah
		CheckMinimize()
		Flip
	Forever
End Function

'Death sequence.. Cool
Function Death()
	'SCREAM!! AHHH!
	PlaySound(scream)
	'White out the screen.. cool effect
	WhiteOutScreen(.005)
	FlushKeys()'Make sure there's no input for spacebar otherwise we'll skip the newspaper
	SetImageFont(pointfont)
	While Not KeyHit(KEY_SPACE)
		Cls
			'Draw the newspaper/update snow
			DrawImage newspaper, 0, 0
			SetColor 230, 0, 0
			DrawText "High Score: "+POINTS, 100, 222
			SetColor 255, 255, 255
			SnowStorm.Update()
		Flip
	Wend
	SetImageFont(myfont)
	Return' go the the main menu
End Function

'Check if we're minimized, if we are, hold the program still
Function CheckMinimize()
	If AppSuspended()
		Repeat
			'hold the program
			Delay 5
		Until Not AppSuspended()
	End If
End Function