Type TQuadtree
	Field Nodes:TList
	Field HIGHESTLEVEL:Int
	Field NodeCount:Int
	
	Function CreateRoot:TQuadtree(_x:Int, _y:Int, _w:Int, _h:Int)
		QT:TQuadtree = New TQuadtree
		QT.Nodes = CreateList()
		QT.CreateNode(_x, _y, _w, _h, 0, Null)
		
		Return QT
	End Function
	
	Method CreateNode:TQuadnode(_x:Int, _y:Int, _w:Int, _h:Int, _level:Int, Parent:TQuadNode)
		N:TQuadNode = New TQuadNode
		N.x = _x
		N.y = _y
		N.w = _w
		N.h = _h
		N.Level = _level
		N.Tree = Self
		N.Parent = Parent

		ListAddLast(Nodes, N)
	End Method
	
	Method SubDivideTree()
		Local HL:Int = HIGHESTLEVEL
		For Local i:TQuadNode = EachIn Nodes
			If i.Level = HL i.SubDivide()
		Next
	End Method
End Type

Type TQuadNode
	Field x:Int, y:Int, w:Int, h:Int
	Field Level:Int
	Field Parent:TQuadNode
	Field Children:TQuadNode[4]
	Field Tree:TQuadtree
	Field material:Int
	
	
	
	Method SubDivide()
		Print "SUBDIVIDINGGGG..... NODE COUNT NOW " + Tree.Nodes.Count()
		Children[0] = Tree.CreateNode(x, y, w / 2, h / 2, Level + 1, Self)
		Children[1] = Tree.CreateNode(x + (w / 2), y, w / 2, h / 2, Level + 1, Self)
		Children[2] = Tree.CreateNode(x, y + (h / 2), w / 2, h / 2, Level + 1, Self)
		Children[3] = Tree.CreateNode(x + (w / 2), y + (h / 2), w / 2, h / 2, Level + 1, Self)
		If Level + 1 > Tree.HIGHESTLEVEL Tree.HIGHESTLEVEL = Level + 1
	End Method
	
End Type

Type TTerrainQMap
	Field Tree:TQuadtree
	Field pixmap:TPixmap
	
	Function Generate:TTerrainQMap(img:TImage)
		Qmap:TTerrainQMap = New TTerrainQMap
		Local white:Byte, black:Byte
		
		
		Qmap.Tree = TQuadtree.CreateRoot(0, 0, 800, 600)
		Qmap.Tree.SubDivideTree()
		Return Qmap
	End Function
	
End Type


Graphics 800, 600
SetBlend ALPHABLEND

terrain:TImage = LoadImage("terrain.bmp")
Local Map:TTerrainQMap = TTerrainQMap.Generate(terrain)

DrawImage terrain, 0, 0
DrawQuadTree(Map.Tree)

While Not KeyHit(KEY_ESCAPE)
	If MouseHit(1)
		Local going:Byte = True
		Local mx:Int = MouseX()
		Local my:Int = MouseY()
		Print "boo"
		For Local i:TQuadNode = EachIn Map.Tree.Nodes
			If i.x < mx And i.y < my And i.x + i.w > mx And i.y + i.h > my
				If i.children[0] = Null And i.children[1] = Null And i.children[2] = Null And i.children[3] = Null
					i.SubDivide()
					Cls
					DrawQuadTree(Map.Tree)
					going = False
					Print "i.x/y = " + i.x + "/" + i.y
					Print "i.C1.x/y = " + i.children[2].x + "/" + i.children[2].y
					Exit
				End If
			End If
		Next
	End If
Wend
End


Function DrawQuadTree(Tree:TQuadtree)
	SetColor 255, 0, 0
	For Local i:TQuadNode = EachIn Tree.Nodes
		DrawLine i.x, i.y, i.x + i.w, i.y
		DrawLine i.x, i.y, i.x, i.y + i.h
		DrawLine i.x + i.w, i.y + i.h, i.x + i.w, i.y
		DrawLine i.x + i.w, i.y + i.h, i.x, i.y + i.h
	Next
	SetColor 255, 255, 255
	Flip
End Function