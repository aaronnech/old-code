Import MyGame
#If TARGET="android" Or TARGET = "ios"
	Class VirtualGamepad
		
	        Field image:GameImage
			Field lx:Float,ly:Float
			Field rx:Float,ry:Float
			Field ux:Float,uy:Float
			Field dx:Float,dy:Float
			Field box:Float
			Field x:Float,y:Float
		Method New(gi:GameImage,_x:Float,_y:Float)
			image = gi
			box = (image.w/3)
			x = _x
			y = _y
			ux = x+box
			uy = y
			rx = x+(2*box)
			ry = y+box
			dx = x+box
			dy = y+(2*box)
			lx = x
			ly = y+box
		End Method
		
		Method Check:Int()'0 none 1 left 2 up 3 right 4 down
			Local tx:Float
			Local ty:Float
				If Not game.inputCache.mouseDown[0] Return 0
				tx = game.mouseX''game.inputCache.touchX[0]/SCREENX_RATIO
				ty = game.mouseY''game.inputCache.touchY[0]/SCREENY_RATIO
	
				' If not in VirtualPad Area Return
				If Not PointInRect(tx, ty, x, y, image.w, image.h)
					Return 0
				End
	
	' 
				If PointInRect (tx, ty, ux, uy, box, box)
					' UP
					Return 2
				Elseif PointInRect (tx, ty, dx, dy, box, box)
					' DOWN
					Return 4
				Elseif PointInRect (tx, ty, lx, ly, box, box)
					' LEFT
					Return 1
				Elseif PointInRect (tx, ty, rx, ry, box, box)
					' RIGHT
					Return 3
				End
	
		End
		
		Method draw:Void()
			SetAlpha 0.3
			image.Draw(x, y)
			SetAlpha 1
		End
		
	End Class
#End
Class EnemyDefinition
	Field name:String
	Field image:GameImage
	Field prerot:Float
	Field attackRange:Int
	Field attackDelay:Int
	Field weapon:Weapon
	Field sNeutralFrame:Int
	Field eNeutralFrame:Int
	Field sAttackFrame:Int
	Field eAttackFrame:Int
	Field strikeCharge:Float
	Field health:Int
	Field speed:Float
	Field attentionRange:Float
	Field w:Int
	Field h:Int
	Field frameCount:Int
End Class
Class PickupDefinition
	Field imageTileNumber:Int
	Field playerHealth:Int
	Field pModifier:PlayerModifier
	Field weapon:Weapon
	Field ammo:Int
	Field name:String
End Class
Class TaskDefinition
	Field name:String
	Field eTypeName:String
	Field quantity:Int
	Field timelimit:Int
	Field assignScript:Script
	Field completeScript:Script
End Class
Class Notification Extends Sprite
	Global notificationList:List<Notification> = New List<Notification>
	Field decay:Int
	Method New(img:GameImage)
		Super.New(img,0,SCREEN_HEIGHT)
		dx = 0
		dy = -.5
		decay = 100
		notificationList.AddLast(Self)
		game.sounds.Find("notify").Play()
	End Method
	Method update()
		decay -= 1
		alpha = (Float(decay)/100)
		If decay < 1 notificationList.Remove(Self)
		Move()
	End Method
End Class
Class DialogBox
	Field active:Bool
	Field script:Script
	Field node:Int
	Field readingout:Bool
	Field readouttimer:Int
	Field currentBody:String
	Field timeper:Int
	Field drawt:String
	Field reading:Readable
	Field brad:Brad
	Field typingsound:GameSound
	Method New(t:Int)
		active = False
		timeper = t
		readingout = False
		node = 0
		typingsound = game.sounds.Find("typing")
		typingsound.loop = 1
	End Method
	Method setScript:Void(s:Script)
		script = s
	End Method
	Method activate:Void(r:Readable = Null)
		If script <> Null
			reading = r
			readingout = True
			typingsound.Play()
			active = True
			brad = Null
			readouttimer = 0
			currentBody = script.nodes.Get(0).body
		End If
	End Method
	Method activate:Void()
		If script <> Null
			readingout = True
			reading = Null
			brad = Null
			typingsound.Play()
			active = True
			readouttimer = 0
			node = 0
			currentBody = script.nodes.Get(0).body
		End If
	End Method
	Method activate:Void(b:Brad)
		If script <> Null
			typingsound.Play()
			readingout = True
			reading = Null
			active = True
			readouttimer = 0
			node = 0
			brad = b
			currentBody = script.nodes.Get(0).body
		End If
	End Method
	Method update:Void()
		If active
			If readingout
				#If TARGET="android" Or TARGET="ios"
					If game.inputCache.mouseHit[0]
						readingout = False
						typingsound.Stop()
						game.inputCache.mouseHit[0] = False
					End If
				#End
				#If TARGET="html5" Or TARGET="flash" Or TARGET = "glfw" Or TARGET="xna"
					If game.inputCache.mouseHit[0]
						game.inputCache.mouseHit[0] = False
						game.inputCache.mouseReleased[0]=False
						game.inputCache.mouseDown[0]=False
						readingout = False
						typingsound.Stop()
					End If
				#End
				Local n:Int = Floor(readouttimer/timeper)
				If n < currentBody.Length
					drawt = currentBody[..n]
					readouttimer += 1
				Else
					readingout = False
					typingsound.Stop()
				End If
			Else
				drawt = currentBody
				#If TARGET="ios" Or TARGET = "android"
					If game.inputCache.mouseHit[0]
						game.inputCache.mouseHit[0] = False
						nextNode()
					End If
				#End
				#If TARGET="html5" Or TARGET="flash" Or TARGET = "glfw" Or TARGET = "xna"
					If game.inputCache.mouseHit[0]
						game.inputCache.mouseHit[0] = False
						game.inputCache.mouseReleased[0]=False
						game.inputCache.mouseDown[0]=False
						nextNode()
					End If
				#End
			End If
		End If
	End Method
	Method nextNode:Void()
		node += 1
		If node > script.nodes.Size-1
			If brad <> Null brad.closeHook()
			endDialog()
		Else
			typingsound.Play()
			readingout = True
			readouttimer = 0
			currentBody = script.nodes.Get(node).body			
		End If
	End Method
	Method endDialog()
		active = False
		typingsound.Stop()
		readouttimer = 0
		reading = Null
		brad = Null
		active = False
		readingout = False
		currentBody = ""
		drawt = ""
		node = 0
		FlushKeys()
	End Method
	Method draw:Void()
		If active
			game.images.Find("dialogbox").Draw(0,SCREEN_HEIGHT2+43)
			SimpleTextBox.Draw(drawt,5,SCREEN_HEIGHT2+48,SCREEN_WIDTH-10)
		End If
	End Method
End Class
Class ReadableDefinition
	Field img:GameImage
	Field script:Script
	Field name:String
	Field w:Int
	Field h:Int
	Field frameCount:Int
	Field readDist:Float
