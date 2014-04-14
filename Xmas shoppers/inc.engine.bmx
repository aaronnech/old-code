'global lists

Global ButtonList:TList = CreateList()
Global EventList:TList = CreateList()
Global EnemyList:TList = CreateList()

'win32 functions for the application icon
?Win32
Extern "win32"
	Function ExtractIconA%(hWnd%,File$z,Index%)
	Function GetActiveWindow%()
	Function SendMessage:Int(hWnd:Int,MSG:Int,wParam:Int,lParam:Int) = "SendMessageA@16"
End Extern
?

'Base type for all entities..
Type TEntity
	Field x:Float, y:Float
End Type

'Dispenses snowballs.. imagine that.
Type TSnowBallDispenser
	Field timer:Int
	
	'Frame based, drops a snowball every few frames.. random number of frames
	Method Update()
		timer:+1
		If timer > Rand(100, 300)
			timer = 0
			New TSnowBall.Create(Rand(0, 1009), Rand(0, 753))
		End If
		TSnowBall.UpdateAll()
	End Method

End Type

'The snowball... master of all projectiles
Type TSnowBall Extends TEntity
	Global SnowBallList:TList = CreateList()'list of snowballs
	Field playerhas:Byte'the snowball is on the ground or in the player's inventory
	Field fired:Byte'is it flying through the air?
	Field dx:Float, dy:Float'Direction
	'drop a snowball
	Method Create(_x:Float, _y:Float)
		x = _x
		y = _y
		playerhas = False
		ListAddLast(SnowBallList, Self)
	End Method
	'give the snowball to the player
	Method GivePlayer()
		PlaySound(snow)
		playerhas = True
		player.Snowballs:+1
	End Method
	
	'Fire the snowball.. the player still has it until it vanishes
	Method Fire()
		PlaySound(throwsound)
		dx = AngleToDX(player.angle) * 10'go in the player's direction
		dy = AngleToDY(player.angle) * 10
		fired = True
		player.Snowballs:-1
		'fire the the front of the player
		x = player.x + Cos(player.angle - 100) * 90
		y = player.y + Sin(player.angle - 100) * 90
	End Method
	
	'update the snowball
	Method Update()
		'if the player has he snowball
		If playerhas
			If fired'don't update unless it's fired
				x:+dx
				y:+dy
				ParticleExplosion(x + 7.5, y + 7.5, rflakeimage, 10, 20, 3)
				CheckEnemies()'hit the enemy?
				'delete it if it flies away
				If x < - 15 SnowBallList.Remove(Self)
				If x > 1024 SnowBallList.Remove(Self)
				If y < - 15 SnowBallList.Remove(Self)
				If y > 768 SnowBallList.Remove(Self)
				DrawImage snowballimg, x, y
			End If
		Else
			If CheckPlayer() GivePlayer()'player picks up?
			DrawImage snowpileimg, x, y
		End If
		
	End Method
	
	Method CheckPlayer:Byte()
		'Check distance first
		If TCollision.PointToPointDist(x, y, player.x, player.y) > 115 Return False
		If TCollision.PolyToTFormPoly([x, y, x + 20, y, x + 20, y + 20, x, y + 20], playerpoints, player.x, player.y, player.angle, 1, 1, 22.5, 90) Return True
		Return False
	End Method
	Method CheckEnemies:Byte()
		'check each enemy and explode on contact
		For i:TEnemy = EachIn EnemyList
			If i.direction = -1
				If TCollision.RectsOverlap(x, y, 15, 15, i.x, i.y, 100, 45)
					EnemyList.Remove(i)
					PlaySound explosion
					ParticleExplosion(x + 7.5, y + 7.5, rflakeimage, 20, 20, 8)
					ParticleExplosion(x + 7.5, y + 7.5, gflakeimage, 20, 20, 8)
					ParticleExplosion(x + 7.5, y + 7.5, bflakeimage, 20, 20, 8)
					SnowBallList.Remove(Self)
				End If
			Else
				If TCollision.RectsOverlap(x, y, 15, 15, i.x - 100, i.y - 45, 100, 45)
					EnemyList.Remove(i)
					PlaySound explosion
					ParticleExplosion(x + 7.5, y + 7.5, rflakeimage, 20, 20, 8)
					ParticleExplosion(x + 7.5, y + 7.5, gflakeimage, 20, 20, 8)
					ParticleExplosion(x + 7.5, y + 7.5, bflakeimage, 20, 20, 8)
					SnowBallList.Remove(Self)
				End If
			End If
		Next
	End Method
	'Update all the snowballs
	Function UpdateAll()
			For Local i:TSnowBall = EachIn SnowBallList
				i.Update()
			Next
	End Function
End Type

