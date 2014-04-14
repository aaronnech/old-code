

Type TEntity Extends tlEntity
	Field Effect:tlEffect
End Type


Type TBlock Extends tlEntity
	Field Placed:Byte'hit the bottom?
	Field tiles:Int[4]
	Field ax:Int, ay:Int
	Field rot:Int
	Field Timer:Int
	Field Shape:Int[4, 4]
	Field szShape:String
	Field Length:Int, Height:Int
	Global BlockList:TList = CreateList()
	
	Method Create:TBlock(_shape:String, _ax:Int, _ay:Int)
		szShape = _shape
		LoadShape(szShape, 0)
		x = _ax * TILE_SIZE
		y = _ay * TILE_SIZE
		ax = _ax
		ay = _ay
		ListAddLast(BlockList, Self)
		CopyToScreen()
		Return Self
	End Method
	
	Method Update()
		If Not Placed
			If KeyHit(KEY_LEFT) Translate(-1, 0)
			If KeyHit(KEY_RIGHT) Translate(1, 0)
			If KeyHit(KEY_Z)
				rot:+1
				If rot > 3 rot = 0
				LoadShape(szShape, rot)
				RemoveFromScreen()
				CopyToScreen()
			End If
			If Timer > 20
				Translate(0, 1)
				Timer = 0
			End If
			Timer:+1
		End If
	End Method
	
	Method CopyToScreen()
		For Local _x = 0 To 3
			For Local _y = 0 To 3
				If Shape[_x, _y] <> 0 And Screen[ax + _x, ay + _y] <> 0
					Return False
				End If
			Next
		Next
		For _x = 0 To 3
			For _y = 0 To 3
				If Shape[_x, _y] <> 0
					Screen[ax + _x, ay + _y] = Shape[_x, _y]
				End If
			Next
		Next
	End Method
	
	Method RemoveFromScreen()
		For _x = 0 To Length
			For _y = 0 To height
				Screen[ax + _x, ay + _y] = 0
			Next
		Next
	End Method
	
	Method Translate(distx:Int, disty:Int)
		If ax + distx < 0 Return
		If ax + distx + Length > 24 Return
		RemoveFromScreen()
		ax:+distx
		ay:+disty
		CopyToScreen()
	End Method
	Method Solidify()
		Placed = True
	End Method
	Method LoadShape(_shape:String, rotation:Int)
		Local data:Int
		Select _shape
			Case "L"
				Select rotation
					Case 0
						RestoreData L0
						Length = 3
						height = 3
					Case 1
						RestoreData L90
						Length = 3
						height = 2
					Case 2
						RestoreData L180
						Length = 2
						height = 3
					Case 3
						RestoreData L270
						Length = 3
						height = 2
				End Select
				For Local _x:Int = 0 To 3
					For Local _y:Int = 0 To 3
						ReadData data
						Shape[_x, _y] = data
					Next
				Next
			Case "O"
				
			Case "I"
				
			Case "T"
				
			Case "S"
				
			Case "J"
				
			Case "Z"
				
		End Select
	End Method
	
	Function UpdateAll()
		For Local i:TBlock = EachIn BlockList
			i.Update
		Next
	End Function
End Type

Function DrawTiles()
	For Local x:Int = 1 To 25
		For Local y:Int = 1 To 24
			If Screen[x - 1, y - 1]
				DrawRect x * TILE_SIZE, y * TILE_SIZE, TILE_SIZE, TILE_SIZE
			End If
		Next
	Next
End Function