End Class
Class Readable Extends Sprite
	Field type:ReadableDefinition
	Field newread:Bool
	Method New(def:ReadableDefinition,_x:Float,_y:Float)
		Super.New(def.img,_x,_y)
		type = def
		newread = True
	End Method
	Method update:Void()
		If cam.inView(x,y) And Not dialog.active
			If cDist(x,y) <= type.readDist
				If newread
					dialog.setScript(type.script)
					dialog.activate(Self)
					newread = False
				End If
			Else
				newread = True
			End If
		End If
	End Method
End Class
Class Task
	Field timeRemaining:Int
	Field active:Bool
	Field completed:Bool
	Field quantityRemaining:Int
	Field type:TaskDefinition
	Method setTask(def:TaskDefinition)
		type = def
		timeRemaining = type.timelimit
		quantityRemaining = type.quantity
		completed = False
	End Method
	Method checkCompleted:Void(e:TEnemy)
		If Not completed And gameScreen.gameState.taskNumber <> -1
			If e.type.name = type.eTypeName
				quantityRemaining -= 1
				If quantityRemaining <= 0 
					completed = True
					New Notification(game.images.Find("taskcomplete"))
				End If
			End If
		End If
	End Method
End Class
Class TileSprite Extends Sprite
	Field tile:Int
	
	Method New(img:GameImage,_x:Float,_y:Float)
		Super.New(img,_x,_y)
		tile = 0
		If image.midhandled
			Local srcX:Int = image.tileMargin + (image.tileWidth + image.tileSpacing) * (tile Mod image.tileCountX)
			Local srcY:Int = image.tileMargin + (image.tileHeight + image.tileSpacing) * (tile / image.tileCountX)
			Local w2:Int = image.tileWidth/2
			Local h2:Int = image.tileHeight/2
			image.SetHandle(srcX+w2,srcY+h2)
		End If
	End Method
	Method DrawTile:Void(offsetx:Float = 0, offsety:Float = 0)
		If x - offsetx + image.w < 0 Or x - offsetx - image.w >= SCREEN_WIDTH Or y - offsety + image.h < 0 Or y - offsety - image.h >= SCREEN_HEIGHT Then Return
		If Self.alpha > 1 Then Self.alpha = 1
		If Self.alpha < 0 Then Self.alpha = 0
		SetAlpha Self.alpha
		SetColor red, green, blue
		image.DrawTile(x - offsetx, y - offsety,tile, rotation, scaleX, scaleY)
		SetColor 255, 255, 255
		SetAlpha 1		
	End Method
End Class
Class Brad Extends Sprite
	Field script:Script
	Field newread:Bool
	Method New(_x:Float,_y:Float)
		Super.New(game.images.Find("player"),_x,_y)
		newread = True
	End Method
	Method update:Void()
		If cam.inView(x,y) And Not dialog.active
			If cDist(x,y) <= 16
				If newread
					If gameScreen.gameState.taskNumber = -1 assignTask()
					If gameScreen.gameState.currentTask.completed
						setCompletionScript()
						assignTask()
						script.nodes.AddAll(gameScreen.gameState.currentTask.type.assignScript.nodes)
					Else
						setAssignScript()
					End If
					dialog.setScript(script)
					dialog.activate(Self)
					newread = False
				End If
			Else
				newread = True
			End If
		End If
	End Method
	Method closeHook:Void()
		New Notification(game.images.Find("newtask"))
	End Method
	Method setCompletionScript:Void()
		script = gameScreen.gameState.currentTask.type.completeScript
	End Method
	Method setAssignScript:Void()
		script = gameScreen.gameState.currentTask.type.assignScript
	End Method
	Method assignTask:Void()
		If gameScreen.gameState.taskNumber+1 <= TASKS.Size-1 gameScreen.gameState.taskNumber += 1
		gameScreen.gameState.currentTask.setTask(TASKS.Get(gameScreen.gameState.taskNumber))
	End Method
End Class
Class Script
	Field nodes:ArrayList<ScriptNode>
	Method New()
		nodes = New ArrayList<ScriptNode>
	End Method
End Class
Class ScriptNode
	Field body:String
	Method New(B:String)
		body = B
	End Method
End Class
Class PlayerModifier
	Field name:String
	Field attributes:PlayerAttributes
	Field decaytime:Int
	Field hpdecaytime:Int
	Field decay:Int
	Field usetime:Bool
	Field hpdecay:Int
	Field usehp:Bool
	Method New()
		attributes = New PlayerAttributes()
	End Method
	Method update(p:TPlayer)
		If usetime decay -= 1
		If (decay < 1 And usetime) Or (hpdecay < 1 And usehp)
			p.pm.Remove(Self)
			p.attributes = PlayerAttributes.stackMods(p.pm)
		End If
	End Method
End Class
Class PlayerAttributes
	Field speedmod:Float
	Field armor:Float
	Field damageMod:Float
	Field enemySpeedMod:Float
	Field flashLight:Bool
	Function stackMods:PlayerAttributes(l:ArrayList<PlayerModifier>)
		If l.Size > 0
			Local ret:PlayerAttributes = New PlayerAttributes()
			Local first:PlayerModifier = l.Get(0)
			Local _speedmod:Float = first.attributes.speedmod
			Local _armor:Float = first.attributes.armor
			Local _damageMod:Float = first.attributes.damageMod
			Local _enemySpeedMod:Float = first.attributes.enemySpeedMod
			Local _flashLight:Bool = first.attributes.flashLight
			For Local i:Int = 1 Until l.Size
				Local c:PlayerModifier = l.Get(i)
				If Not _flashLight And c.attributes.flashLight _flashLight = True
				_speedmod *= c.attributes.speedmod
				_armor *= c.attributes.armor
				_damageMod *= c.attributes.damageMod
				_enemySpeedMod *= c.attributes.enemySpeedMod
			Next
			ret.speedmod = _speedmod
			ret.armor = _armor
			ret.damageMod = _damageMod
			ret.enemySpeedMod = _enemySpeedMod
			ret.flashLight = _flashLight
			Return ret
		Else
			Return DEFAULT_PLAYER_ATTRIBUTES
		End If
	End Function
