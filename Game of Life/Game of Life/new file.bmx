SuperStrict
AppTitle = "The Game of Life"
Graphics 800, 600
SeedRnd MilliSecs()

Const GRIDSIZE:Int = 10 'Grid tile size
Const SPEED:Int = 10 ' how many frames per update
Global IsGoing:Byte 'Is the simulation running?
Global mousegridx:Int, mousegridy:Int 'Cell that the mouse is in
Global StepTimer:Int = SPEED - 1 'Timer to execute the speed
Global CREATURES:Byte[800 / GRIDSIZE, 600 / GRIDSIZE] ' Cell grid - true if alive, false if dead
Global CREATURESTMP:Byte[800 / GRIDSIZE, 600 / GRIDSIZE]

'Static class for a group of functions that handle drawing/updating the creatures
Type TCreatureHandler
	
	'Draw the creatures
	Function DrawCreatures()
		'Loop through each creature
		For Local X:Int = 0 To (800 / GRIDSIZE) - 1
			For Local Y:Int = 0 To (600 / GRIDSIZE) - 1
				If TCreatureHandler.GetStatus(X, Y) 'if it's alive
					Local DrawX:Int = X + 1'set the drawing coords
					Local DrawY:Int = Y + 1'set the drawing coords
					'Draw a rectangle at the grid location, and the grid size big.
					SetColor 100, 200, 200
					DrawRect (DrawX * GRIDSIZE) - GRIDSIZE, (DrawY * GRIDSIZE) - GRIDSIZE, GRIDSIZE, GRIDSIZE
					setcolor 255,255,255
				End If
			Next
		Next
	End Function
	
	Function UpdateCreatures()
		StepTimer:+1
		If StepTimer < SPEED Return
		If StepTimer = SPEED StepTimer = 0
		Local aliveneighbors:Int = 0
		For Local X:Int = 0 To (800 / GRIDSIZE) - 1
			For Local Y:Int = 0 To (600 / GRIDSIZE) - 1
				aliveneighbors:Int = 0
					'check neighbors
					If TCreatureHandler.GetStatus(X, Y - 1) aliveneighbors:+1 'top
					If TCreatureHandler.GetStatus(X, Y + 1) aliveneighbors:+1 'bottom
					If TCreatureHandler.GetStatus(X - 1, Y) aliveneighbors:+1 'left
					If TCreatureHandler.GetStatus(X + 1, Y) aliveneighbors:+1 'right
					If TCreatureHandler.GetStatus(X + 1, Y - 1) aliveneighbors:+1 'top-right
					If TCreatureHandler.GetStatus(X + 1, Y + 1) aliveneighbors:+1 'bottom-right
					If TCreatureHandler.GetStatus(X - 1, Y - 1) aliveneighbors:+1 'top-left
					If TCreatureHandler.GetStatus(X - 1, Y + 1) aliveneighbors:+1 'bottom-left
					
					'lives on if it has two or three live neighbors
					If CREATURES[x, y] And (aliveneighbors = 2 Or aliveneighbors = 3)   'now it reads the original and modifies the temporary grid
						CREATURESTMP[X, Y] = True
					Else
						CREATURESTMP[X, Y] = False
					EndIf
					If Not CREATURES[x, y] And aliveneighbors = 3 CREATURESTMP[x, y] = True
			Next
		Next
		
		TCreatureHandler.Copy()
	End Function
	
	'copy the temp grid onto the normal grid
	Function Copy()
		For Local x:Int = 0 To (800 / GRIDSIZE) - 1
			For Local y:Int = 0 To (600 / GRIDSIZE) - 1
				CREATURES[x, y] = CREATURESTMP[x, y]
			Next
		Next
	End Function
	
	'toggle if it's alive or not
	Function ToggleLife(_x:Int, _y:Int)
		Local x:Int = (_x)
		Local y:Int = (_y)
		CREATURES[x, y] = Not CREATURES[x, y]'reverse true/false
	End Function
	
	'check if it's alive
	Function GetStatus:Byte(_x:Int, _y:Int)
		Local x:Int = (_x)
		Local y:Int = (_y)
		'if it's off the screen, it's dead
		If x > (800 / GRIDSIZE) - 1 Or y > (600 / GRIDSIZE) - 1 Or x < 0 Or y < 0
			Return False
		End If
		'return the location's true or false'ness
		Return CREATURES[x, y]
	End Function
	
	'Erase all cells
	Function EraseAll()
		'loop through each cell and set them all false
		For Local X:Int = 0 To (800 / GRIDSIZE) - 1
			For Local Y:Int = 0 To (600 / GRIDSIZE) - 1
				CREATURES[X, Y] = False
			Next
		Next
	End Function
	
End Type

'Main Loop
While Not KeyHit(KEY_ESCAPE)
		CheckInput()'Check input and execute code for that input
		If IsGoing'if the simulation is running
			TCreatureHandler.UpdateCreatures()'Use the delay step cell logic updater
			ReDraw()'Redraw everything
		Else
			ReDraw()'Redraw everything if it's at the waiting screen.
		End If
		If AppTerminate() End
Wend


Function CheckInput()
		mousegridx = MouseX() / GRIDSIZE * GRIDSIZE
		mousegridy = MouseY() / GRIDSIZE * GRIDSIZE
		If KeyHit(KEY_SPACE) IsGoing = Not IsGoing StepTimer = 29 ReDraw()
		If MouseHit(1) TCreatureHandler.ToggleLife(mousegridx / GRIDSIZE, mousegridy / GRIDSIZE) ReDraw()
		If MouseHit(2) TCreatureHandler.EraseAll()
End Function

Function ReDraw()
	Cls
		TCreatureHandler.DrawCreatures()'Draw the creatures
		SetColor 255, 0, 0'set color red
			'draw the status text
			If IsGoing
				DrawText "Press Space to STOP Simulation", 0, 0
			Else
				DrawText "Press Space to START Simulation", 0, 0
			End If
			DrawText "Use the RMB to delete all cells", 0, 20
			DrawText "Speed: " + SPEED, 0, 40
			'Draw the little red rectangle where the mouse is
			DrawRect mousegridx, mousegridy, GRIDSIZE, GRIDSIZE
		SetColor 255, 255, 255'set color back white
	Flip 1
End Function