'Older pure bmax version of my particle module
Type TParticle Extends TEntity
	Global ParticleList:TList = CreateList()
	
	Field a:Float = 1,r:Int
	Field ox:Int,oy:Int
	Field img:TImage
	Field dx:Float,dy:Float, da:Float
	Field maxdistance:Int
	Field fade:Int
	
	'Creates a particle arguments are pretty self explanitory
	Method Create:TParticle(_x:Int, _y:Int, _img:TImage, _dir:Int = 0, _speed:Float = 0, frames:Int = 0, _fade:Int = False)
		ListAddLast(ParticleList,Self)
		x = _x
		y = _y
		ox = _x
		oy = _y
		img = _img
		dx = Sin(_dir) * _speed
		dy = Cos(_dir) * _speed
		da = 1.0 / frames
		maxdistance = frames
		
		If _fade
			fade = True
		End If
	End Method
	
	'update and set alpha to fade
	Method Update:TParticle()
		x:+dx
		y:+dy
		If fade a:-da
		SetRotation(r)
		SetAlpha(a)
		DrawImage img,x,y
		SetRotation(0)
		SetAlpha(1)
		
		maxdistance:- 1
		If Not maxdistance Then
			Destroy()
		End If

	End Method
	
	'access methods
	Method SetPAlpha(alpha:Float)
		a = alpha
	End Method
	
	Method SetPRotation(rot:Int)
		r = rot
	End Method
	
	Method Destroy()
		ParticleList.Remove(Self)
	End Method
	
	Method SetX(_x:Int)
		x = _x
	End Method
	
	Method SetY(_y:Int)
		y = _y
	End Method
	'update all
	Function UpdateAllParticles()
		For Local UpdateParticles:TParticle = EachIn ParticleList
			UpdateParticles.Update()
		Next
	End Function
	'clear all the particles
	Function ClearAll()
		ParticleList.Clear()
	End Function
	
End Type


