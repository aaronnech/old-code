Import yah.tvec2
Import yah.general
Import fry.frygui
Import yah.Particles

'window setup
AppTitle = "Gum Balls"
Graphics 400,500
HideMouse

'source includes
Include "init.bmx"

'Incbin
Incbin "Skin/graphics/button.png"
Incbin "Skin/graphics/checkbox.png"
Incbin "Skin/graphics/combobox arrow.png"
Incbin "Skin/graphics/combobox.png"
Incbin "Skin/graphics/hscrollbar.png"
Incbin "Skin/graphics/menu.png"
Incbin "Skin/graphics/panel.png"
Incbin "Skin/graphics/progress.png"
Incbin "Skin/graphics/scrollback.png"
Incbin "Skin/graphics/scrolldown.png"
Incbin "Skin/graphics/scrollleft.png"
Incbin "Skin/graphics/scrollright.png"
Incbin "Skin/graphics/scrollup.png"
Incbin "Skin/graphics/search.png"
Incbin "Skin/graphics/textfield.png"
Incbin "Skin/graphics/vscrollbar.png"
Incbin "Skin/graphics/cursors/mousedown.png"
Incbin "Skin/graphics/cursors/mouseover.png"
Incbin "Skin/graphics/cursors/normal.png"
Incbin "Skin/Fonts/fonts.xml"
Incbin "Skin/Fonts/trebucbd.ttf"


'Init stuff
SetBlend ALPHABLEND
SeedRnd MilliSecs()

fry_SetResolution(400,500)
fry_LoadSkin("incbin::Skin")
fry_AddFont("Default", "trebucbd.ttf", 13)
fry_AddFont("Large", "trebucbd.ttf", 25)

'Main Menu
Local scr_MM:fry_TScreen = fry_CreateScreen("Main Menu")
Local pnl_MM:fry_TPanel = fry_CreatePanel("Main", 0, 0, 400, 500)
pnl_MM.BackgroundOff()
scr_MM.AddPanel(pnl_MM)
Local btn_play:fry_TButton = fry_CreateButton("play", "Play", 125, 250, 150, 24, pnl_MM)
Local btn_hs:fry_TButton = fry_CreateButton("hs", "High Scores", 125, 300, 150, 24, pnl_MM)

'High Scores
Local scr_HS:fry_TScreen = fry_CreateScreen("High Scores")
Local pnl_HS:fry_TPanel = fry_CreatePanel("Main", 0, 0, 400, 500)
pnl_HS.BackgroundOff()
scr_HS.AddPanel(pnl_HS)
Local btn_back:fry_TButton = fry_CreateButton("back1", "Back", 30, 400, 70, 35, pnl_HS)
Local clr:fry_TButton = fry_CreateButton("delete", "Delete", 330, 400, 70, 35, pnl_HS)
table = fry_CreateTable("Table", 75, 5, 375, "Initials", 100, 18, True, pnl_HS)
table.AddColumn("Score(Seconds)", 150)
table.HexColour("73bcc3", 0)		'colour of each item
table.HexColour("73bcc3", 1)		'colour of the selected item
table.HexColour("73bcc3", 2)		'colour of the column headings
table.HexTextColour("000000", 0)	'text colour for items
table.HexTextColour("000000", 1)	'text colour for selected item
table.HexTextColour("000000", 2)	'text colour for headings
table.SetAlpha(0.5, 1)				'set selected item to be partially transparent

'Enter high score
Local scr_EHS:fry_TScreen = fry_CreateScreen("Enter Highscore")
Local pnl_EHS:fry_TPanel = fry_CreatePanel("Main", 0, 0, 400, 500)
scr_EHS.AddPanel(pnl_EHS)
pnl_EHS.BackgroundOff()
Local tb_initals:fry_TTextField = fry_CreateTextField("name", "", 186, 250, 28, 24, False, pnl_EHS)
Local btn_submit:fry_TButton = fry_CreateButton("submit", "Submit", 150, 350, 100, 35, pnl_EHS)

'Other
btn_hs.SetLink(scr_HS)
btn_back.SetLink(scr_MM)
fry_SetScreen("Main Menu")

Local lasttime:Int

While Not KeyHit(KEY_ESCAPE)
	Cls
		If Not MainMenu'Gameplay
			'logic
			runtime = (MilliSecs() - starttime)/1000
			If runtime >= lasttime+20 AddBall() lasttime = runtime
			EnemyBall.UpdateAll()
			
			If Not GameOver 
				'Update with mouse coords
				PlayerX = MouseX()
				PlayerY = MouseY()
			Else
				'Update with vector (rag doll effect)
				PVec.Y:+2
				PlayerX:+PVec.X
				PlayerY:+PVec.Y
			End If
			
			
			'drawing
			Cls
				DrawImage BG,0,0
				EnemyBall.RenderAll()
				DrawImage PlayerIMG,PlayerX,PlayerY
				SetColor 0,0,0
				DrawText runtime+" secs",200-TextWidth(runtime+" secs")/2,470
				SetColor 255,255,255
			Flip 1
			
			'Check and see if the game is over
			If PlayerY > 510 And BallList.Count() = 0 And GameOver
				EndGame()
			End If
			
			Delay 2'sleep time
		Else'Main menu
	
			'logic
			PlayerX = MouseX()
			PlayerY = MouseY()
			While fry_PollEvent()
				Select fry_EventID()
					Case fry_EVENT_GADGETSELECT
						Select fry_EventSourceName()
							Case "play"
								musicchannel = PlaySound(music)
								FlushKeys()
								For Local i:Int = 1 To 4
									Local ball:Enemyball = New Enemyball
								Next
								MainMenu = False
								starttime = MilliSecs()
								lasttime = 0
							Case "hs"
								table.ClearItems()
								PhraseHS()
								HS = True
							Case "submit"
								If Len(tb_initals.GetText()) = 3
									AddHS(tb_initals.GetText(),Score)
									EHS = False
									fry_SetScreen("Main Menu")
								Else
									Notify("To many or to little characters!",True)
								End If
							Case "back1"
								HS = False
							Case "delete"
								Local ok:Int
								If table.GetContent(table.SelectedItem(), 0) <> ""
								 	ok = Confirm("Are you sure you want to delete "+table.GetContent(table.SelectedItem(), 0)+"'s high score?",True)
									If ok
										RemoveHS(table.GetContent(table.SelectedItem(), 0))
										table.RemoveItem(table.SelectedItem())
									End If
								End If
						End Select
				End Select
			Wend
			'drawing
			DrawImage BG,0,0
			fry_Refresh()
			UpdateParticlesZ()
			If EHS = 1 And HS = False
				SetColor 0,0,0
				DrawText "You lasted: "+Score+" Seconds!",200-TextWidth("You lasted: "+Score+" Seconds!")/2,80
				DrawText "Enter your initals(3 characters):",200-TextWidth("Enter your initals(3 characters):")/2,170
				SetColor 255,255,255
			ElseIf EHS = False And HS = False
				DrawImage titleimg,90,0		
			End If
			
		End If
		
	Flip 1
	Delay 2
Wend
End