End Class
Class LevelNode'all the current information of a level node(map)
	Field fileName:String
	Field targets:StringMap<LevelNode>
	Field tilemap:MyTileMap
	Field collisionData:TileMapData
	Field enemies:List<TEnemy>
	Field pickups:List<Pickup>
	Field teleports:List<Teleport>
	Field readables:List<Readable>
	Field brad:Brad
	Field dark:Bool
	Field fixedcam:Bool
	
	Method New(_fileName:String)
		fileName = _fileName
		teleports = New List<Teleport>
		enemies = New List<TEnemy>
		pickups = New List<Pickup>
		targets = New StringMap<LevelNode>
		readables = New List<Readable>
		dark = False
		fixedcam = False
	End Method
	Method clearAssets()
		enemies.Clear()
		pickups.Clear()
		targets.Clear()
		readables.Clear()	
	End Method
	Method loadMap()
		'load map data
       	Local reader:MyTiledTileMapReader = New MyTiledTileMapReader
		'Print fileName
       	Local tm:TileMap = reader.LoadMap(fileName)
		tilemap = MyTileMap(tm)
		collisionData = tilemap.getCollisionLayer()		
		Local objs:ArrayList<TileMapObject> = tilemap.GetAllObjects()
		If tilemap.Properties.Has("dark") dark=True fixedcam=True
		If tilemap.Properties.Has("fixedcam") fixedcam=True
		'Load Assets
		Local o:TileMapObject
		Local props:TileMapProperties
		Local id:String
		Local target:String
		Local sx:Float
		Local sy:Float
		Local node:LevelNode
		For Local i:Int = 0 Until objs.Size
			'define target maps/teleports
			If(objs.Get(i).objectType.ToLower() = "teleport")
				o = objs.Get(i)
				props = o.Properties
				If props.Has("id") And props.Has("spawn_x") And props.Has("spawn_y") And props.Has("targetName")
					id = props.Get("id").GetString()
					target = props.Get("targetName").GetString()
					sx = props.Get("spawn_x").GetFloat()
					sy = props.Get("spawn_y").GetFloat()
					teleports.AddLast(New Teleport(o.x,o.y,o.width,o.height,sx,sy,id,target,o.name))
					node = New LevelNode("maps/"+o.name)
					targets.Add(node.fileName,node)
				End If
			End If
			'TODO: spawn brad
			If(objs.Get(i).objectType.ToLower() = "brad")
				brad = New Brad(objs.Get(i).x,objs.Get(i).y)
			End If
			'define and spawn enemies
			If(objs.Get(i).objectType.ToLower() = "enemy")
				If ENEMIES.Contains(objs.Get(i).name) 
					enemies.AddLast(New TEnemy(ENEMIES.Get(objs.Get(i).name),objs.Get(i).x,objs.Get(i).y,tilemap.GetBounds()))
				End If
			End If
			'define and spawn signs/readable stuff
			If(objs.Get(i).objectType.ToLower() = "readable")
				If READABLES.Contains(objs.Get(i).name) 
					readables.AddLast(New Readable(READABLES.Get(objs.Get(i).name),objs.Get(i).x,objs.Get(i).y))
				End If
			End If			
			
			'define and spawn pickups
			If(objs.Get(i).objectType.ToLower() = "pickup")
				If PICKUPS.Contains(objs.Get(i).name) 
					pickups.AddLast(New Pickup(PICKUPS.Get(objs.Get(i).name),objs.Get(i).x,objs.Get(i).y))
				End If
			End If
		Next		
		
	End Method
	
	Method respawnEnemies()
		enemies.Clear()'delete all old enemies
		Local objs:ArrayList<TileMapObject> = tilemap.GetAllObjects()
		For Local i:Int = 0 Until objs.Size
			'define and spawn enemies
			If(objs.Get(i).objectType.ToLower() = "enemy")
				If ENEMIES.Contains(objs.Get(i).name) 
					enemies.AddLast(New TEnemy(ENEMIES.Get(objs.Get(i).name),objs.Get(i).x,objs.Get(i).y,tilemap.GetBounds()))
				End If
			End If		
		Next
	End Method
	Method respawnPickups()
		pickups.Clear()
		Local objs:ArrayList<TileMapObject> = tilemap.GetAllObjects()
		For Local i:Int = 0 Until objs.Size
			'spawn pickups from map data
			If(objs.Get(i).objectType.ToLower() = "pickup")
				If PICKUPS.Contains(objs.Get(i).name) 
					pickups.AddLast(New Pickup(PICKUPS.Get(objs.Get(i).name),objs.Get(i).x,objs.Get(i).y))
				End If
			End If	
		Next		
	End Method
End Class
Class Mark Extends Sprite
	Global markList:List<Mark> = New List<Mark>
	Field time:Int
	Method New(img:GameImage,x,y)
		Super.New(img,x,y)
		time = 120
		rotation = Rnd(0,360)
		markList.AddLast(Self)
	End Method
	Method update()
		time -= 1
		alpha = Float(time)/120.0
		If time < 1 markList.Remove(Self)
	End Method
End Class
Class Teleport
	Field x:Float, y:Float
	Field w:Float,h:Float
	Field sx:Float,sy:Float
	Field name:String
	Field targetName:String
	Field fileName:String
	Method New(_x:Float,_y:Float,_w:Float,_h:Float,_sx:Float,_sy:Float,_name:String,_target:String,file:String)
		x = _x
		y = _y
		w = _w
		h = _h
		sx = _sx
		sy = _sy
		name = _name
		targetName = _target
		fileName = file
	End Method
End Class
Class Pickup Extends TileSprite
	Field type:PickupDefinition
	Method New(_type:PickupDefinition,_x:Float,_y:Float)
		Super.New(game.images.Find("pickups"),_x,_y)
		type = _type
		tile = type.imageTileNumber
	End Method
	Method update(p:TPlayer)
		rotation += 2*dt.delta
		If rotation > 360 rotation = rotation-360
		If RectsOverlap(mapx,mapy,PLAYER_COLL_W,PLAYER_COLL_H,x,y,16,16) Use(p)
	End Method
	Method Use(p:TPlayer)
		p.health += type.playerHealth
		If p.health > 175 p.health = 175
		If type.weapon <> Null'has a weapon
			Local playerHas:Bool = False
			Local wnumber:Int
			For Local i:Int = 0 To p.weaponinventory.Size-1'check weapon inventory
				If p.weaponinventory.Get(i).name = type.weapon.name playerHas = True wnumber = i Exit
			Next
			If Not playerHas
				p.weaponinventory.Add(New Weapon(type.weapon))
			Else
				If Not p.weaponinventory.Get(wnumber).infinite p.weaponinventory.Get(wnumber).ammo += type.ammo
			End If
		End If
		If type.pModifier <> Null 'has a player modifier
			p.useModifier(type.pModifier)
		End If
		gameScreen.gameState.lvlNode.pickups.Remove(Self)
		Local s:GameSound = game.sounds.Find("pickup")
		s.Play()
	End Method