Type TCollision
	'simple collision detection function of two rectangles - very fast and good enough
	Function RectsOverlap:Byte(x0:Float, y0:Float, w0:Int, h0:Int, x2:Float, y2:Float, w2:Int, h2:Int)
		If x0 > (x2 + w2) Or (x0 + w0) < x2 Then Return False
		If y0 > (y2 + h2) Or (y0 + h0) < y2 Then Return False
		Return True
	End Function
	
	'checks if two transformed polygons collide
	Function TFormPolyToTFormPoly:Int( p1_xy:Float[], p1_x:Float=0, p1_y:Float=0,..
							p1_rot:Float=0, p1_scale_x:Float=1, p1_scale_y:Float=1,..
							p1_handle_x:Float=0, p1_handle_y:Float=0,..
							p1_origin_x:Float=0, p1_origin_y:Float=0,..
							p2_xy:Float[], p2_x:Float=0, p2_y:Float=0,..
							p2_rot:Float=0, p2_scale_x:Float=1, p2_scale_y:Float=1,..
							p2_handle_x:Float=0, p2_handle_y:Float=0,..
							p2_origin_x:Float=0, p2_origin_y:Float=0)
		
		If p1_xy.length<6 Or (p1_xy.length&1) Return False
		If p2_xy.length<6 Or (p2_xy.length&1) Return False
		
		Local tform1_xy:Float[]=TFormPoly(p1_xy,p1_x,p1_y,p1_rot,p1_scale_x,p1_scale_y,..
							p1_handle_x,p1_handle_y,p1_origin_x,p1_origin_y)
		
		Local tform2_xy:Float[]=TFormPoly(p2_xy,p2_x,p2_y,p2_rot,p2_scale_x,p2_scale_y,..
							p2_handle_x,p2_handle_y,p2_origin_x,p2_origin_y)
		
		If PolyToPoly(tform1_xy,tform2_xy)
			Return True
		Else
			Return False
		EndIf
		
	End Function
	'checks if a polygon collides with a transformed polygon
	Function PolyToTFormPoly:Int(p1_xy:Float[], p2_xy:Float[],  ..
							p2_x:Float=0, p2_y:Float=0, rot:Float=0,..
							scale_x:Float=1, scale_y:Float=1,..
							handle_x:Float=0, handle_y:Float=0,..
							origin_x:Float=0, origin_y:Float=0 )
		
		If p1_xy.length<6 Or (p1_xy.length&1) Return False
		If p2_xy.length<6 Or (p2_xy.length&1) Return False
		
		Local tform_xy:Float[]=TFormPoly(p2_xy,p2_x,p2_y,rot,scale_x,scale_y,..
							handle_x,handle_y,origin_x,origin_y)
		
		If PolyToPoly(p1_xy,tform_xy)
			Return True
		Else
			Return False
		EndIf
		
	End Function
	
	'checks if two polygons collide
	Function PolyToPoly:Int( p1_xy:Float[], p2_xy:Float[] )
		
		If p1_xy.length<6 Or (p1_xy.length&1) Return False
		If p2_xy.length<6 Or (p2_xy.length&1) Return False
		For Local i:Int = 0 Until p1_xy.Length Step 2
			If PointInPoly(p1_xy[i],p1_xy[i+1],p2_xy) Then Return True
		Next
		For i:Int = 0 Until p2_xy.Length Step 2
			If PointInPoly(p2_xy[i],p2_xy[i+1],p1_xy) Then Return True
		Next
		
		Local l1_x1:Float=p1_xy[p1_xy.Length-2]
		Local l1_y1:Float=p1_xy[p1_xy.Length-1]
		For Local i1:Int=0 Until p1_xy.Length Step 2
			Local l1_x2:Float=p1_xy[i1]
			Local l1_y2:Float=p1_xy[i1+1]
			
			Local l2_x1:Float=p2_xy[p2_xy.Length-2]
			Local l2_y1:Float=p2_xy[p2_xy.Length-1]
			For Local i2:Int=0 Until p2_xy.Length Step 2
				Local l2_x2:Float=p2_xy[i2]
				Local l2_y2:Float=p2_xy[i2+1]
				
				If LinesCross(l1_x1,l1_y1,l1_x2,l1_y2,l2_x1,l2_y1,l2_x2,l2_y2)
					Return True
				EndIf
				
				l2_x1=l2_x2
				l2_y1=l2_y2
			Next
			l1_x1=l1_x2
			l1_y1=l1_y2
		Next
		Return False
	End Function
	
	'Checks if a line collides
	Function LineToTFormPoly:Int( line_x1:Float, line_y1:Float, line_x2:Float, line_y2:Float,..
							xy:Float[], poly_x:Float=0, poly_y:Float=0,..
							rot:Float=0, scale_x:Float=1, scale_y:Float=1,..
							handle_x:Float=0, handle_y:Float=0,..
							origin_x:Float=0, origin_y:Float=0 )
		
		If xy.length<6 Or (xy.length&1) Return False
		
		TFormGlobalToLocal(line_x1,line_y1,poly_x,poly_y,rot,scale_x,..
							scale_y,handle_x,handle_y,origin_x,origin_y)
		
		TFormGlobalToLocal(line_x2,line_y2,poly_x,poly_y,rot,scale_x,..
							scale_y,handle_x,handle_y,origin_x,origin_y)
		
		Return LineToPoly(line_x1,line_y1,line_x2,line_y2,xy)
	End Function
	
	'Checks if a line collides with a polygon
	Function LineToPoly:Int( line_x1:Float, line_y1:Float, line_x2:Float, line_y2:Float, xy:Float[] )
		
		If xy.length<6 Or (xy.length&1) Return False
		
		If PointInPoly(line_x1,line_y1,xy) Then Return True
		
		Local poly_x1:Float=xy[xy.Length-2]
		Local poly_y1:Float=xy[xy.Length-1]
		
		For Local i:Int=0 Until Len xy Step 2
			Local poly_x2:Float=xy[i]
			Local poly_y2:Float=xy[i+1]
			
			If LinesCross(line_x1,line_y1,line_x2,line_y2,..
							poly_x1,poly_y1,poly_x2,poly_y2) Then Return True
			poly_x1=poly_x2
			poly_y1=poly_y2
		Next
		
		Return False
		
	End Function
	
	'Checks if a point is in a transformed polygon
	Function PointInTFormPoly:Int( point_x:Float, point_y:Float, xy:Float[],..
							poly_x:Float=0, poly_y:Float=0, rot:Float=0,..
							scale_x:Float=1, scale_y:Float=1,..
							handle_x:Float=0, handle_y:Float=0,..
							origin_x:Float=0, origin_y:Float=0 )
		
		If xy.length<6 Or (xy.length&1) Return False
		
		TFormGlobalToLocal(point_x,point_y,poly_x,poly_y,rot,scale_x,..
							scale_y,handle_x,handle_y,origin_x,origin_y)
		
		Return PointInPoly(point_x,point_y,xy)
	End Function
	
	'checks if a point is in a polygon
	Function PointInPoly:Int( point_x:Float, point_y:Float, xy:Float[] )
		
		If xy.length<6 Or (xy.length&1) Return False
		
		Local x1:Float=xy[xy.Length-2]
		Local y1:Float=xy[xy.Length-1]
	    cur_quad:Int = GetQuad(POINT_X, POINT_Y, x1, y1)
		Local next_quad:Int
		Local total:Int
		
		For Local i:Int=0 Until Len xy Step 2
			Local x2:Float=xy[i]
			Local y2:Float=xy[i+1]
			next_quad=GetQuad(point_x,point_y,x2,y2)
			Local diff:Int=next_quad-cur_quad
			
			Select diff
			Case 2,-2
				If ( x2 - ( ((y2 - point_y) * (x1 - x2)) / (y1 - y2) ) )<point_x
					diff=-diff
				EndIf
			Case 3
				diff=-1
			Case -3
				diff=1
			End Select
			
			total:+diff
			cur_quad=next_quad
			x1=x2
			y1=y2
		Next
		
		If Abs(total)=4 Then Return True Else Return False
	End Function
	
	'Get a quadrilateral
	Function GetQuad:Int(axis_x:Float,axis_y:Float,vert_x:Float,vert_y:Float)
		If vert_x<axis_x
			If vert_y<axis_y
				Return 1
			Else
				Return 4
			EndIf
		Else
			If vert_y<axis_y
				Return 2
			Else
				Return 3
			EndIf	
		EndIf
	
	End Function

	'Transforms a polygon
	Function TFormPoly:Float[]( xy:Float[], tform_x:Float=0, tform_y:Float=0, rot:Float=0,..
							scale_x:Float=1, scale_y:Float=1,..
							handle_x:Float=0, handle_y:Float=0,..
							origin_x:Float=0, origin_y:Float=0 )
		
		If xy.length<6 Or (xy.length&1) Return Null
		
		Local tform_xy:Float[]=xy[..]
		
		For Local i:Int=0 Until tform_xy.Length Step 2
			TFormLocalToGlobal(tform_xy[i],tform_xy[i+1],tform_x,tform_y,rot,..
							scale_x,scale_y,handle_x,handle_y,origin_x,origin_y)
		Next
		
		Return tform_xy
	End Function
	
	'transformation
	Function TFormGlobalToLocal( point_x:Float Var, point_y:Float Var,..
							tform_x:Float=0, tform_y:Float=0, rot:Float=0,..
							scale_x:Float=1, scale_y:Float=1,..
							handle_x:Float=0, handle_y:Float=0,..
							origin_x:Float=0, origin_y:Float=0 )
		
		point_x:-origin_x
		point_y:-origin_y
		
		point_x:-tform_x
		point_y:-tform_y
		
		Local mag:Float=Sqr(point_x*point_x+point_y*point_y)
		Local ang:Float=ATan2(point_y,point_x)
		point_x=Cos(ang-rot)*mag
		point_y=Sin(ang-rot)*mag
		
		point_x:/scale_x
		point_y:/scale_y
		
		point_x:+handle_x
		point_y:+handle_y
	End Function
	
	'tranformation
	Function TFormLocalToGlobal( point_x:Float Var, point_y:Float Var,..
							tform_x:Float=0, tform_y:Float=0, rot:Float=0,..
							scale_x:Float=1, scale_y:Float=1,..
							handle_x:Float=0, handle_y:Float=0,..
							origin_x:Float=0, origin_y:Float=0 )
		
		point_x:-handle_x
		point_y:-handle_y
		
		point_x:*scale_x
		point_y:*scale_y
		
		Local mag:Float=Sqr(point_x*point_x+point_y*point_y)
		Local ang:Float=ATan2(point_y,point_x)
		point_x=Cos(ang+rot)*mag
		point_y=Sin(ang+rot)*mag
		
		point_x:+tform_x
		point_y:+tform_y
		
		point_x:+origin_x
		point_y:+origin_y
	End Function
	
	'Adapted from Fredborg's code... line to line collision
	Function LinesCross:Int( x0:Float, y0:Float , x1:Float, y1:Float,..
							x2:Float ,y2:Float, x3:Float, y3:Float )
		  
		Local n:Float=(y0-y2)*(x3-x2)-(x0-x2)*(y3-y2)
		Local d:Float=(x1-x0)*(y3-y2)-(y1-y0)*(x3-x2)
		
		If Abs(d) < 0.0001 
			' Lines are parallel!
			Return False
		Else
			' Lines might cross!
			Local Sn:Float=(y0-y2)*(x1-x0)-(x0-x2)*(y1-y0)
	
			Local AB:Float=n/d
			If AB>0.0 And AB<1.0
				Local CD:Float=Sn/d
				If CD>0.0 And CD<1.0
					' Intersection Point
					Local X:Float=x0+AB*(x1-x0)
			       	Local Y:Float=y0+AB*(y1-y0)
					Return True
				End If
			End If
		
			' Lines didn't cross, because the intersection was beyond the end points of the lines
		EndIf
	
		' Lines do Not cross!
		Return False
	
	End Function
	
	'find the distance between two points, good for circle collision
	Function PointToPointDist:Float( x1:Float, y1:Float, x2:Float, y2:Float )
	
		Local dx:Float = x1-x2
		Local dy:Float = y1-y2
		
		Return Sqr(dx*dx + dy*dy)
	End Function
	
