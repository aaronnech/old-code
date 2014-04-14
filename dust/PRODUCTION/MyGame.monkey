#MOJO_IMAGE_FILTERING_ENABLED="false"
Strict

Import mojo
Import diddy
Import angelfont
Import simpletextbox
Import engine
Import gamestate
'Import savegame

Const TILE_SIZE:Int = 16
Const PLAYER_COLL_W:Int = 14
Const PLAYER_COLL_H:Int = 7
Const FOLLOW_ENEMY:Bool = False

'fonts
Global normalFont:AngelFont

'cursor
Global cursorImg:GameImage
Global cursorRot:Float

'screens and player coords
Global titleScreen:TitleScreen
Global gameScreen:GameScreen
Global deathScreen:DeathScreen
Global pauseScreen:PauseScreen
Global mapx:Float,mapy:Float
Global dialog:DialogBox
Global ray:RayTrace'reusable ray for checking collisions

'DEFINE WEAPONS/Enemies/Pickups/Levelsets from xml data
Global WEAPONS:StringMap<Weapon>
Global ENEMIES:StringMap<EnemyDefinition>
Global PICKUPS:StringMap<PickupDefinition>
Global LEVELTREE:StringMap<LevelNode>
Global READABLES:StringMap<ReadableDefinition>
Global TASKS:ArrayList<TaskDefinition>
Global MODIFIERS:StringMap<PlayerModifier>

Global DEFAULT_PLAYER_ATTRIBUTES:PlayerAttributes

'our viewport
Global cam:Camera

Function Main:Int()
        game = New MyGame()
        Return 0
End