End Class
Class Weapon
	Field name:String
	Field type:String
	Field image:GameImage
	Field expImage:GameImage
	Field damage:Int
	Field expRadius:Float
	Field distance:Float 
	Field expDelay:Float
	Field animN:Int
	Field maxAmmo:Int
	Field ammo:Int
	Field infinite:Bool
	Field inventoryTile:Int
	Field sound:GameSound
	Field rapidFireRate:Int
	Field clipSize:Int
	Field clip:Int
	Field empty:Bool
	Field reloadTime:Int
	
	Method New()
	End Method
	Method New(w:Weapon)'copy
		name = w.name
		type = w.type
		image = w.image
		expImage = w.expImage
		damage = w.damage
		expRadius = w.expRadius
		distance = w.distance
		expDelay = w.expDelay
		animN = w.animN
		ammo = w.maxAmmo
		maxAmmo = w.maxAmmo
		rapidFireRate = w.rapidFireRate
		reloadTime = w.reloadTime
		clip = 0
		clipSize = w.clipSize
		If clipSize <> -1 clipReload()
		infinite = w.infinite
		inventoryTile = w.inventoryTile
		sound = w.sound
		empty = False
	End Method
	Method Use(p:TPlayer)
		'p.SetFrame(animN-1,animN,100,True,False)
		If empty And Not infinite empty = True Return
		Select type
			Case "melee"
				'find the first enemy within melee range and within a radius
				For Local e:TEnemy = Eachin gameScreen.gameState.lvlNode.enemies
					Local dist:Float = cDist(e.x,e.y)
					If dist < 30'close enough
						Local etopangle:Float = -(PointsToAngle(mapx,mapy,e.x,e.y)-90)
						
						If betweenAngle(etopangle,p.rotation-45,p.rotation+45)'within the angle range(in front of player)
							e.health -= damage*p.attributes.damageMod
							'Print "etop "+etopangle
							'Print (p.rot+45 Mod 360)
							'Print (p.rot-45+360 Mod 360)
							If e.health > 0
									e.fallBack(.5*Sin(etopangle),.5*Cos(etopangle))
							End If
							'Print e.health
							Exit'exit the loop so we don't hit any more						
						End If
					End If
				Next
			Case "projectile"
				New TProjectile(True,mapx,mapy,image,expImage,p.rotation+180,damage*p.attributes.damageMod, p.bounds)
			Case "bomb"
				New TBomb(True,mapx,mapy,expImage, image,expRadius, distance*p.strikeCharge, expDelay, p.rotation+180 , damage*p.attributes.damageMod, p.bounds)
		End Select

		If Not infinite
			If clipSize = -1'not a clip weapon
				ammo -=1
				If ammo < 1 ammo = 0 empty = True
			Else'a clip weapon
				clip -= 1
				If clip < 1 clip = 0 empty = True
			End If
			If ammo < 1 And clip < 1 'if the ammo of the gun runs out
				ammo = 0
				clip = 0
				empty = True
				'p.weaponinventory.Remove(Self)
				'p.weapon -= 1
				'If p.weapon < 0 p.weapon = p.weaponinventory.Size-1
			End If
		End If
		If sound <> Null sound.Play()
	End Method
	Method eUse(p:TPlayer,e:TEnemy)
		Select type
			Case "melee"
				p.Hit(damage*p.attributes.armor)
			Case "projectile"
				New TProjectile(False,e.x,e.y,image,expImage,e.rotation+e.type.prerot,damage*p.attributes.armor, p.bounds)
			Case "bomb"
				New TBomb(False,e.x,e.y,expImage, e.type.weapon.image,expRadius, distance*e.type.strikeCharge, expDelay, e.rotation+e.type.prerot , damage*p.attributes.armor, p.bounds)
		End Select
	End Method
	Method clipReload:Void()
		If clipSize = -1 Return
		Local diff:Int = clipSize-clip
		Local takeamt:Int
		If ammo >= diff
			ammo -= diff
			takeamt = diff
		Else
			takeamt = ammo
			ammo = 0
		End If
		clip += takeamt
		If clip > 0'successful reload
			empty = False
		End If
	End Method
End Class
'defines the render view
Class Camera
	Field x:Float, y:Float
	Method New()
		x = SCREEN_WIDTH2
		y = SCREEN_WIDTH2
	End Method
	Method inView:Bool(_x:Float,_y:Float)
		Return (Abs(_x-x) <= SCREEN_WIDTH2+100 And Abs(_y-y) <= SCREEN_HEIGHT2+100)
	End Method
	Method pSync()
		'grab the tilemap bounds
		Local b:TileMapRect = gameScreen.gameState.lvlNode.tilemap.GetBounds()
		If Not gameScreen.gameState.lvlNode.fixedcam
			If mapx + SCREEN_WIDTH2 <= b.w And mapx >= SCREEN_WIDTH2
				x = mapx
			Else
				If mapx + SCREEN_WIDTH2 > b.w
					x = b.w - SCREEN_WIDTH2
				Else
					x = SCREEN_WIDTH2
				End If
			End If
			If mapy + SCREEN_HEIGHT2 <= b.h And mapy >= SCREEN_HEIGHT2
				y = mapy
			Else
				If mapy + SCREEN_HEIGHT2 > b.h
					y = b.h - SCREEN_HEIGHT2
				Else
					y = SCREEN_HEIGHT2
				End If
			End If
		Else
			x = mapx
			y = mapy
		End If
	End Method
	Method eSync(e:TEnemy)
		x = e.x
		y = e.y
	End Method