End Type

Type TPlayer Extends TEntity
	Field angle:Int
	Field Acceleration:Float
	Field hasmoved:Byte'has the player moved since the start?
	Field clf:Byte'collided last frame
	Field Snowballs:Int 'number of snowballs you have
	Method New()
		x = 500
		y = 668
		angle = 0
	End Method
	
	Method Update()
	
		If CheckWalls() And clf = True'The player is still hitting the wall, uh oh...
			Acceleration = 0
		ElseIf CheckWalls() And clf = False'The player just now hit the wall
			Acceleration = 0
			clf = True
			New TScreenShake
			PlaySound(clonk)
		ElseIf Not CheckWalls() And clf = True'not hitting the wall anymore so he didn't hit it last frame(for the next frame)
			clf = False
		End If
		
		x:+AngleToDX(angle) * Acceleration'Movement
		y:+AngleToDY(angle) * Acceleration
		If KeyDown(KEY_UP) And Acceleration < 12 Acceleration:+.25 hasmoved = True
		If KeyDown(KEY_DOWN) And Acceleration > 0 Acceleration:-.25 hasmoved = True
		If KeyDown(KEY_RIGHT)
			angle:+5
			hasmoved = True
		End If
		If KeyDown(KEY_LEFT)
			angle:-5
			hasmoved = True
		End If
		'Take a snowball in the player's inventory and fire it
		If KeyHit(KEY_SPACE) And Snowballs > 0
			For i:TSnowBall = EachIn TSnowBall.SnowBallList
				If i.playerhas And Not i.fired
					i.Fire()
					Exit
				End If
			Next
		End If
		'Easy to keep track of
		If angle > 359 angle = 0
		If angle < 0 angle = 359
		
		SetRotation(angle)
		DrawImage playerimg, x, y
		SetRotation(0)
		
	End Method
	
	Method Die()
		SCREEN = "DEAD"'Game over :(
	End Method

	Method CheckWalls:Int()
		'to be efficent, check distance from walls before going into polygon collision calculation
		If x > 850
			If TCollision.LineToTFormPoly(1024, 0, 1024, 768, playerpoints, x, y, angle, 1, 1, 22.5, 90) Return True
		End If
		If x < 200
			If TCollision.LineToTFormPoly(0, 0, 0, 768, playerpoints, x, y, angle, 1, 1, 22.5, 90) Return True
		End If
		If y > 590
			If TCollision.LineToTFormPoly(0, 768, 1024, 768, playerpoints, x, y, angle, 1, 1, 22.5, 90) Return True
		End If
		If y < 200
			If TCollision.LineToTFormPoly(0, 0, 1024, 0, playerpoints, x, y, angle, 1, 1, 22.5, 90) Return True
		End If
		Return False
	End Method
