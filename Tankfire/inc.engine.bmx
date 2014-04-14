' Horizontal line type
Type hline
	Field _start:Int
	Field _end:Int
	Field _y:Int
	Field Added:Int
	
	Method Draw(img:TImage)
		If Added
			DrawLine(_start, _y, _end, _y)
		Else
			DrawSubImageRect(img, _start, _y, _end - _start + 1, 1, _start, _y, _end - _start + 1, 1)
		End If
	End Method

	
	Function Create:hline (s:Int, e:Int, y:Int, a:Int)
		Local hl:hline = New hline
		hl._start = s
		hl._end = e
		hl._y = y
		hl.Added = a
		Return hl
	End Function 
	

	Method Split:Int ( hl:hline, hlDest:hline Var )
		If ( hl._y = _y )
			If ( _start <= hl._start )
				If (_end >= hl._end)
					If (hl._end + 1 < _end)
						If hl.Added
							hlDest = hline.Create(hl._end + 1, _end, _y, True)
						Else
							hlDest = hline.Create(hl._end + 1, _end, _y, False)
						End If
					End If 
					_end = hl._start - 1
					Return ( _end <= _start )
				Else If ( _end >= hl._start )
					_end = hl._start - 1
					Return ( _end <= _start )
				End If 
			Else If ( _start <= hl._end )
				If ( _end <= hl._end )
					Return True
				Else 
					_start = hl._end + 1
					Return ( _end <= _start )
				End If 
			End If 
		End If 
		Return False 
	End Method

	
	Method Move( mx:Int, my:Int )
		_start :+ mx
		_end :+ mx
		_y :+ my
	End Method 
	
	Method Collide:Int ( x:Int, y:Int )
		If ( _y = y ) Return ( x >= _start And x <= _end )
		Return False 
	End Method 
	
End Type 

' A shape created from the horizontal lines..
Type hshape
	Field img:TImage
	Field lines:TList
	Field x:Int, y:Int
	
	Function Create:hshape ( filename:String = "" )
		Local hs:hshape = New hshape
		hs.lines = New TList
		If ( Len( filename ) ) hs.img = LoadImage( filename )
		Return hs
	End Function 
	
	Method Draw()
		For Local hl:hline = EachIn lines
				hl.draw(img)
		Next
	End Method
	
	Method AddLine(s:Float, e:Float, y:Float, a:Int)
		lines.AddLast(hline.Create(s, e, y, a))
		SortList( lines, True, hshape.SortLinesByHeight )
	End Method
	
	Function SortLinesByHeight:Int ( h0:Object, h1:Object )
		Return hline(h1)._y < hline(h0)._y
	End Function 
	
	Method Position( _x:Int, _y:Int )
		Local xmove:Int = _x - x
		Local ymove:Int = _y - y
		x :+ xmove
		y :+ ymove
		If ( xmove Or ymove )
			For Local hlThis:hline = EachIn lines
				hlThis.Move( xmove, ymove )
			Next
		End If 
	End Method 
	
	Method Subtract( hs:hshape )
		For Local hlOther:hline = EachIn hs.lines
			For Local hlThis:hline = EachIn lines
				Local hlNew:hline
				If ( hlOther._y < hlThis._y ) Exit 
				If ( hlThis.Split( hlOther, hlNew ) )
					lines.Remove( hlThis )
				End If 
				If ( hlNew ) 
					lines.AddLast( hlNew )
					SortList( lines, True, hshape.SortLinesByHeight )
				End If 
			Next
		Next 
	End Method
	
	Method CollidePixel:Int ( x:Int, y:Int )
		For Local hlThis:hline = EachIn lines
			If ( hlThis._y > y ) 
				Return False 
			Else If ( hlThis._y = y And hlThis.Collide( x, y ) )
				Return True 
			End If 
		Next
		Return False 
	End Method
	
	Function GenShape:hshape(imagePath:String)
		Local shape:hshape = hshape.Create(imagePath)
		Local dot:hshape = hshape.Create()
		dot.AddLine(0, 1, 0, False)
		Local tmp:TPixmap = LoadPixmap(imagePath)
		Local argb:Int
		Local a:Int
			
		For Local t:Int = 0 To tmp.height - 1
				shape.AddLine(0, tmp.width - 1, t, False)
		Next
			
		For Local x:Int = 0 To tmp.width - 1
			For Local y:Int = 0 To tmp.height - 1
				argb = ReadPixel(tmp, x, y)
				a = (argb Shr 24) & $ff
				If a = 0 Then
					dot.Position(x, y)
					shape.Subtract(dot)
				End If
			Next
		Next
		Return shape
	End Function
	
End Type 

