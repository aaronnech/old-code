SuperStrict

Import fry.frygui
Import yah.engine
Import "res.o"
Include "init.bmx"


'case sensitive
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

Incbin "Media/brick_1.png"
Incbin "Media/brick_2.png"
Incbin "Media/brick_3.png"
Incbin "Media/brick_4.png"
Incbin "Media/ball.png"
Incbin "Media/title.png"
Incbin "Media/play_bg.png"
Incbin "Media/paddle.png"
Incbin "Media/instructions.png"
Incbin "Media/shard_1.png"
Incbin "Media/shard_2.png"
Incbin "Media/shard_3.png"
Incbin "Media/shard_4.png"
Incbin "Media/yellow_partical.png"
Incbin "Media/star.png"
Incbin "Media/flame.png"

Incbin "Media/bounce.wav"
Incbin "Media/crash.wav"

AppTitle = "SpaceBreak"


Graphics 800,600
SetIcon(AppFile, GetActiveWindow())
fry_SetResolution(800,600)
SetBlend ALPHABLEND
SeedRnd MilliSecs()

'load GUI stuff
fry_LoadSkin("incbin::Skin")
fry_AddFont("Default", "trebucbd.ttf", 13)
fry_AddFont("Large", "trebucbd.ttf", 25)

'Menu prep

Local mm:fry_TScreen = fry_CreateScreen("Main Menu")
Local hs_scr:fry_TScreen = fry_CreateScreen("High Scores")
Local opt_scr:fry_TScreen = fry_CreateScreen("Options")
Local enter_hs:fry_TScreen = fry_CreateScreen("Enter Highscore")

Local main_panel:fry_TPanel = fry_CreatePanel("Main", 0, 0, 800, 600)
main_panel.HexColour("005eae")
Local main_panel2:fry_TPanel = fry_CreatePanel("Main", 0, 0, 800, 600)
main_panel2.HexColour("005eae")
Local main_panel3:fry_TPanel = fry_CreatePanel("Main", 0, 0, 800, 600)
main_panel3.HexColour("005eae")
Local main_panel4:fry_TPanel = fry_CreatePanel("Main", 0, 0, 800, 600)
main_panel4.HexColour("005eae")

mm.AddPanel(main_panel)
hs_scr.AddPanel(main_panel2)
opt_scr.AddPanel(main_panel3)
enter_hs.AddPanel(main_panel4)

'Main menu layout
Local play:fry_TButton = fry_CreateButton("play", "Play", 335, 300, 150, 24, main_panel)
Local hs:fry_TButton = fry_CreateButton("hs", "High Scores", 335, 335, 150, 24, main_panel)
Local options:fry_TButton = fry_CreateButton("options", "Instructions", 335, 370, 150, 24, main_panel)
fry_CreateImage("title","incbin::Media/title.png",230,90,350,170,main_panel)

'High scores layout
Local back1:fry_TButton = fry_CreateButton("back1", "Back", 30, 530, 70, 35, main_panel2)
Local clr:fry_TButton = fry_CreateButton("delete", "Delete", 700, 5, 70, 35, main_panel2)
table = fry_CreateTable("Table", 120, 5, 500, "Initials", 400, 18, True, main_panel2)
'add more columns. There is a 3 pixel gap between columns that needs to be taken into account, and 20 pixels should be left for the scrollbar
table.AddColumn("Points", 150)


'set table colour properties
table.HexColour("FFFFFF", 0)		'colour of each item
table.HexColour("FFFFFF", 1)		'colour of the selected item
table.HexColour("FFFFFF", 2)		'colour of the column headings

table.HexTextColour("000000", 0)	'text colour for items
table.HexTextColour("000000", 1)	'text colour for selected item
table.HexTextColour("000000", 2)	'text colour for headings

table.SetAlpha(0.5, 1)				'set selected item to be partially transparent
table.SetAlpha(0.7, 2)				'set heading alpha to be partially transparent, making a light blue

'Options/Instructions screen layout
Local back2:fry_TButton = fry_CreateButton("back2", "Back", 30, 530, 70, 35, main_panel3)
fry_CreateImage("instructions","incbin::Media/instructions.png",200,10,400,500,main_panel3)


'enterhs layout
Local ei:fry_TLabel = fry_CreateLabel("ei", "Enter Initals(3 characters)", 400, 200, 200, 90, 1, 1, main_panel4)
ei.SetFont("Large")
Local tb_initals:fry_TTextField = fry_CreateTextField("name", "", 386, 250, 28, 24, False, main_panel4)
Local submit:fry_TButton = fry_CreateButton("submit", "Submit", 350, 350, 100, 35, main_panel4)

'extra initalizing stuff
hs.SetLink(hs_scr)
options.SetLink(opt_scr)
back1.SetLink(mm)
back2.SetLink(mm)

fry_SetScreen("Main Menu")

'PlaySound(bgmusic)
		SetImageFont(pointfont)
		
Global FPS:Int
Local FPS_TIMER:Int = MilliSecs()
Local FPS_TICK:Int


While Not QUIT
	BlurCls
	PollSystem
	
	'Main Loop in menu
	If MainMenu
		
		'update GUI
		fry_Refresh()
		ParticleExplosion(MouseX(), MouseY(), yp, 10, 10)
		UpdateParticlesZ()
		While fry_PollEvent()
		
			Select fry_EventID()
				Case fry_EVENT_GADGETSELECT
					Select fry_EventSourceName()
						Case "play"
							FlushKeys()
							ResetGame()
							MainMenu = False
						Case "hs"
							table.ClearItems()
							PhraseHS()
						Case "delete"
							Local ok:Int
							If table.SelectedItem() >= 0
								ok = Confirm("Are you sure you want to delete "+table.GetContent(table.SelectedItem(), 0)+"'s high score?",True)
								If ok
									RemoveHS(Lower(table.GetContent(table.SelectedItem(), 0)))
									table.RemoveItem(table.SelectedItem())
								End If
							End If
						Case "submit"
							If Len(tb_initals.GetText()) = 3
								AddHS(tb_initals.GetText(),POINTS)
								fry_SetScreen("Main Menu")
							Else
								Notify("To many or to little characters!",True)
							End If
					End Select

				
			End Select
			
			If fry_EventID() <> fry_EVENT_MOUSEOVER
				freshhover = True
			Else
				freshhover = False
			End If
			
		Wend
		
		If KeyHit(KEY_ESCAPE) QUIT = Confirm("Are you sure you want to quit?",True)
		
	'Main loop in game
	Else
	
		UpdateBG()
		UpdatePlayer()
		UpdateBall()
		UpdateBricks()
		UpdateLives()
		UpdateParticlesZ()
		
		If BrickList.count() = 0 Won()
	
		If KeyHit(KEY_ESCAPE) MainMenu = Confirm("Return to the Main Menu?",True) ResetGame()
		
		
		SetColor 217,219,21
		DrawText "Points: "+POINTS,10,40	
		DrawText "Level: "+LEVEL,10,5	
		SetColor 255,255,255	
		
	End If
	
	'check for clicking the "x" on the window
	If AppTerminate()
		QUIT = Confirm("Are you sure you want to quit?",True)
	End If
	
	'Get FPS
	If MilliSecs() > FPS_TIMER+1000
		FPS = FPS_TICK
		FPS_TIMER = MilliSecs()
		FPS_TICK = 0
	End If
	FPS_TICK:+1
	
	Delay 5
	Flip 1
Wend
End