End Class
Class TPlayer Extends Sprite
	Field img:Image
	Field spawn:TileMapObject
	Field bounds:TileMapRect
	Field isMoving:Bool
	Field weapon:Int
	Field strikeCharge:Float
	Field health:Int
	Field godMode:Bool
	Field rot:Int
	Field weaponinventory:ArrayList<Weapon>
	Field reloadingWeapon:Int
	Field hasMoved:Bool
	Field showHit:Bool
	Field hitTimer:Int
	Field pm:ArrayList<PlayerModifier>
	Field attributes:PlayerAttributes
	Field rapidFireTimer:Int
	Field reloading:Bool
	Field reloadTimer:Int
	Field dialogtrigger:Bool
	#If TARGET="android" Or TARGET="ios"
		Field gamePad:VirtualGamepad
	#End
	Method New(gi:GameImage)
		Super.New(gi, mapx, mapy)
		weaponinventory = New ArrayList<Weapon>
		pm = New ArrayList<PlayerModifier>
		attributes = DEFAULT_PLAYER_ATTRIBUTES
		speed = attributes.speedmod*1.2
		rotation = 0
		frame = 0
		weapon = 0
		strikeCharge = 0
		godMode = False
		health = 175
		hasMoved = False
		dialogtrigger = False
		hitBoxWidth = PLAYER_COLL_W
		hitBoxHeight = PLAYER_COLL_H
		#If TARGET="android" Or TARGET="ios"
			gamePad = New VirtualGamepad(game.images.Find("dpad"),10,SCREEN_HEIGHT-50)
		#End
	End Method
	Method update:Void(tiles:TileMapData)
		speed = attributes.speedmod*1.2
		isMoving = False
		Local oldx:Float = mapx
		Local oldy:Float = mapy
		rotation = -(PointsToAngle(x-(cam.x-SCREEN_WIDTH2) ,y-(cam.y-SCREEN_HEIGHT2) ,game.mouseX,game.mouseY)+90)
		rotation += 180
		controls()
		If checkTeleports() Return
		If pm.Size > 0 'pm is active
			For Local i:Int = 0 Until pm.Size
				pm.Get(i).update(Self)
			End If
		End If
		If(tiles.Get(toTileX(mapx-PLAYER_COLL_W/2),toTileY(oldy)) <> 0 Or tiles.Get(toTileX(mapx-PLAYER_COLL_W/2),toTileY(oldy+PLAYER_COLL_H)) <> 0 Or tiles.Get(toTileX(mapx+PLAYER_COLL_W/2),toTileY(oldy)) <> 0 Or tiles.Get(toTileX(mapx+PLAYER_COLL_W/2),toTileY(oldy+PLAYER_COLL_H)) <> 0) Or objCollision()'we moved inside something!
			mapx = oldx
		End If
		If(tiles.Get(toTileX(oldx-PLAYER_COLL_W/2),toTileY(mapy)) <> 0 Or tiles.Get(toTileX(oldx-PLAYER_COLL_W/2),toTileY(mapy+PLAYER_COLL_H)) <> 0 Or tiles.Get(toTileX(oldx+PLAYER_COLL_W/2),toTileY(mapy)) <> 0 Or tiles.Get(toTileX(oldx+PLAYER_COLL_W/2),toTileY(mapy+PLAYER_COLL_H)) <> 0) Or objCollision()'we moved inside something!
			mapy = oldy
		End If
		If showHit
			hitTimer -= 1
			If hitTimer <= 0
				showHit = False
			End If
		End If
		If reloading
			reloadTimer -= 1
			If reloadTimer < 1
				reloading = False
				weaponinventory.Get(reloadingWeapon).clipReload()
				reloadTimer = 0
			End If
		End If
		x = mapx
		y = mapy
	End Method
	Method useModifier:Void(m:PlayerModifier)
		If m.usehp m.hpdecay = m.hpdecaytime
		If m.usetime m.decay = m.decaytime
		pm.AddLast(m)
		attributes = PlayerAttributes.stackMods(pm)
	End Method
	Method controls:Void()
		#If TARGET="html5" Or TARGET="flash" Or TARGET = "glfw" Or TARGET="xna"
			If game.inputCache.keyDown[KEY_A]
				mapx-=speed*dt.delta
				If mapx < PLAYER_COLL_W/2 mapx = PLAYER_COLL_W/2
				isMoving = True
				hasMoved = True
			End If
			If game.inputCache.keyDown[KEY_D]
				mapx+=speed*dt.delta
				If mapx > bounds.w-PLAYER_COLL_W/2 mapx = bounds.w-PLAYER_COLL_W/2
				isMoving = True
				rot = 90
				hasMoved = True
			End If
			If game.inputCache.keyDown[KEY_W]
				mapy-=speed*dt.delta
				If mapy < 0 mapy = 0
				rot = 180
				isMoving = True
				hasMoved = True
			End If
			If game.inputCache.keyDown[KEY_S]
				mapy+=speed*dt.delta
				If mapy > bounds.h-PLAYER_COLL_H mapy=bounds.h-PLAYER_COLL_H
				rot = 0
				isMoving = True
				hasMoved = True
			End If
			If game.inputCache.mouseDown[0] And Not dialog.active And weaponinventory.Size > 0
				If weaponinventory.Get(weapon).rapidFireRate <> -1
					rapidFireTimer += 1
					If rapidFireTimer > weaponinventory.Get(weapon).rapidFireRate
						Attack()
						rapidFireTimer = 0
					End If
				Else
					strikeCharge += .005
					If strikeCharge > 1 strikeCharge = 1
				End If
			Else
				rapidFireTimer = 0
			End If
			If game.inputCache.mouseReleased[0] And Not dialog.active And weaponinventory.Size > 0
			 	If weaponinventory.Get(weapon).rapidFireRate = -1
					Attack()
					game.inputCache.mouseReleased[0]=False
					strikeCharge=0
				End If
			End If
			If game.inputCache.keyHit[KEY_Q] And weaponinventory.Size > 0
				weapon -= 1
				If weapon < 0 weapon = weaponinventory.Size-1
				game.inputCache.keyHit[KEY_Q] = False
			End If
			If game.inputCache.keyHit[KEY_E] And weaponinventory.Size > 0
				weapon += 1
				If weapon > weaponinventory.Size-1 weapon = 0
				game.inputCache.keyHit[KEY_E] = False
			End If
			If game.inputCache.keyHit[KEY_R] And Not reloading And weaponinventory.Size > 0
				If weaponinventory.Get(weapon).clipSize <> -1
					reloadingWeapon = weapon
					If weaponinventory.Get(weapon).reloadTime > 0
						reloadTimer = weaponinventory.Get(weapon).reloadTime
						reloading = True
					Else
						reloading = True
						reloadTimer = 0
					End If
				End If
				game.inputCache.keyHit[KEY_R] = False
			End If
			If game.inputCache.keyHit[KEY_G]
				godMode = Not godMode
				game.inputCache.keyHit[KEY_G] = False
			End If
		#End
		#If TARGET="android" Or TARGET="ios"
			'touch screen dpad
			Local c:Int = gamePad.Check()
			Select c
				Case 1
					mapx-=speed*dt.delta
					If mapx < -8 mapx = -8
					isMoving = True
					hasMoved = True
				Case 3
					mapx+=speed*dt.delta
					If mapx > bounds.w-24 mapx = bounds.w-24
					isMoving = True
					hasMoved = True
				Case 2
					mapy-=speed*dt.delta
					If mapy < 8 mapy = 8
					isMoving = True
					hasMoved = True
				Case 4
					mapy+=speed*dt.delta
					If mapy > bounds.h-8 mapy = bounds.h-8
					isMoving = True
					hasMoved = True
			End Select
		#End
	End Method
	Method objCollision:Bool()
		'check readable things
		For Local r:Readable = Eachin gameScreen.gameState.lvlNode.readables
			If RectsOverlap(mapx,mapy,PLAYER_COLL_W,PLAYER_COLL_H,r.x,r.y,r.type.w,r.type.h) Return True
		Next
		
		Return False
	End Method
	Method checkTeleports:Bool()
		For Local t:Teleport = Eachin gameScreen.gameState.lvlNode.teleports
			If RectsOverlap(mapx,mapy,PLAYER_COLL_W,PLAYER_COLL_H,t.x,t.y,t.w,t.h)
				If weaponinventory.Size > 0
					gameScreen.gameState.teleportTo(t)
					Return True
				Else
					If Not dialogtrigger
						Local s:Script = New Script()
						s.nodes.AddLast(New ScriptNode("I should get a weapon first!"))
						dialog.setScript(s)
						dialog.activate()
						dialogtrigger = True
					End If
				End If
			Else
				dialogtrigger = False
			End If
		Next
		Return False
	End Method
	Method Attack()
		If weaponinventory.Size > 0 And Not dialog.active weaponinventory.Get(weapon).Use(Self)
	End Method
	Method Hit(amt:Int)
		If Not godMode
			health -= amt
			showHit = True
			hitTimer = 20
			If pm.Size > 0
				For Local i:Int = 0 Until pm.Size
					If pm.Get(i).usehp pm.Get(i).hpdecay -= amt
				Next
			End If
			game.sounds.Find("hurt").Play()
		End If
		If health < 0 health = 0
	End Method