Class MyGame Extends DiddyApp
		Method New()
			Super.New()
			FPS = 30
			frameRate = 60	
			UseFixedRateLogic(True)
			HideMouse()
		End Method
        Method OnCreate:Int()
                Super.OnCreate()
				SetScreenSize(240,160,True)
				inputCache.MonitorAll()
				Tween.CacheTweens()
				loadMedia()
				'camera and raytracer
				cam = New Camera()
				ray = New RayTrace()
				'setup dialog box
				SimpleTextBox.lineGap = 0
				SimpleTextBox.yOffset = 0
				SimpleTextBox.font = normalFont
				dialog = New DialogBox(3)
				'game definitions
				defineDefaultPlayer()
				defineModifiers()
				defineWeapons()
				defineEnemies()
				defineReadables()
				definePickups()
				defineTasks()
				'define screens
                titleScreen = New TitleScreen
				deathScreen = New DeathScreen
				gameScreen = New GameScreen
				pauseScreen = New PauseScreen
                titleScreen.PreStart()
                Return 0
        End
		Method loadMedia:Void()
			Local tmpImage:Image
			normalFont = New AngelFont()
			normalFont.LoadFont("font/font")
			images.LoadAnim("etc/player.png", 16, 16, 2, tmpImage)
			images.Load("etc/BombMark.png")
			images.Load("etc/blood.png")
			images.Load("etc/dpad.png","",False)
			images.Load("etc/hud.png","",False)
			images.Load("etc/health.png","",False)
			images.LoadTileset("pickup/pickups.png",16,16,0,0,"",True)
			images.Load("etc/flashlight_on.png","",False)
			images.Load("etc/flashlight_off.png","",False)
			images.Load("etc/dialogbox.png","",False)
			images.Load("notification/taskcomplete.png","",False)
			images.Load("notification/newtask.png","",False)
			images.Load("etc/bloodsplatter.png")
			images.Load("etc/logo.png")
			cursorImg = images.Load("gui/cursor.png")
			sounds.Load("pickup")
			sounds.Load("hurt")
			sounds.Load("menuhover")
			sounds.Load("menuclick")
			sounds.Load("typing")
			sounds.Load("notify")
			
		End Method

		Method defineReadables:Void()
			READABLES = New StringMap<ReadableDefinition>
			Local parser:XMLParser = New XMLParser
			Local doc:XMLDocument = parser.ParseString(LoadString("definitions/readables.xml"))
			Local node:XMLElement
			Local e:ReadableDefinition
			Local imgString:String
			Local animated:Bool
			Local tmpImage:Image
			For Local i:Int = 0 To doc.Root.Children.Size-1'get main items
				node = doc.Root.Children.Get(i)
				e = New ReadableDefinition()
				e.name = node.GetAttribute("name")
				For Local b:Int = 0 To node.Children.Size-1'get properties
					Select node.Children.Get(b).Name
						Case "image"
							imgString = node.Children.Get(b).Value
						Case "readDist"
							e.readDist = Float(node.Children.Get(b).Value)
						Case "w"
							e.w = Int(node.Children.Get(b).Value)
						Case "h"
							e.h = Int(node.Children.Get(b).Value)
						Case "frameCount"
							e.frameCount = Int(node.Children.Get(b).Value)
							animated = True
						Case "script"
							e.script = New Script()
							For Local c:Int = 0 To node.Children.Get(b).Children.Size-1
								If node.Children.Get(b).Children.Get(c).Name = "node"
									e.script.nodes.AddLast(New ScriptNode(node.Children.Get(b).Children.Get(c).Value))
								End If
							Next
					End Select
				Next
				If animated
					e.img = images.LoadAnim(imgString,e.w,e.h,e.frameCount,tmpImage)
				Else
					e.img = images.Load(imgString)
				End If
				READABLES.Add(e.name,e)
			Next			
		End Method
		Method defineEnemies:Void()
			ENEMIES = New StringMap<EnemyDefinition>
			Local parser:XMLParser = New XMLParser
			Local doc:XMLDocument = parser.ParseString(LoadString("definitions/enemies.xml"))
			Local node:XMLElement
			Local e:EnemyDefinition
			Local imgString:String
			Local tmpImage:Image
			For Local i:Int = 0 To doc.Root.Children.Size-1'get main items
				node = doc.Root.Children.Get(i)
				e = New EnemyDefinition()
				e.name = node.GetAttribute("name")
				For Local b:Int = 0 To node.Children.Size-1'get properties
					Select node.Children.Get(b).Name
						Case "image"
							imgString = node.Children.Get(b).Value
						Case "prerot"
							e.prerot = Int(node.Children.Get(b).Value)
						Case "speed"
							e.speed = Float(node.Children.Get(b).Value)
						Case "attackDelay"
							e.attackDelay = Int(node.Children.Get(b).Value)
						Case "health"
							e.health = Int(node.Children.Get(b).Value)
						Case "attackRange"
							e.attackRange = Float(node.Children.Get(b).Value)
						Case "attentionRange"
							e.attentionRange = Float(node.Children.Get(b).Value)
						Case "weapon"
							e.weapon = WEAPONS.Get(node.Children.Get(b).Value)
						Case "sNeutralFrame"
							e.sNeutralFrame = Int(node.Children.Get(b).Value)
						Case "eNeutralFrame"
							e.eNeutralFrame = Int(node.Children.Get(b).Value)
						Case "sAttackFrame"
							e.sAttackFrame = Int(node.Children.Get(b).Value)
						Case "strikeCharge"
							e.strikeCharge = Float(node.Children.Get(b).Value)
						Case "eAttackFrame"
							e.eAttackFrame = Int(node.Children.Get(b).Value)
						Case "w"
							e.w = Int(node.Children.Get(b).Value)
						Case "h"
							e.h = Int(node.Children.Get(b).Value)
						Case "frameCount"
							e.frameCount = Int(node.Children.Get(b).Value)
					End Select
				Next
				e.image = images.LoadAnim(imgString,e.w,e.h,e.frameCount,tmpImage)
				ENEMIES.Add(e.name,e)
			Next		
		End Method
		Method defineWeapons:Void()
			WEAPONS = New StringMap<Weapon>
			Local w:Weapon
			Local parser:XMLParser = New XMLParser
			Local doc:XMLDocument = parser.ParseString(LoadString("definitions/weapons.xml"))
			Local node:XMLElement
			For Local i:Int = 0 To doc.Root.Children.Size-1'get main items
				node = doc.Root.Children.Get(i)
				w = New Weapon()
				w.name = node.GetAttribute("name")
				w.type = node.Name
				w.rapidFireRate = -1
				w.clipSize = -1
				For Local b:Int = 0 To node.Children.Size-1'get properties
					Select node.Children.Get(b).Name
						Case "inventoryTile"
							w.inventoryTile = Int(node.Children.Get(b).Value)
						Case "image"
							w.image = game.images.Load(node.Children.Get(b).Value)
						Case "sound"
							w.sound = game.sounds.Load(node.Children.Get(b).Value)
						Case "expImage"
							w.expImage = game.images.Load(node.Children.Get(b).Value)
						Case "damage"
							w.damage = Int(node.Children.Get(b).Value)
						Case "expRadius"
							w.expRadius = Float(node.Children.Get(b).Value)
						Case "distance"
							w.distance = Float(node.Children.Get(b).Value)
						Case "expDelay"
							w.expDelay = Int(node.Children.Get(b).Value)
						Case "animN"
							w.animN = Int(node.Children.Get(b).Value)
						Case "ammo"
							w.maxAmmo = Int(node.Children.Get(b).Value)
						Case "infinite"
							w.infinite = Bool(Int(node.Children.Get(b).Value))
						Case "rapidfirerate"
							w.rapidFireRate = Int(node.Children.Get(b).Value)
						Case "clip"
							w.clipSize = Int(node.Children.Get(b).Value)
						Case "reloadtime"
							w.reloadTime = Int(node.Children.Get(b).Value)
					End Select
				Next
				WEAPONS.Add(w.name,w)
			Next
		End Method
		Method definePickups:Void()
			PICKUPS = New StringMap<PickupDefinition>
			Local parser:XMLParser = New XMLParser
			Local doc:XMLDocument = parser.ParseString(LoadString("definitions/pickups.xml"))
			Local node:XMLElement
			Local e:PickupDefinition
			Local imgString:String
			Local tmpImage:Image
			For Local i:Int = 0 To doc.Root.Children.Size-1'get main items
				node = doc.Root.Children.Get(i)
				e = New PickupDefinition()
				e.name = node.GetAttribute("name")
				For Local b:Int = 0 To node.Children.Size-1'get properties
					Select node.Children.Get(b).Name
						Case "imageTileNumber"
							e.imageTileNumber = Int(node.Children.Get(b).Value)
						Case "playerHealth"
							e.playerHealth = Int(node.Children.Get(b).Value)
						Case "weapon"
							e.weapon = WEAPONS.Get(node.Children.Get(b).Value)
						Case "ammo"
							e.ammo = Int(node.Children.Get(b).Value)
						Case "modifier"
							e.pModifier = MODIFIERS.Get(node.Children.Get(b).Value)
					End Select
				Next
				PICKUPS.Add(e.name,e)
			Next					
		End Method
		Method defineModifiers:Void()
			MODIFIERS = New StringMap<PlayerModifier>
			Local parser:XMLParser = New XMLParser
			Local doc:XMLDocument = parser.ParseString(LoadString("definitions/playermodifiers.xml"))
			Local node:XMLElement
			Local e:PlayerModifier
			For Local i:Int = 0 To doc.Root.Children.Size-1'get main items
				node = doc.Root.Children.Get(i)
				e = New PlayerModifier()
				e.name = node.GetAttribute("name")
				For Local b:Int = 0 To node.Children.Size-1'get properties
					Select node.Children.Get(b).Name
						Case "lastsfor"
							e.decaytime = Int(node.Children.Get(b).Value)
							If e.decaytime <> -1 e.usetime = True
						Case "lastsfordmg"
							e.hpdecaytime = Int(node.Children.Get(b).Value)
							If e.hpdecaytime <> -1 e.usehp = True
						Case "pspeed"
							e.attributes.speedmod = Float(node.Children.Get(b).Value)
						Case "flashlight"
							e.attributes.flashLight = Bool(node.Children.Get(b).Value)
						Case "espeedmod"
							e.attributes.enemySpeedMod = Float(node.Children.Get(b).Value)
						Case "parmormod"
							e.attributes.armor = Float(node.Children.Get(b).Value)
						Case "pdamagemod"
							e.attributes.damageMod = Float(node.Children.Get(b).Value)
					End Select
				Next
				MODIFIERS.Add(e.name,e)
			Next					
		End Method
		Method defineTasks:Void()
			TASKS = New ArrayList<TaskDefinition>
			Local w:TaskDefinition
			Local parser:XMLParser = New XMLParser
			Local doc:XMLDocument = parser.ParseString(LoadString("definitions/tasks.xml"))
			Local node:XMLElement
			For Local i:Int = 0 To doc.Root.Children.Size-1'get main items
				node = doc.Root.Children.Get(i)
				w = New TaskDefinition()
				w.name = node.GetAttribute("name")
				For Local b:Int = 0 To node.Children.Size-1'get properties
					Select node.Children.Get(b).Name
						Case "enemyname"
							w.eTypeName = node.Children.Get(b).Value
						Case "quantity"
							w.quantity = Int(node.Children.Get(b).Value)
						Case "timelimit"
							w.timelimit = Int(node.Children.Get(b).Value)
						Case "assignscript"
							w.assignScript = New Script()
							For Local c:Int = 0 To node.Children.Get(b).Children.Size-1
								If node.Children.Get(b).Children.Get(c).Name = "node"
									w.assignScript.nodes.AddLast(New ScriptNode(node.Children.Get(b).Children.Get(c).Value))
								End If
							Next
						Case "completescript"
							w.completeScript = New Script()
							For Local c:Int = 0 To node.Children.Get(b).Children.Size-1
								If node.Children.Get(b).Children.Get(c).Name = "node"
									w.completeScript.nodes.AddLast(New ScriptNode(node.Children.Get(b).Children.Get(c).Value))
								End If
							Next
					End Select
				Next
				TASKS.AddLast(w)
			Next		
		End Method
		Method defineDefaultPlayer:Void()
			DEFAULT_PLAYER_ATTRIBUTES = New PlayerAttributes()
			DEFAULT_PLAYER_ATTRIBUTES.speedmod = 1
			DEFAULT_PLAYER_ATTRIBUTES.armor = 1
			DEFAULT_PLAYER_ATTRIBUTES.enemySpeedMod = 1
			DEFAULT_PLAYER_ATTRIBUTES.damageMod = 1
			DEFAULT_PLAYER_ATTRIBUTES.flashLight = False
		End Method