End Type

Type TDoors
	Global Doorlist:TList = CreateList()
	Field timer1:Int, timer2:Int, timer3:Int, timer4:Int, timer5:Int, timer6:Int
	Method New()
		timer1 = 400 * 20
	End Method
	Method Update()
		Local speedfactor:Float = 1 / (level *.2)
		rem
			------>lane1-------> x+
			<------lane2<------- x-
			------>lane3-------> x+
			<------lane4<------- x-
			<------lane5<------- x-
			>------lane6>------- x+
		end rem
		If level > 0'lane 1
			If timer1 > 100 * speedfactor
				New TEnemy.Create(1)
				timer1 = 0
			End If
			timer1:+1
		End If
		If level > 1'lane 2
			If timer2 > 130 * speedfactor
				New TEnemy.Create(2)
				timer2 = 0
			End If
			timer2:+1
		End If
		If level > 2'lane 3
			If timer3 > 50 * speedfactor
			 	New TEnemy.Create(3)
				timer3 = 0
			End If
			timer3:+1
		End If
		If level > 3'lane 4
			If timer4 > 80 * speedfactor
				New TEnemy.Create(4)
				timer4 = 0
			End If
			timer4:+1
		End If
		If level > 4'lane 5
			If timer5 > 60 * speedfactor
				New TEnemy.Create(5)
				timer5 = 0
			End If
			timer5:+1
		End If
		If level > 5'lane 6
			If timer6 > 75 * speedfactor
				New TEnemy.Create(6)
				timer6 = 0
			End If
			timer6:+1
		End If
		TEnemy.UpdateAll()
	End Method
	
End Type

'Screen shaker object
Type TScreenShake
	Field timer:Int'main animation timer for the shake
	Global ShakeQue:TList = CreateList()'list to keep track of shakes executed
	Method New()
		ListAddLast(ShakeQue,Self)'add to que
	End Method
	Method Update()
		'Animation steps - down then up over 8 frames
		If timer = 1
			SetViewOffset(10,10)
		End If
		If timer = 2
			SetViewOffset(20,20)
		End If
		If timer = 3
			SetViewOffset(10,10)
		End If
		If timer = 4
			SetViewOffset(0,0)
		End If
		If timer = 5
			SetViewOffset(-10,-10)
		End If
		If timer = 6
			SetViewOffset(-20,-20)
		End If
		If timer = 7
			SetViewOffset(-10,-10)
		End If
		If timer = 8
			SetViewOffset(0,0)
		End If
		timer:+1
	End Method
	Function UpdateAll()
		For Local i:TScreenShake = EachIn ShakeQue
			i.Update()'update the animation of each shake in que
		Next
	End Function
	Function Clear()'Clear the que list
		ShakeQue.Clear()
	End Function