Type TExplosion
	Global ExplosionList:TList = CreateList()
	Field frame:Int
	Field x:Int, y:Int
	Field s:Float, a:Float
	Method Create:TExplosion(_x:Int, _y:Int)
		x = _x
		y = _y
		ListAddLast(ExplosionList, Self)
	End Method
	Method Update()
		If frame = 10
			ExplosionList.Remove(Self)
			exphole.Position(x - 22, y - 22)
			terrainshape.Subtract(exphole)
		End If
		s = frame *.1
		a = 1.0 - (.05 * frame)
		SetScale s, s
		SetAlpha a
		DrawImage explosion, x, y
		SetScale 1, 1
		SetAlpha 1
		frame:+1
	End Method
	Function UpdateAll()
		For Local e:TExplosion = EachIn ExplosionList
			e.Update()
		Next
	End Function
End Type

Type TPlayer
	Global PlayerList:TList = CreateList()
	Field x:Float, y:Float
	Field dy:Float, dx:Float
	Field GunAngle:Float
	Field StartFire:Byte
	Field FireCounter:Int
	Field power:Int
	Field Weapon:Int = 1
	
	Method New()
		x = Rand(40, 900)
		y = 350
		ListAddLast(PlayerList, Self)
	End Method
	
	Function DrawAll()
		For Local p:TPlayer = EachIn PlayerList
			DrawImage player, p.x, p.y
			p.CollisionUpdates()
		Next
	End Function
	
	Method CollisionUpdates()
		If terrainshape.CollidePixel(x + 10, y + 14)
			dy = 0
		Else
			dy = 3
		End If
		y:+dy
	End Method
	
	Method Update()
		dx = 0
		If KeyDown(KEY_LEFT)
			dx = -1
		End If
		If KeyDown(KEY_RIGHT)
			dx = 1
		End If
		If KeyHit(KEY_Z) Weapon:-1
		If KeyHit(KEY_X) Weapon:+1
		If Weapon > 2 Weapon = 1
		If Weapon < 1 Weapon = 2
		If dx > 0
			If terrainshape.CollidePixel(x + 20, y)
				dx = 0
			ElseIf terrainshape.CollidePixel(x + 20, y + 13)
				y:-1
			End If
		End If
		If dx < 0
			If terrainshape.CollidePixel(x, y)
				dx = 0
			ElseIf terrainshape.CollidePixel(x, y + 13)
				y:-1
			End If
		End If
		x:+dx
		PowerBarUpdate()
		DrawText "Current Weapon:" + Weapon, 0, 40
	End Method
	
	Method PowerBarUpdate()	
		If MouseDown(1)
			StartFire = True
			power:+1
		ElseIf Not MouseDown(1) And StartFire = True
			New TBullet.Create(PointsToAngle(x + 10, y + 7, MouseX(), MouseY()) + 90, Self)
			power = 1
			StartFire = False
			Turn:+1
			If Turn > PLAYERS Turn = 1
		Else
			power = 1
		End If
		DrawText "Power:" + power, 0, 0
	End Method

End Type

Type TBullet
	Global BulletList:TList = CreateList()
	Field dx:Float, dy:Float
	Field x:Float, y:Float
	Field power:Float
	Field Weapon:Int

	
	Method Create:TBullet(a:Float, p:TPlayer)
		power = p.power
		Weapon = p.Weapon
		dx = AngleToDX(a)
		dy = AngleToDY(a)
		x = p.x + 10 + (dx * 3)
		y = p.y + 7 + (dy * 3)
		ListAddLast(BulletList, Self)
	End Method
	Method Update()
		dy:+0.025
		x:+dx * (power / 5)
		y:+dy * (power / 5)
		If x > 1024 Or x < 0 Or y > 768
			BulletList.Remove(Self)
		End If
		If Collide() BulletList.Remove(Self) Detonate()
		DrawRect x, y, 4, 4
	End Method
	Method Collide:Byte()
		If terrainshape.CollidePixel(x + 2, y + 2)
			Return True
		End If
	End Method
	Method Detonate()
		Select Weapon
			Case 1
				New TExplosion.Create(x + 2, y + 2)
			Case 2
				For Local ty:Int = y - 100 To y
					terrainshape.AddLine(x - 5, x + 5, ty, True)
				Next
		End Select
	End Method
	Function UpdateAll()
		For Local b:TBullet = EachIn BulletList
			b.Update()
		Next
	End Function
End Type



Function AngleToDY:Float(angle:Float)
	Return -Cos(angle)
End Function

Function AngleToDX:Float(angle:Float)
		Return Sin(angle)
End Function
	
Function PointsToAngle:Float(x1:Float, y1:Float, x2:Float, y2:Float)
	Local direction#= ATan2(y1-y2,x1-x2)+180
	
	While direction > 360
		direction:-180
	Wend
	
	While direction<0
		direction:+180
	Wend
	
	Return direction

EndFunction