End

Class TitleScreen Extends Screen
	Field mainmenu:SimpleMenu
	Method New()
		name = "Title"
		mainmenu = New SimpleMenu("menuhover", "menuclick", 0, 0, 5, True)
		mainmenu.AddButton("gui/newgame_std.png","gui/newgame_hover.png","newgame")
		mainmenu.AddButton("gui/loadgame_std.png","gui/loadgame_hover.png","resume")
		#If TARGET="android" Or TARGET="ios" Or TARGET="xna" Or TARGET="glfw"
			mainmenu.AddButton("gui/quit_std.png","gui/quit_hover.png","quit")
		#End
		mainmenu.Centre()
	End
	
	Method Start:Void()
		game.screenFade.Start(50, False)
	End
	
	Method Render:Void()
		Cls
		game.images.Find("logo").Draw(SCREEN_WIDTH2,SCREEN_HEIGHT2-50)
		mainmenu.Draw()
		drawCursor()
	End
	
	Method Update:Void()
		updateCursor()
		mainmenu.Update()
		If mainmenu.Clicked("newgame")
			gameScreen.newGame()
			game.screenFade.Start(50, True, True, True)
			game.nextScreen = gameScreen
		End If
		If mainmenu.Clicked("resume") And LoadState() <> ""
			'gameScreen.loadGame()
			gameScreen.newGame()
			game.screenFade.Start(50, True, True, True)
			game.nextScreen = gameScreen
		End If
		#If TARGET="android" Or TARGET="ios" Or TARGET="xna" Or TARGET="glfw"
		    If mainmenu.Clicked("quit")
				ExitApp
	        End If
		#End
	End Method