End Type

'enemy cart
Type TEnemy Extends TEntity
	Field lane:Int'which lane
	Field direction:Int'direction multiplier
	Field speed:Float'speed multiplier
	Method Create(l:Int)
		lane = l'set the lane to the created lane argument
		rem
			------>lane1-------> x+
			<------lane2<------- x-
			------>lane3-------> x+
			<------lane4<------- x-
			<------lane5<------- x-
			>------lane6>------- x+
		end rem
		Select lane'decide whick properties to give the cart based on the lane
			Case 1
				y = 245
				x = -50
				direction = 1
				speed = 2
			Case 2
				y = 250
				x = 1074
				direction = -1
				speed = 3
			Case 3
				y = 345
				x = -50
				direction = 1
				speed = 1
			Case 4
				y = 350
				x = 1074
				direction = -1
				speed = 2
			Case 5
				y = 400
				x = 1074
				direction = -1
				speed = 1.5
			Case 6
				y = 495
				x = -50
				direction = 1
				speed = 3.8
		End Select
		ListAddLast(EnemyList, Self)'add to the list of carts
		
	End Method
	Method Update()
		x:+6 * direction * speed'decide weither to go left or right, and how fast
		If direction = 1'if going right
			If x > 1140 EnemyList.Remove(Self)
			SetRotation(180)
			DrawImage enemyimg, x, y
			SetRotation(0)		
		Else'if going left
			If x < - 150 EnemyList.Remove(Self)
			DrawImage enemyimg, x, y
		End If
		If Collided() player.Die()'player got hit
	End Method
	
	Method Collided:Int()
		'do a quicker circle collision check before going into rotated polygon math
		'if the circles don't collide, neither do the polygons.
		If TCollision.PointToPointDist(x, y, player.x, player.y) > 200 Return False
		
		'do a detailed rotated rectangle collision check based on direction
		If direction = 1
			If TCollision.TFormPolyToTFormPoly(enemypoints, x, y, 180, 1, 1, 0, 0, 0, 0, playerpoints, player.x, player.y, player.angle, 1, 1, 22.5, 90)
				Return True
			End If
		Else
			If TCollision.TFormPolyToTFormPoly(enemypoints, x, y, 0, 1, 1, 0, 0, 0, 0, playerpoints, player.x, player.y, player.angle, 1, 1, 22.5, 90)
				Return True
			End If
		End If
		
	End Method
	'quick function to update all carts on the list
	Function UpdateAll()
		For e:TEnemy = EachIn EnemyList
			e.Update()
		Next
	End Function
	
End Type

'Snow flake emitter object
Type TSnowStorm
	Field timer:Int, timer2:Int
	
	'Randomly drop flakes
	Method Update()
		timer:+1
		If timer > Rand(5, 10)
			timer = 0
			flake:TSnowFlake = New TSnowFlake
		End If
		TSnowFlake.UpdateAll()
	End Method
	
End Type

'The snow flakes that fall from the top of the screen
Type TSnowFlake Extends TEntity 'Snow flake object
	Global RandomNumberList:TList = CreateList()
	Field angle:Int
	Method New()
		y = -10'start off screen
		x = Rand(10, 1020)'random position
		ListAddLast(RandomNumberList,Self)
	End Method
	Method Update()
		If y > 790 RandomNumberList.remove(Self)
		y:+8
		x:+Cos(angle) * 10'Wavy effect
		angle:+5
		If angle > 360 angle = 0
		DrawImage bflakeimage, x, y
	End Method

	Function UpdateAll()
		For Local i:TSnowFlake = EachIn RandomNumberList
			i.Update()
		Next
	End Function
	Function Clear()
		RandomNumberList.Clear()
	End Function
End Type

'the button class
Type TButton Extends TEntity
	Field id:String
	Field Highlight:Byte
	Field Hover:Int
	Field Nimage:TImage
	Field HLimage:TImage
	
	'creates a button with a image and a hlight image
	Function CreateButton(_x:Int,_y:Int, _id:String, NI:TImage, HI:TImage)
		Local NewButton:TButton = New TButton
		NewButton.x = _x
		NewButton.y = _y
		NewButton.ID = _id
		NewButton.NImage = NI
		NewButton.HLImage = HI
		ListAddLast(ButtonList,NewButton)
	End Function
	
	'updates the buttons
	Function UpdateButtons()
		For Local i:TButton = EachIn ButtonList
			i.Update()
		Next
	End Function
	
	'method that checks for clicks and hovers
	Method Update()
		If MouseX() > x And MouseX()<x+ImageWidth(Nimage) And MouseY()>y And MouseY()<y+ImageHeight(Nimage)
			Highlight = True
			If Hover <> 2 Hover = 3
			If MouseHit(1)
				TEventFire.NewEvent(ID)
				'PlaySound(ClickSound)
			End If
		Else
			Highlight = False
			Hover = 1
		End If
		If Hover = 3
			'PlaySound(HoverSound)
			Hover = 2
		End If
		If Highlight
			DrawImage HLImage,x,y
		Else
			DrawImage NImage,x,y
		End If
	End Method