End Class
Class TEnemy Extends Sprite
	Field bounds:TileMapRect
	Field type:EnemyDefinition
	Field w:Float,h:Float
	Field attackDelayTimer:Int
	Field fallingback:Bool
	Field fx:Float,fy:Float
	Field fallbackTimer:Int
	Field health:Int
	Field attention:Bool
	Method New(definition:EnemyDefinition,_x,_y,b:TileMapRect)
		Super.New(definition.image, _x, _y)
		type=definition
		SetFrame(type.sNeutralFrame,type.eNeutralFrame,100,True,True)
		w=type.image.w
		h=type.image.h	
		health = type.health	
		bounds = b
		speed = type.speed
		attention = False
	End Method
	
	Method update(p:TPlayer,tiles:TileMapData)
		speed=type.speed*p.attributes.enemySpeedMod
		If cDist(x,y) < type.attentionRange Or attention Or type.attentionRange = -1
			attention = True
			Local oldx:Float = x
			Local oldy:Float = y
			Local pxDist:Float = mapx - x
			Local pyDist:Float = mapy - y
			#rem grid movement
			If Abs(pxDist) > Abs(pyDist)'move x
				If pxDist <= 0'left side
					rotation = 90				
				Else'right side
					rotation = 270
				End If
			Else'move y
				If pyDist <=0'below
					rotation = 0			
				Else'above
					rotation = 180
				End If
			End If
			If Abs(pxDist) = Abs(pyDist)
				
			End If
			#end
			rotation = -(PointsToAngle(x,y,mapx,mapy)+90)
			If cDist(x,y) > type.attackRange And Not fallingback MoveForward()
			If fallingback
				If fallbackTimer > 12 fallingback = False
				y += fy*dt.delta
				x += fx*dt.delta
				fallbackTimer += 1
			End If
			rotation += type.prerot
			'seperate x/y collision checking so we have sliding collision
			'check the x movement for collisions
			If (x > bounds.w-(w/2) Or x < 0) Or wallCollisionX(tiles,oldy)
				x = oldx
			End If
			'check the y movement for collisions
			If (y > bounds.h-(h/2) Or y < 0) Or wallCollisionY(tiles,oldx)
				y = oldy
			End If
			If cDist(x,y) <= type.attackRange
				'rotation = -(PointsToAngle(x,y,mapx,mapy)+90) + type.prerot
				If attackDelayTimer = type.attackDelay attack(p)
				If attackDelayTimer > 0
					 attackDelayTimer -= 1
				Else
					attackDelayTimer = type.attackDelay-1
					attack(p)
				End If
			Else
				If attackDelayTimer <> type.attackDelay
					SetFrame(type.sNeutralFrame,type.eNeutralFrame,100,True,True)
				Endif
				attackDelayTimer = type.attackDelay
			End If
		Else
			If fallingback
				If fallbackTimer > 12 fallingback = False
				y += fy*speed*dt.delta
				x += fx*speed*dt.delta
				fallbackTimer += 1
			End If
		End If
		If health <= 0 die()
	End Method
	Method die()
		New Explosion(game.images.Find("blood"), x, y, 20, 150, 2)
		New Mark(game.images.Find("bloodsplatter"),x,y)
		game.sounds.Find("hurt").Play()
		gameScreen.gameState.currentTask.checkCompleted(Self)
		gameScreen.gameState.lvlNode.enemies.Remove(Self)
	End Method
	Method fallBack(_x:Float,_y:Float)
		fx = _x
		fy = _y
		fallingback = True
		fallbackTimer = 0
		attention = True
	End Method
	Method attack(p:TPlayer)
		If type.weapon <> Null type.weapon.eUse(p,Self)
		SetFrame(type.sAttackFrame,type.eAttackFrame,100,True,False)
	End Method
	Method wallCollisionX:Bool(tiles:TileMapData,oldy:Float)
		Return tiles.Get(toTileX(x+(w/2)),toTileY(oldy+(h/2))) <> 0 Or tiles.Get(toTileX(x+(w/2)),toTileY(oldy-(h/2))) <> 0 Or tiles.Get(toTileX(x-(w/2)),toTileY(oldy+(h/2))) <> 0 Or tiles.Get(toTileX(x-(w/2)),toTileY(oldy-(h/2))) <> 0
	End Method
	Method wallCollisionY:Bool(tiles:TileMapData,oldx:Float)
		Return tiles.Get(toTileX(oldx+(w/2)),toTileY(y+(h/2))) <> 0 Or tiles.Get(toTileX(oldx+(w/2)),toTileY(y-(h/2))) <> 0 Or tiles.Get(toTileX(oldx-(w/2)),toTileY(y+(h/2))) <> 0 Or tiles.Get(toTileX(oldx-(w/2)),toTileY(y-(h/2))) <> 0
	End Method
	Method enemyCollision:Bool()
		For Local e:TEnemy = Eachin enemyList
			If e <> Self
				If Collide(e)
					Return True
				End If
			End If
		Next
		Return False
	End Method
End Class
Class TProjectile Extends Sprite
	Global projectileList:List<TProjectile> = New List<TProjectile>
	Field bounds:TileMapRect
	Field damage:Int
	Field player:Bool
	Field heatSeaking:Bool
	Field sparkImg:GameImage
	Method New(p:Bool,sx:Float,sy:Float,gi:GameImage,_sparkImg:GameImage,dir:Float,dmg:Int, b:TileMapRect)
		Super.New(gi, sx, sy)
		bounds = b
		speed = 3
		player = p
		rotation = dir
		sparkImg = _sparkImg
		damage = dmg
		projectileList.AddLast(Self)
	End Method
	
	Method update(p:TPlayer,tiles:TileMapData)
		MoveForward()
		If (x > bounds.w-TILE_SIZE Or x < -TILE_SIZE Or y > bounds.h Or y < 0) Or wallCollision(tiles)
			projectileList.Remove(Self)
			New Explosion(sparkImg,x,y,4,10,2)
		End If
		If player 
			checkEnemies()
		Else
			checkPlayer(p)
		Endif
	End Method
	Method checkPlayer:Void(p:TPlayer)
		If RectsOverlap(mapx,mapy,PLAYER_COLL_W,PLAYER_COLL_H,x,y,image.w,image.h)
			p.Hit(damage)
			projectileList.Remove(Self)
			New Explosion(game.images.Find("blood"),x,y,4,10,2)
		End If
	End Method
	Method wallCollision:Bool(tiles:TileMapData)
		Return tiles.Get(toTileX(x),toTileY(y)) <> 0
	End Method
	Method checkEnemies:Void()
		For Local e:TEnemy = Eachin gameScreen.gameState.lvlNode.enemies
			If Collide(e)
					e.health -= damage
					If e.health > 0 e.fallBack(dx*.3,dy*.3)
					projectileList.Remove(Self)
					New Explosion(game.images.Find("blood"),x,y,4,10,2)
					Exit
			End If
		Next
	End Method
