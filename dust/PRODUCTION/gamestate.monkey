'savable gamestate class everything of a runnable game goes in here
Import MyGame
Class GameState' Extends saveable
	    Field tilemap:MyTileMap
		Field chgTilemap:MyTileMap
		Field collisionData:TileMapData
        Field myPlayer:TPlayer
		Field lvl:String
		Field lvlNode:LevelNode
		Field chglvlNode:LevelNode
		Field currentTask:Task
		Field taskNumber:Int
		'creates a new game
		Method newGame:Void()
				'generate all the levels
				generateLevelTree()
				'set inital map
				lvl = "maps/home.xml"
				lvlNode = LEVELTREE.Get(lvl)
				tilemap = lvlNode.tilemap
				chgTilemap = tilemap
				chglvlNode = lvlNode
				collisionData = lvlNode.collisionData
				currentTask = New Task()
				'define player and grab the default respawn
				myPlayer = New TPlayer(game.images.Find("player"))
				myPlayer.spawn = tilemap.FindObjectByName("playerSpawn")
				If myPlayer.spawn = Null
					mapx = 8
					mapy = 8
				Else
					mapx = myPlayer.spawn.x
					mapy = myPlayer.spawn.y
				End If
				myPlayer.bounds = tilemap.GetBounds()
				
				'set task number to -1 to start with
				taskNumber = -1		
		End Method
		'called when the game screen starts up
		Method startHook:Void()
			TProjectile.projectileList.Clear()
			TBomb.bombList.Clear()
			Explosion.explosionList.Clear()
			Mark.markList.Clear()	
			tilemap = chgTilemap
			lvlNode = chglvlNode
			myPlayer.x = mapx
			myPlayer.y = mapy
			cam.pSync()
		End Method
		'teleports the player to a new map
		Method teleportTo:Void(t:Teleport)
				'load targeted map
				lvl = "maps/"+t.fileName
				chglvlNode = LEVELTREE.Get(lvl)
 				chgTilemap = chglvlNode.tilemap
				collisionData = chglvlNode.collisionData
				chglvlNode.respawnEnemies()'respawn the enemies/pickups in the new area
				chglvlNode.respawnPickups()
				'set new player constraints
				myPlayer.bounds = chglvlNode.tilemap.GetBounds()
				myPlayer.hasMoved = False
				
				'set player location based on teleport
				Local found:Bool = False
				For Local i:Teleport = Eachin chglvlNode.teleports
					If i.name = t.targetName
						found = True
						mapx = i.x+i.sx
						mapy = i.y+i.sy
					End If
				Next
				If Not found
					mapx = 8
					mapy = 8
				End If
				game.screenFade.Start(2000, True, True, True)
		End Method
		Method generateLevelTree:Void()
				LEVELTREE = New StringMap<LevelNode>
				Local home:LevelNode = New LevelNode("maps/home.xml")
				home.loadMap()'this function creates all the assets of the map
				recursiveAddNode(home)'create a tree from the home node
		End Method
		Method recursiveAddNode:Void(n:LevelNode)
			'Print n.fileName
			'if the node is already defined skip it
			If Not LEVELTREE.Contains(n.fileName) LEVELTREE.Add(n.fileName,n)
			'run each of it's children through the same process
			For Local i:= Eachin n.targets.Keys()
				If Not LEVELTREE.Contains(i)'only if it's not already defined
					n.targets.Get(i).loadMap()
					recursiveAddNode(n.targets.Get(i))
				End If
			Next
		End Method 
		
		Method renderHook:Void()
			If Not dialog.active
				tilemap.RenderMap(cam.x-SCREEN_WIDTH2-TILE_SIZE, cam.y-SCREEN_HEIGHT2, SCREEN_WIDTH, SCREEN_HEIGHT)
				For Local m:Mark = Eachin Mark.markList
					m.Draw((cam.x-SCREEN_WIDTH2),(cam.y-SCREEN_HEIGHT2))
				Next
				myPlayer.Draw((cam.x-SCREEN_WIDTH2),(cam.y-SCREEN_HEIGHT2))
				For Local e:TEnemy = Eachin lvlNode.enemies
					e.Draw((cam.x-SCREEN_WIDTH2),(cam.y-SCREEN_HEIGHT2))
				Next
				For Local r:Readable = Eachin lvlNode.readables
					r.Draw((cam.x-SCREEN_WIDTH2),(cam.y-SCREEN_HEIGHT2))
				Next
				If lvlNode.brad <> Null'There is a brad on this map
					Local t:Brad = lvlNode.brad
					t.Draw((cam.x-SCREEN_WIDTH2),(cam.y-SCREEN_HEIGHT2))
				End If
				For Local p:Pickup = Eachin lvlNode.pickups
					p.DrawTile((cam.x-SCREEN_WIDTH2),(cam.y-SCREEN_HEIGHT2))
				Next
				For Local b:TProjectile = Eachin TProjectile.projectileList
					b.Draw((cam.x-SCREEN_WIDTH2),(cam.y-SCREEN_HEIGHT2))
				Next
				For Local b2:TBomb = Eachin TBomb.bombList
					b2.Draw((cam.x-SCREEN_WIDTH2),(cam.y-SCREEN_HEIGHT2))
				Next
				For Local exp:Explosion = Eachin Explosion.explosionList
					exp.Draw()
				Next

				tilemap.DrawSuper(cam.x-SCREEN_WIDTH2-TILE_SIZE, cam.y-SCREEN_HEIGHT2, SCREEN_WIDTH, SCREEN_HEIGHT)
				If lvlNode.dark DrawDarkness()
				If myPlayer.showHit
					'Draw been hit effect
					SetAlpha (Float(myPlayer.hitTimer)/20)*.6
					SetColor 255,0,0
					DrawRect 0,0,SCREEN_WIDTH,SCREEN_HEIGHT
					SetColor 255,255,255
					SetAlpha 1
				End If
				DrawHUD()
			Else
				myPlayer.Draw((cam.x-SCREEN_WIDTH2),(cam.y-SCREEN_HEIGHT2))
				If dialog.reading <> Null dialog.reading.Draw((cam.x-SCREEN_WIDTH2),(cam.y-SCREEN_HEIGHT2))
				If dialog.brad <> Null
					If lvlNode.brad <> Null'There is a brad on this map
						Local t:Brad = lvlNode.brad
						t.Draw((cam.x-SCREEN_WIDTH2),(cam.y-SCREEN_HEIGHT2))
					End If						
				End If
				dialog.draw()	
			End If		
		End Method
		Method updateHook:Void()
				If Not game.screenFade.active'if we're not transitioning
					If Not dialog.active
						myPlayer.UpdateAnimation()
		                myPlayer.update(collisionData)
						'if the screen is changing get out of here
						If Not game.screenFade.active
							cam.pSync()
							For Local r:Readable = Eachin lvlNode.readables
								r.update()
							Next
							If lvlNode.brad <> Null'There is a brad on this map
								Local t:Brad = lvlNode.brad
								t.update()
							End If
							For Local e:TEnemy = Eachin lvlNode.enemies
								e.UpdateAnimation()
								e.update(myPlayer,collisionData)
							Next
							For Local p:Pickup = Eachin lvlNode.pickups
								p.update(myPlayer)
							Next
							For Local b:TProjectile = Eachin TProjectile.projectileList
								b.update(myPlayer,collisionData)
							Next
							For Local b2:TBomb = Eachin TBomb.bombList
								b2.update(myPlayer,collisionData)
							Next
							For Local exp:Explosion = Eachin Explosion.explosionList
								exp.Update()
							Next
							For Local m:Mark = Eachin Mark.markList
								m.update()
							Next
							For Local n:Notification = Eachin Notification.notificationList
								n.update()
							Next
							If myPlayer.health <= 0
							 	game.screenFade.Start(3000, True, True, True)
								game.nextScreen = deathScreen				
							End If
			                tilemap.UpdateAnimation(dt.frametime)
						End If
					Else
						dialog.update()
					End If
				End If
		
		End Method
		Method DrawHUD:Void()

			DrawImage(game.images.Find("hud").image,0,118)
			DrawImageRect(game.images.Find("health").image,5,150,0,0,myPlayer.health,5)
			If myPlayer.weaponinventory.Size > 0
				Local empty:Bool = False
				Local ammostr:String = ""
				game.images.Find("pickups").DrawTile(214,144,myPlayer.weaponinventory.Get(myPlayer.weapon).inventoryTile)
				If myPlayer.weaponinventory.Get(myPlayer.weapon).infinite
					ammostr = "oo"
				Else
					'has a clip
					If ammostr+myPlayer.weaponinventory.Get(myPlayer.weapon).clipSize <> -1
						ammostr = ammostr+myPlayer.weaponinventory.Get(myPlayer.weapon).clip
						ammostr = ammostr+" / "
					End If
					ammostr += myPlayer.weaponinventory.Get(myPlayer.weapon).ammo
				End If
				If myPlayer.weaponinventory.Get(myPlayer.weapon).empty SetColor 255,0,0
				normalFont.DrawText(ammostr,214,129,AngelFont.ALIGN_CENTER)
				If myPlayer.weaponinventory.Get(myPlayer.weapon).empty SetColor 255,255,255
			End If
			'convert modifiers To 1 decimal place
			For Local n:Notification = Eachin Notification.notificationList
				n.Draw()
			Next
			#If TARGET="android" Or TARGET="ios"
				myPlayer.gamePad.draw()
			#End
			FPSCounter.Draw(0,0)
			#rem If taskNumber <> -1
				Local completedstr:String
				If currentTask.completed
					completedstr = "yes"
				Else
					completedstr = "no"
				End If
				normalFont.DrawText("CURRENT TASK: "+currentTask.type.name+" | COMPLETED: "+completedstr,0,20)
			End If
			#end
			'If myPlayer.pm <> Null
			'	normalFont.DrawText("MOD: "+myPlayer.pm.name+" | timeleft: "+myPlayer.pm.decay+" | hp: "+myPlayer.pm.hpdecay,0,40)
			'End If
			'normalFont.DrawText("mapx: "+mapx+" mapy: "+mapy+" -> "+getPTileX()+" : "+getPTileY(),0,40)
			'normalFont.DrawText("prot: "+myPlayer.rot+"  rot2:"+-(PointsToAngle(SCREEN_WIDTH2,SCREEN_HEIGHT2,game.mouseX,game.mouseY)),0,40)
		End Method
		Method DrawDarkness:Void()
			If myPlayer.attributes.flashLight
				game.images.Find("flashlight_on").Draw(0,0)
			Else
				game.images.Find("flashlight_off").Draw(0,0)
			End If
		End Method
End Class