End Type

'Event object
Type TEventFire
	Field Message:String
	
	'a new event is simple a object with a string, the string is what the button class fills.
	Function NewEvent(msg:String)
		Local NewEvent:TEventFire = New TEventFire
		NewEvent.Message = msg
		ListAddLast(EventList,NewEvent)
	End Function
			
End Type

'gift object
Type TGift Extends TEntity
	Field show:Byte
	'drop the gift.. aka reset it
	Method Drop()
		GIFT = True
		x = 472
		y = 50
	End Method
	'Hide the gift.. aka give it the the player
	Method Hide()
		GIFT = False
	End Method
	Method CheckPlayer:Byte()
		'Check distance first
		If TCollision.PointToPointDist(x, y, player.x, player.y) > 300 Return False
		If TCollision.PolyToTFormPoly([x, y, x + 40, y, x + 40, y + 40, x, y + 40], playerpoints, player.x, player.y, player.angle, 1, 1, 22.5, 90) Return True
		Return False
	End Method
	'check the end zone
	Method CheckEndZone:Byte()
		'circle check first
		If TCollision.PointToPointDist(player.x, player.y, 412, 718) > 300 Return False
		If TCollision.PolyToTFormPoly([412.0, 668.0, 612.0, 668.0, 612.0, 768.0, 412.0, 768.0], playerpoints, player.x, player.y, player.angle, 1, 1, 22.5, 90) Return True
		Return False
	End Method
	'update the gift
	Method Update()
		If GIFT'the player doesn't have the gift
			If CheckPlayer() Hide()
			DrawImage giftimg, x, y'just draw it
		Else'the player has the gift
			SetRotation(player.angle)'match the player's rotation
			DrawImage giftimg, Cos(player.angle - 102.5) * 90 + (player.x), Sin(player.angle - 102.5) * 90 + player.y'draw the image in the player's basket
			SetRotation(0)
			DrawImage endzone, 412, 668'draw the endzone.. where you have to get it to
			ParticleExplosion(player.x, player.y, bflakeimage, 10, 10, 4)'Ahhh! the player has the gift
			ParticleExplosion(player.x, player.y, gflakeimage, 10, 10, 4)
			If CheckEndZone()
				ParticleExplosion(512, 718, bflakeimage, 50, 100, 4)'ooh pretty
				ParticleExplosion(512, 718, rflakeimage, 50, 100, 4)
				ParticleExplosion(512, 718, gflakeimage, 50, 100, 4)
				Drop()'reset the gift
				POINTS:+1'add some score, boost the level
			 	level:+.25
				PlaySound(cash)'cash in the gift
			End If
		End If
	End Method
End Type

'tutorial object
Type TTutorial
	'method to check which popups are needed at the time
	Method CheckLevel()
		popuplist.Clear()'clear the list - start over
		'change which are displayed based on level and other circumstances
		If level = 0
			New TPopup.Create("Welcome to Black Friday!", 0, 0)
			New TPopup.Create("Time to go shopping!", 0, 80)
			If Not player.hasmoved 'if the player hasn't moved yet
				 New TPopup.Create("Use the [->] keys!", 220, 650)
			End If
			If GIFT
				New TPopup.Create("Quick! Get the gift!", 520, 70)
			Else
				New TPopup.Create("Now buy it!", 700, 650)
			End If
		End If
		If level =.25
			New TPopup.Create("Buy as many as you can!", 700, 650)
			New TPopup.Create("Don't get hit!", 40, 400)
			New TPopup.Create("Collect Clumped up snow!", 750, 20)
			New TPopup.Create("Press [SPACE] to throw snow!", 750, 100)
		End If
		If level =.5
			New TPopup.Create("Good Luck!", 0, 0)
		End If
	End Method
	
	Method Update()
		CheckLevel()
		For Local i:TPopup = EachIn popuplist
			i.Draw()
		Next
	End Method
End Type

'Popupd used by the tutorial object
Type TPopup Extends TEntity
	Field Text:String
	Method Create(t:String, _x:Float, _y:Float)
		Text = t
		x = _x
		y = _y
		ListAddLast(popuplist, Self)
	End Method
	Method Draw()
		DrawImage popupimg, x, y
		SetColor 0, 0, 0
			DrawText Text, (x + 150) - (TextWidth(Text) / 2), (y + 40) - (TextHeight(Text) / 2)
		SetColor 255, 255, 255
	End Method
End Type