End Class
Class TBomb Extends Sprite
	Global bombList:List<TBomb> = New List<TBomb>
	Field bounds:TileMapRect
	Field damage:Int
	Field explodeDelay:Int
	Field stopped:Bool
	Field explosionImage:GameImage
	Field dist:Int
	Field explosionRadius:Float
	Field player:Bool
	Field stayFlying:Bool = False
	Method New(p:Bool,sx:Float,sy:Float,expImg:GameImage, gi:GameImage,expRadius:Float, _dist:Int, expDelay:Int, dir:Float,dmg:Int, b:TileMapRect)
		Super.New(gi, sx, sy)
		player = p
		bounds = b
		dist = _dist
		If dist = -1 stayFlying = True
		speed = 1.5
		explosionRadius = expRadius
		rotation = dir
		damage = dmg
		stopped = False
		explosionImage = expImg
		explodeDelay = expDelay
		bombList.AddLast(Self)
	End Method
	Method update(p:TPlayer,tiles:TileMapData)
		If Not stopped
			MoveForward()
			dist-=1
		Else
			explodeDelay -= 1
			If explodeDelay < 1
				Explode(p)
			End If
		End If
		If (x > bounds.w-TILE_SIZE Or x < -TILE_SIZE Or y > bounds.h Or y < 0) Or wallCollision(tiles)
			stopped = True
		End If
		If dist < 1 And Not stayFlying stopped = True
	End Method
	Method Explode(p:TPlayer)
		bombList.Remove(Self)
		New Explosion(explosionImage, x, y, 20, 60, 1)
		New Mark(game.images.Find("BombMark"),x,y)
		'get enemies within range
		Local epicDist:Float
		Local hitWall:Bool
		For Local e:TEnemy = Eachin gameScreen.gameState.lvlNode.enemies
			epicDist = cDistAny(x,y,e.x,e.y)
			If epicDist < explosionRadius'within explosion radius
				hitWall = False
				ray.fire(x,y,(e.x-x)/epicDist,(e.y-y)/epicDist,8)
				For Local i:Int = 0 To Int(epicDist/ray.pixstep)
					If ray.checkColl() hitWall = True Exit
					ray.advance()
				Next
				If Not hitWall
					e.health -= damage
					If e.health > 0
							e.fallBack(4*((x-e.x)/epicDist),4*((y-e.y)/epicDist))
					End If
				End If
			End
		Next
		'get player
		Local pdist:Float = cDist(x,y)
		hitWall = False
		If pdist < explosionRadius
			ray.fire(x,y,(mapx-x)/pdist,(mapy-y)/pdist,8)
			For Local i:Int = 0 To Int(pdist/ray.pixstep)
				If ray.checkColl() hitWall = True  Exit
				ray.advance()
			Next
			If Not hitWall p.Hit(damage)
		End If
	End Method
	Method wallCollision:Bool(tiles:TileMapData)
		Return tiles.Get(toTileX(x),toTileY(y)) <> 0
	End Method
End Class
Class RayTrace
	Field pixstep:Int
	Field dx:Float
	Field dy:Float
	Field x:Float,y:Float
	Field stepnum:Int
	Method fire(_x:Float,_y:Float,_dx:Float,_dy:Float,_pixstep:Int)
		dx = _dx
		dy = _dy
		x = _x
		y = _y
		stepnum = 0
		pixstep = _pixstep
	End Method
	Method checkColl:Bool()
		If stepnum = 0 Return False
		Local cx:Int = toTileX(x)
		Local cy:Int = toTileY(y)
		If cx > gameScreen.gameState.tilemap.width-1 Or cx < 0 Or cy > gameScreen.gameState.tilemap.height-1 Or cy < 0 Return True
		Return gameScreen.gameState.collisionData.Get(cx,cy) <> 0
	End Method
	Method advance()
		x += dx*pixstep
		y += dy*pixstep
		stepnum += 1
	End Method
End Class
Class MyTiledTileMapReader Extends TiledTileMapReader
        Method CreateMap:TileMap()
                Return New MyTileMap
        End
