SuperStrict

Import yah.particles
Import yah.general
Import fry.frygui

'Included in the .exe
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
Incbin "Skin/Fonts/BEWARE__.ttf"

Incbin "Media/bg.png"
Incbin "Media/player.png"
Incbin "Media/fire.png"
Incbin "Media/fire2.png"
Incbin "Media/playerpart.png"
Incbin "Media/target.png"
Incbin "Media/shield.png"
Incbin "Media/hostile.png"
Incbin "Media/bullet.png"
Incbin "Media/bomb.png"
Incbin "Media/bomb_exp.png"
Incbin "Media/shooting.wav"
Incbin "Media/boom.wav"
Incbin "Media/bomb_boom.wav"
Incbin "Media/hud_shields.png"
Incbin "Media/star.png"
Incbin "Media/beep.wav"
Incbin "Media/hud_radar.png"
Incbin "Media/landing.png"

Include "init.bmx"
  

'Graphics
AppTitle = "Galaxtic BattleGround"
Graphics 1024,768
SetBlend ALPHABLEND

'-----------------------------------------------------
'GUI Stuff
'-----------------------------------------------------

'load GUI stuff
fry_LoadSkin("incbin::Skin")
fry_AddFont("Default", "BEWARE__.ttf", 15)
fry_AddFont("Large", "BEWARE__.ttf", 25)

'Menu prep

Local mm:fry_TScreen = fry_CreateScreen("Main Menu")
Local hs_scr:fry_TScreen = fry_CreateScreen("High Scores")
Local opt_scr:fry_TScreen = fry_CreateScreen("Options")

Local main_panel:fry_TPanel = fry_CreatePanel("Main", 0, 0, 1024, 768)
main_panel.SetAlpha(0)
Local main_panel2:fry_TPanel = fry_CreatePanel("Main", 0, 0, 1024, 768)
main_panel2.SetAlpha(0)
Local main_panel3:fry_TPanel = fry_CreatePanel("Main", 0, 0, 1024, 768)
main_panel3.SetAlpha(0)

mm.AddPanel(main_panel)
hs_scr.AddPanel(main_panel2)
opt_scr.AddPanel(main_panel3)

'Main menu layout
Local play:fry_TButton = fry_CreateButton("play", "Play", 429, 384, 150, 24, main_panel)
Local hs:fry_TButton = fry_CreateButton("hs", "High Scores", 429, 419, 150, 24, main_panel)
Local options:fry_TButton = fry_CreateButton("options", "Instructions", 429, 454, 150, 24, main_panel)
'fry_CreateImage("title","incbin::Media/title.png",230,90,350,170,main_panel)

'High scores layout
Local back1:fry_TButton = fry_CreateButton("back1", "Back", 30, 730, 70, 35, main_panel2)
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

'Instructions screen layout
Local back2:fry_TButton = fry_CreateButton("back2", "Back", 30, 730, 70, 35, main_panel3)
'fry_CreateImage("instructions","incbin::Media/instructions.png",200,10,400,500,main_panel3)


'extra initalizing stuff
hs.SetLink(hs_scr)
options.SetLink(opt_scr)
back1.SetLink(mm)
back2.SetLink(mm)

fry_SetScreen("Main Menu")

'--------------------------------------------------
' Other initalizing
'--------------------------------------------------
Local BUTTON_SEL:Int = False
Local FPS_TIMER:Int
SetImageFont(std)

PlaySound bg_music
While Not KeyHit(KEY_ESCAPE)
	BlurCls .1

	If MainMenu
		px:+1
		py:+1
		UpdateBG()
		
			play.SetColour(255,255,255)
			hs.SetColour(255,255,255)
			options.SetColour(255,255,255)
			back1.SetColour(255,255,255)
			back2.SetColour(255,255,255)
			clr.SetColour(255,255,255)
			If fry_EventID() = fry_EVENT_MOUSEOVER
				Select fry_EventSourceName()
					Case "play"
						play.SetColour(0,222,222)
					Case "hs"
						hs.SetColour(0,222,222)
					Case "options"
						options.SetColour(0,222,222)
					Case "back1"
						back1.SetColour(0,222,222)
					Case "back2"
						back2.SetColour(0,222,222)
					Case "delete"
						clr.SetColour(0,222,222)
				End Select
			End If
			
			
		fry_Refresh()
		
		EmitParticle(MouseX(), MouseY(), starpart, 30, True, Rand(-10,10), 2)
		EmitParticle(MouseX(), MouseY(), starpart, 30, True, Rand(-10,10), 2)
		SetBlend LIGHTBLEND
		UpdateParticlesZ(0,0,0,0,.3)
		SetBlend ALPHABLEND
		
		While fry_PollEvent()
			Select fry_EventID()
				Case fry_EVENT_GADGETSELECT
					Select fry_EventSourceName()
						Case "play"
							FlushKeys()
							FlushMouse()
							px = 512
							py = 384
							'Starting enemys
							For Local i:Int = 1 To START_ENEMIES
								Local e1:TEnemy = New TEnemy.Create()
							Next
							CREATED_ENEMIES = START_ENEMIES
							ClearParticlesZ()
							MainMenu = False
					End Select
				Case fry_EVENT_MOUSEOVER
					Select fry_EventSourceName()
					End Select
						
			End Select
			
		Wend
	Else
		UpdateBG()
		UpdatePlayer()
		UpdateBullets()
		UpdateEnemys()
		If ParticleCount()
			SetBlend LIGHTBLEND
			UpdateParticlesZ(,-pdx,-pdy)
			SetBlend ALPHABLEND
		End If
		UpdateHUD()
		
		'add enemies as the player kills them
		If EnemyList.count() = 0
			For Local i:Int = 1 To CREATED_ENEMIES + Int(CREATED_ENEMIES*.20)
				Local e1:TEnemy = New TEnemy.Create()
			Next
			CREATED_ENEMIES = EnemyList.count()
		End If
		
		If KeyHit(KEY_1) BOMBS:+1
		DrawText "FPS: "+Int(FPS()),500,0
		DrawText "Particles: "+ParticleCount(),500,20
		If MilliSecs() > FPS_TIMER+1000 FPSUpdate() FPS_TIMER = MilliSecs()
	End If

	If AppTerminate() End
	GCCollect
	Flip 1
Wend
End

