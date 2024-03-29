Include "inc.mediaload.bmx"
Include "inc.engine.bmx"

'graphics setting
SetGraphicsDriver(GLMax2DDriver())
Graphics 1024,768,32
HideMouse()'hide the mouse(duh?)
SetBlend LIGHTBLEND'sets the blend mode to light - pretty effects
SetImageFont(normalfont)'sets the default font to a smaller version of the loaded font
SeedRnd MilliSecs()'set the random thing



'timers
Global bitimer:Int'binary number explosions timer (random background effect)
Global bitimer2:Int'binary number trail timer (random background effect)
Global frametimer:Int'timer for the trippy green frame thing changing colors

'Player and Enemy - Accessed everywhere so they must remain global
Global player:TPlayerPaddle'the player object
Global Enemy:TEnemyPaddle'the enemy object

'Scores
Global PlayerScore:Int'player's score
Global EnemyScore:Int'enemy's score
Global Goal:Int = 200'the goal, default is 200

'Get things started
MainMenu()

'The main menu in all it's glory
Function MainMenu()
	'create play button
	TButton.CreateButton(437,400,"Play",Playbuttonimg,hPlaybuttonimg)'the player button
	TButton.CreateButton(437,500,"Left",Leftimg,hLeftimg)'the left pan button
	TButton.CreateButton(577,500,"Right",Rightimg,hRightimg)'the right pan button
	'main loop for main menu
	While Not KeyHit(KEY_ESCAPE) 
			Cls
			DrawBG()'Draw the green frame
			DrawImage titleimg,300,200'draw the "SUPREME PONG" title thing
			'Update the buttons
			TButton.UpdateButtons()
			'Draw the cursor, and it's particle effect
			DrawImage CursorImg,MouseX(),MouseY()
			ParticleExplosion(MouseX(), MouseY(), starparticle, 5, 20)
			TParticle.UpdateAllParticles()
			'the point panning thing's text
			SetColor 0,204,255
			DrawText "First to",430,460
			DrawText Goal,517-(.5*TextWidth(Goal)),495
			DrawText "Points",500,530
			SetColor 255,255,255
			
			'An Event handler for the TEventFire type - buttons fire events with their names
			For Local i:TEventFire = EachIn EventList
				Select i.Message
					Case "Play"'Play button pressed
						'Clean up the main menu
						EventList.Clear()
						ButtonList.Clear()
						TParticle.ClearAll()
						FlushKeys()
						FlushMouse()
						'Start the game
						GamePlay()
					Case "Left"'left pan thing was pressed
						EventList.Clear()'clear events
						If Goal > 100 Goal:-100'minus goal
					Case "Right"
						EventList.Clear()'clear events
						Goal:+100'plus goal
						
				End Select
			Next
			UpdateTimers()'update the game timers
		Flip 1
	Wend
	End
End Function

'The pause menu in all it's glory
Function GamePause:Byte()
	Local done:Byte
	Local Screenshot:TPixmap = GrabPixmap(0,0,1024,768)' take a screenshot of the game
	
	TButton.CreateButton(370,375,"Yes",Yesbutton,hYesbutton)'the yes i want to quit button
	TButton.CreateButton(510,375,"No",Nobutton,hNobutton)'the no i don't want to quit button
	While Not done
		Cls
			If KeyHit(KEY_ESCAPE)'same as pressing "no"
				ButtonList.Clear()
				EventList.Clear()
				FlushKeys()
				Return False
			End If
			'draw the screenshot and window image alpha blended together.
			SetBlend ALPHABLEND
			DrawPixmap Screenshot,0,0
			DrawImage windowimg,300,300
			SetBlend LIGHTBLEND
			'update the buttons and cursor
			TButton.UpdateButtons()
			DrawImage CursorImg,MouseX(),MouseY()
			'An Event handler for the TEventFire type
			For Local i:TEventFire = EachIn EventList
				Select i.Message
					Case "Yes"'Yes button pressed, return true
						ButtonList.Clear()
						EventList.Clear()
						Return True
					Case "No"'No button pressed, return false
						ButtonList.Clear()
						EventList.Clear()
						Return False			
				End Select
				
			Next
			FlushMouse()
		Flip
	Wend

End Function

'The actually game *drum roll*
Function GamePlay()
	Local quit:Byte

	'make player/enemy
 	player = New TPlayerPaddle
	enemy = New TEnemyPaddle
	'Create a ball
	Local ballhandler:TBallHandler = New TBallHandler'The regular shooter
	Local CrazyBallhandler:TBallHandler = New TBallHandler'Crazy shooter
	CrazyBallHandler.Crazy=True'Make it crazy
	
	Repeat
		'motion blur instead of cls
		SetBlend ALPHABLEND
		SetAlpha .2
		SetColor 0,0,0
		DrawRect 0,0,1024,768
		SetColor 255,255,255
		SetAlpha 1
		SetBlend LIGHTBLEND
		
		DrawPBG()'Draw the background effects/greenframe
		ballhandler.Update()'Update the ball emitter
		CrazyBallHandler.Update()'Update the Crazy ball handler
		player.Update()'Update and draw the player
		enemy.Update()'Update and draw the enemy
		TBall.UpdateBalls()'Update and draw the balls
		TParticle.UpdateAllParticles()'Update and draw the particles
		
		UpdateTimers()'Update the timers
		If CheckForWin() Exit'Check if the player/enemy has won
		If KeyHit(KEY_ESCAPE) And Not quit
			quit=GamePause()
			If quit Exit
		End If
		
		
		Flip 1
	Forever
	CleanUpGame()'Clean up everything
	MainMenu()'Go back to the main menu


End Function