End
Class GameScreen Extends Screen
		Field gameState:GameState
        Method New()
                name = "Game"
        End       
        Method Start:Void()
			FlushKeys()
			gameState.startHook()
			game.screenFade.Start(50, False)
        End
        Method Render:Void()
            Cls
			gameState.renderHook()
			drawCursor()
        End
        
        Method Update:Void()
			updateCursor()
			If game.inputCache.keyDown[KEY_P]
				'saveGame()
				game.inputCache.keyDown[KEY_P] = False
			End If
            If game.inputCache.keyHit[KEY_ESCAPE] And Not game.screenFade.active
					pauseScreen.setGameState(gameState)
					game.currentScreen = pauseScreen
					game.inputCache.keyHit[KEY_ESCAPE]= False
            End
			gameState.updateHook()
        End
		Method newGame:Void()
			gameState = New GameState()
			gameState.newGame()
		End Method
		#rem
		To implement
		Method saveGame:Void()
			unique_int=0
			If gameState.unid<>0
				reset_ids(gameState)
			End If
			serial_objects=New IntMap<Object>
			Local save_node:=object_to_node(gameState,Null)
			SaveState (save_node.ToString())		
		End Method
		Method loadGame:Void()
			Local the_state:String=LoadState()
			Local load_node:=LoadConfig(the_state)
			serial_objects=New IntMap<Object>
			For Local n:ConfigNode=Eachin load_node.GetChildren()
				gameState = GameState(node_to_object(n,""))
			Next		
		End Method
		#end