End
Class MyTileMap Extends TileMap
		
        Method ConfigureLayer:Void(tileLayer:TileMapLayer)
				Local l:TileMapTileLayer = TileMapTileLayer(tileLayer)
				If tileLayer.name[..5] = "super" tileLayer.visible = False
				If tileLayer.name[..9] = "superRoof"
				If TileMapTileLayer(tileLayer) <> Null
					Local data:TileMapData = TileMapTileLayer(tileLayer).mapData
						If data.Get(getPTileX(),getPTileY()) <> 0
							tileLayer.opacity = .05
						Else
							tileLayer.opacity = 1
						End If
					End If
				End If
                SetAlpha(tileLayer.opacity)
        End Method
		Method DrawSuper:Void(bx%, by%, bw%, bh%, sx# = 1, sy# = 1)
			Local x%, y%, rx%, ry%, mx%, my%, mx2%, my2%, modx%, mody%
			For Local layer:TileMapLayer = Eachin layers
				If layer.name[..5] = "super"  And TileMapTileLayer(layer) <> Null Then
					Local tl:TileMapTileLayer = TileMapTileLayer(layer)
					Local mapTile:TileMapTile, gid%
					ConfigureLayer(layer)
					' ortho
					If orientation = MAP_ORIENTATION_ORTHOGONAL Then
						modx = (bx * tl.parallaxScaleX) Mod tileWidth
						mody = (by * tl.parallaxScaleY) Mod tileHeight
						y = by
						my = Int(Floor(Float(by * tl.parallaxScaleY) / Float(tileHeight)))
						While y < by + bh + tl.maxTileHeight
							x = bx - tl.maxTileWidth
							mx = Int(Floor(Float(bx * tl.parallaxScaleX) / Float(tileWidth)))
							While x < bx + bw + tl.maxTileWidth
								If (wrapX Or (mx >= 0 And mx < width)) And (wrapY Or (my >= 0 And my < height)) Then
									mx2 = mx
									my2 = my
									While mx2 < 0
										mx2 += width
									End
									While mx2 >= width
										mx2 -= width
									End
									While my2 < 0
										my2 += height
									End
									While my2 >= height
										my2 -= height
									End
									gid = tl.mapData.cells[mx2 + my2*tl.mapData.width].gid
									If gid > 0 Then
										mapTile = tiles[gid - 1]
										
										If modx < 0 Then modx += tileWidth
										If mody < 0 Then mody += tileHeight
										rx = x - modx - bx
										ry = y - mody - by
										DrawTile(tl, mapTile, rx, ry)
									End
								End
								x += tileWidth
								mx += 1
							End
							y += tileHeight
							my += 1
						End
	
					' iso
					Elseif orientation = MAP_ORIENTATION_ISOMETRIC Then
						' TODO: wrapping
						For y = 0 Until tl.width + tl.height
							ry = y
							rx = 0
							While ry >= tl.height
								ry -= 1
								rx += 1
							Wend
							While ry >= 0 And rx < tl.width
								gid = tl.mapData.cells[rx + ry*tl.mapData.width].gid
								If gid > 0 Then
									mapTile = tiles[gid - 1]
									DrawTile(tl, mapTile, (rx - ry - 1) * tileWidth / 2 - bx, (rx + ry + 2) * tileHeight / 2 - mapTile.height - by)
								Endif
								ry -= 1
								rx += 1
							End
						Next
					End
				End
			Next
		End
        Method DrawTile:Void(tileLayer:TileMapTileLayer, mapTile:TileMapTile, x:Int, y:Int)
                mapTile.image.DrawTile(x, y, mapTile.id, 0, 1, 1)
        End
		Method getCollisionLayer:TileMapData()
			Local collisionlyrs:List<TileMapTileLayer> = New List<TileMapTileLayer>
			Local merger:Int[width*height]
			Local data:TileMapData
			'grab collision layers
			For Local i:Int = 0 Until layers.Size
				If TileMapTileLayer(layers.Get(i)) <> Null And layers.Get(i).name[..9] = "collision"
					collisionlyrs.AddLast(TileMapTileLayer(layers.Get(i)))
				End If
			Next
			'grab tiles from collision layer
			For Local l:TileMapTileLayer = Eachin collisionlyrs
				For Local i:Int = 0 Until merger.Length
					If merger[i] = 0 And l.mapData.tiles[i] <> 0
						merger[i] = l.mapData.tiles[i]
					End If
				Next
			Next
			'grab empty spaces
			Local isemptyinall:Bool
			For Local i:Int = 0 Until merger.Length
				If merger[i] = 0
					isemptyinall = True
					'check each tile on each layer
					For Local layer:TileMapLayer = Eachin layers
						If TileMapTileLayer(layer) <> Null
							If TileMapTileLayer(layer).mapData.tiles[i] <> 0 isemptyinall = False Exit
						End If
					Next
					If isemptyinall merger[i] = 1
				End If
			Next				
			data = New TileMapData(width,height)
			data.tiles = merger
			Return data
		End
		Method getTeleportLayer:TileMapData()
				For Local i:Int = 0 Until layers.Size
					If TileMapTileLayer(layers.Get(i)) <> Null And layers.Get(i).name = "teleportLayer"
						Return TileMapTileLayer(layers.Get(i)).mapData
					End If
				Next
			Return Null
		End
End
Function SetRotation:Void (X:Float, Y:Float, angle:Float)
	PushMatrix				' Store current rotation, scale, etc
	Translate X, Y			' Shift origin across to here
	Rotate angle			' Rotate around origin
	Translate -X, -Y		' Shift origin back where it was
End

Class Explosion
	Global explosionList:List<Explosion> = New List<Explosion>
	Field duration:Int
	Field start:Int
	Field shardList:List<Shard>
	
	Method New(img:GameImage,x:Float,y:Float,n:Int = 15, d:Int = 20, s:Float = 4)
		shardList = New List<Shard>
		start = Millisecs()
		duration = d
		For Local i:Int = 1 To n
			shardList.AddLast(New Shard(img,(360/n)*i,s*Rnd(),x,y))
		Next
		explosionList.AddLast(Self)
	End Method
	
	Method Update:Void()
		If Millisecs() - start <= duration
			For Local s:Shard = Eachin shardList
				s.Update()
			Next
		Else
			explosionList.Remove(Self)
		End If
	End Method
	Method Draw:Void()
		For Local s:Shard = Eachin shardList
			s.Draw()
		Next		
	End Method
End Class
Class Shard
	Field x:Float,y:Float
	Field speed:Float
	Field dx:Float,dy:Float
	Field image:GameImage
	Method New(img:GameImage,dir:Float,_speed:Float,_x:Float,_y:Float)
		dy = -Cos(dir)
		dx = Sin(dir)
		speed = _speed
		image = img
		x = _x
		y = _y
	End Method
	
	Method Update:Void()
		If cam.inView(x,y)
			x += dx*speed*Rnd(1,2)*dt.delta
			y += dy*speed*Rnd(1,2)*dt.delta
		End If
	End Method
	Method Draw:Void()
		If cam.inView(x,y) image.Draw(x-(cam.x-SCREEN_WIDTH2),y-(cam.y-SCREEN_HEIGHT2))
	End Method
End Class
Function ResetRotation:Void ()
	PopMatrix				' Restore rotation, scale, etc
End
Function PointsToAngle:Float(x1:Float,y1:Float,x2:Float,y2:Float)
	Local direction:Float = ATan2(y1-y2,x1-x2)+180

	While direction > 360
		direction=-180
	Wend

	While direction<0
		direction=+180
	Wend

	Return direction

End Function
Function xDist:Float(x:Float)
	Return Abs(x-mapx)
End Function
Function yDist:Float(y:Float)
	Return Abs(y-mapy)
End Function
Function cDist:Float(x:Float,y:Float)
	Local dx:Float = xDist(x)
	Local dy:Float = yDist(y)
	Return Sqrt((dx*dx)+(dy*dy))
End Function
Function xDistAny:Float(x:Float,x1:Float)
	Return Abs(x-x1)
End Function
Function yDistAny:Float(y:Float,y1:Float)
	Return Abs(y-y1)
End Function
Function cDistAny:Float(x:Float,y:Float,x1:Float,y1:Float)
	Local dx:Float = xDistAny(x,x1)
	Local dy:Float = yDistAny(y,y1)
	Return Sqrt((dx*dx)+(dy*dy))
End Function
Function getPTileX:Int()
	Return toTileX(mapx)
End Function
Function getPTileY:Int()
	Return toTileY(mapy)
End Function
Function toTileX:Int(f:Float)
	Local v:Int
	Local t:Float = f/TILE_SIZE
	v = Floor(t)
	If v < 0 v = 0
	If v > gameScreen.gameState.tilemap.width-1 v = gameScreen.gameState.tilemap.width-1
	Return v
End Function
Function toTileY:Int(f:Float)
	Local v:Int
	Local t:Float = f/TILE_SIZE
	v = Floor(t)
	If v < 0 v = 0
	If v > gameScreen.gameState.tilemap.height-1 v = gameScreen.gameState.tilemap.height-1
	Return v
End Function
Function PointInRect:Bool (x:Float, y:Float, rectX:Float, rectY:Float, rectW:Float, rectH:Float)
	Return (x > rectX) And (x < rectX+rectW) And (y > rectY) And (y < rectY+rectH)
End
Function betweenAngle:Bool(_n:Float,_a:Float,_b:Float)
        Local n:Float = (360 + (_n Mod 360)) Mod 360;
        Local a:Float = (3600000 + _a) Mod 360;
        Local b:Float = (3600000 + _b) Mod 360;

        If (a < b) Return (a <= n And n <= b);
        Return (a <= n Or n <= b);
End Function
Function drawCursor:Void()
	SetAlpha 0.7
	cursorImg.Draw(game.mouseX,game.mouseY,cursorRot)
	SetAlpha 1.0
End Function
Function updateCursor:Void()
	cursorRot += dt.delta
End Function