'#REGION Functions
'Cleans up the game
Function CleanUp()
	TParticle.ClearAll()
	EnemyList.Clear()
	player = Null
	FlushKeys()
	FlushMouse()
	POINTS = 0
	level = 0
	TSnowBall.SnowBallList.Clear()
End Function

'cleans GUI components
Function CleanGUI()
	EventList.Clear()
	ButtonList.Clear()
End Function


'Same as below
Function AngleToDX:Float(angle:Int)
	Return Sin(angle)
End Function

'Take an angle and returns a direction
Function AngleToDY:Float(angle:Int)
	Return -Cos(angle)
End Function

'Draw Background
Function DrawBG()
	TScreenShake.UpdateAll()'update the screenshaking effects if any
	DrawImage bgimage2, 0, 0'Draw the main background image
	DrawImage snowballimg, 20, 730'Draw the snow ball status
	SetColor 230, 20, 20
		DrawText POINTS, 170, 700'Draw the gifts gotten
		DrawText "x " + player.Snowballs, 50, 730'Snow ball status
	SetColor 255, 255, 255
End Function

'creates a random burst of particles at a location
Function ParticleExplosion(_x:Float, _y:Float, image:TImage, n:Int, frames:Int, speed_multiplyer:Float = 0)
	Local speed:Float
	
	For Local i:Int = 1 To n
		Local dir:Int = Rand(0, 359)'random directions
		
		If speed_multiplyer
			speed = Rnd(0.08*speed_multiplyer, 1.5*speed_multiplyer) 'multiplie base speed by multiplier
		Else
			speed = Rnd(0.08, 1.5) 'base speed if no multiplier
		End If
		
		New TParticle.Create(_x, _y, image, dir, speed, frames - 10 + Rand((frames * 1.40)), True)
	Next
	
End Function

'Offsets the whole screen - used for a screen shake effect
Function SetViewOffset(offsetx:Float,offsety:Float)
	Global Original_offsetx:Float'Variable to remember the current offset
	Global Original_offsety:Float'Variable to remember the current offset
	glMatrixMode GL_PROJECTION'Switch the matrix mode
	glTranslatef offsetx-Original_offsetx,offsety-Original_offsety,0'Translate the camera to the given offsets
	Original_offsetx = offsetx'Store the current offset
	Original_offsety = offsety'Store the current offset
	glMatrixMode GL_MODELVIEW'Switch the Matrix mode back
	glLoadIdentity'Reset
End Function

'return a blurred screenshot of the current backbuffer
Function GetBlurredSS:TImage()
	Local hw:Float = GraphicsWidth() / 2
	Local hh:Float = GraphicsHeight() / 2
	
	'Take a screenshot of the game
	
	Local Screenshot:TPixmap = GrabPixmap(0, 0, 1024, 768)
	Local Ss:TImage = LoadImage(Screenshot)
	MidHandleImage(Ss)
	Cls'clear the backbuffer
	'Repeatively draw the screenshot at various sizes to create a blur effect
	SetBlend LIGHTBLEND
	SetAlpha(.1)
	SetScale(.98, .98)
	DrawImage Ss, hw + 10, hh
	DrawImage Ss, hw - 10, hh
	DrawImage Ss, hw, hh + 10
	DrawImage Ss, hw, hh - 10
	DrawImage Ss, hw, hh
	SetScale(1, 1)
	SetAlpha(1)
	SetBlend ALPHABLEND
	'Capture this blurred screenshot into a new image
	Local bss:TImage = CreateImage(1024, 768)
	GrabImage(bss, 0, 0)
	Cls 'clear the backbuffer
	
	Return bss'return the blurred background screenshot
End Function

'Captures a blurred screenshot, then whites it out with an interval
Function WhiteOutScreen(interval:Float)
	Local a:Float = 0.0
	Local bg:TImage = GetBlurredSS()
	Repeat
		Cls
		DrawImage bg, 0, 0
		SetAlpha(a)
		DrawRect(0, 0, GraphicsWidth(), GraphicsHeight())
		SetAlpha(1)
		a:+interval
		Flip 1
	Until a >= 1
	SetAlpha(1)
End Function

Rem
	 A function that sets the current window Icon *Windows only*
	about: Can be called with a icon file name, or just AppFile which would get an imbedded icon, call imediately after setting graphics mode
End Rem
Function SetIcon(iconname$)	
	?Win32
	Local TheWindow:Int = GetActiveWindow:Int()'Win32 function to get the current hwnd
	Local icon:Int = ExtractIconA(TheWindow, iconname, 0)'grab the icon
	Local WM_SETICON:Int = $80'win32 nonsense... :(
	Local ICON_SMALL:Int = 0
	Local ICON_BIG:Int = 1
	SendMessage(TheWindow, WM_SETICON, ICON_BIG, icon)'set the icon
	?
End Function

'draws a given image at the mouse position
Function UpdateMouse(img:TImage)
	DrawImage img, MouseX(), MouseY()
End Function

'#END REGION