End

Class DeathScreen Extends Screen
		Field str$
        Method New()
                name = "Death"
        End
        
        Method Start:Void()
                game.screenFade.Start(50, False)	
        End
        Method Render:Void()
                Cls
				DrawText "YOU DIED!! :( [ESC] TO GO TO MAIN MENU",SCREEN_WIDTH2,SCREEN_HEIGHT2,0.5,0.5
        End
        
        Method Update:Void()
                If game.inputCache.keyDown[KEY_ESCAPE]
                        game.screenFade.Start(50, True)
                        game.nextScreen = titleScreen
                End
        End
End
Class PauseScreen Extends Screen
	Field pausemenu:SimpleMenu
	Field gs:GameState
	Method New()
		name="Pause"
		name = "Title"
		pausemenu = New SimpleMenu("menuhover", "menuclick", 0, 0, 5, True)
		pausemenu.AddButton("gui/newgame_std.png","gui/newgame_hover.png","resumegame")
		pausemenu.AddButton("gui/loadgame_std.png","gui/loadgame_hover.png","exit")
		pausemenu.Centre()
	End Method
	Method setGameState:Void(_gs:GameState)
		gs = _gs
	End Method
    Method Start:Void()
            game.screenFade.Start(50, False)	
    End
    Method Render:Void()
        Cls
		gs.renderHook()'render the game
		'render a faded rectangle
		SetAlpha 0.7
		SetColor 0,0,0
		DrawRect 0,0,SCREEN_WIDTH,SCREEN_HEIGHT
		SetColor 255,255,255
		SetAlpha 1
		'render the menu
		pausemenu.Draw()
		'render the info above
		If gs.taskNumber <> -1
			Local completedstr:String
			If gs.currentTask.completed
				completedstr = "Yes. Return to Brad!"
			Else
				completedstr = "No"
			End If
			normalFont.DrawText("Current Task",0,0)
			normalFont.DrawText(gs.currentTask.type.name,20,15)
			normalFont.DrawText("Completed?: "+completedstr,20,30)
		End If
		drawCursor()
    End
        
    Method Update:Void()
		updateCursor()
		pausemenu.Update()
		If pausemenu.Clicked("resumegame") Or game.inputCache.keyHit[KEY_ESCAPE]
            game.currentScreen = gameScreen
			game.inputCache.keyHit[KEY_ESCAPE] = False
			FlushKeys()
		End If
		If pausemenu.Clicked("exit")
	        game.screenFade.Start(50, True)
	        game.nextScreen = titleScreen
		End If
   	End
End Class