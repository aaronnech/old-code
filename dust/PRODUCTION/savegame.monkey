
Strict 
Import savegameconfig
Import reflection
Import savegameextender
Global serial_objects:IntMap<Object>
Global unique_int:Int

Function reset_ids:Void(obj:Object)

Local clas:=GetClass( obj )

Local elemty:=clas.ElementType
If elemty
If	clas.ArrayLength(obj)>0
	For Local i:=0 Until clas.ArrayLength( obj )
		reset_ids(clas.GetElement(obj,i))
	Next
Endif
Endif

If clas.Name.StartsWith( "monkey.list" )
	Local toarr:=clas.GetMethod( "ToArray",[] )
	Local arrty:=toarr.ReturnType
	Local arr:=toarr.Invoke( obj,[] )
	Local len:=arrty.ArrayLength( arr )
	For Local i:=0 Until len
	reset_ids(arrty.GetElement( arr,i))
	Next
Endif

If clas.Name.StartsWith("monkey.map")
Local objenumer:=clas.GetMethod( "ObjectEnumerator",[] )
If objenumer<>Null
Local hasnext:=objenumer.ReturnType.GetMethod( "HasNext",[] )
Local nextobj:=objenumer.ReturnType.GetMethod( "NextObject",[] )
Local getkey:=nextobj.ReturnType.GetMethod( "Key",[] )
Local getval:=nextobj.ReturnType.GetMethod( "Value",[] )
Local enumer:=objenumer.Invoke( obj,[] ),n:=0
If getkey<>Null
If getval<>Null
	While UnboxBool( hasnext.Invoke( enumer,[] ) )
			Local node:=nextobj.Invoke( enumer,[] )
		If node<>Null
			Local key:=getkey.Invoke( node,[] )
			Local val:=getval.Invoke( node,[] )
			reset_ids(val)
		Endif
	Wend
Endif
Endif
Endif
Endif

If clas.ExtendsClass(GetClass(New saveable))

Local s:saveable=saveable(obj)
If s.unid<>0
s.unid=0
For Local thisfield:=Eachin clas.GetFields(True)
reset_ids(thisfield.GetValue(obj))
Next
Else
Return
Endif
Endif

End Function

Function object_to_node:ConfigNode(obj:Object,classnode:ConfigNode)
Local sa:saveable=New saveable
Local clas:=GetClass( obj )
If classnode=Null
classnode=New ConfigNode("Object")
Endif
If clas=BoolClass()
	Local t:=String(Int( UnboxBool( obj ) )).ToLower()
	If t<>"0"
	classnode.SetAttribute("value",t)
	classnode.SetAttribute("type","Bool")
	Return classnode
	Endif
Endif

If clas=IntClass()
	Local t:=String( UnboxInt( obj ) ).ToLower()
	If t<>"0"
	classnode.SetAttribute("value",t)
	classnode.SetAttribute("type","Int")
	Return classnode
	Endif
Endif
If clas=FloatClass()
	Local t:=String( UnboxFloat( obj ) ).ToLower()
	If t<>"0.0"
	classnode.SetAttribute("value",t)
	classnode.SetAttribute("type","Float")
	Return classnode
	Endif
Endif
If clas=StringClass()
	Local t:=String(UnboxString(obj))
	If t<>""
	classnode.SetAttribute("value",t)
	classnode.SetAttribute("type","String")
	Return classnode
	Endif
Endif
Local elemty:=clas.ElementType
If elemty
If	clas.ArrayLength(obj)>0
	classnode.SetAttribute("type",clas.Name)
	classnode.SetAttribute("length",clas.ArrayLength( obj ))
	For Local i:=0 Until clas.ArrayLength( obj )
		
		Local a_node:=object_to_node(clas.GetElement( obj,i ),Null)
		If a_node<>Null
			classnode.AddChild(a_node)
			a_node.name="AE"
			a_node.SetAttribute("AP",String(i))
		Endif
	Next
	Return classnode
Endif
Endif

If clas.Name.StartsWith("monkey.list")
classnode.SetAttribute("type",clas.Name)
add_list_to_node(obj,classnode)
Return classnode
Endif
If clas.Name.StartsWith("monkey.map")
Local objenumer:=clas.GetMethod( "ObjectEnumerator",[] )
If objenumer<>Null
Local hasnext:=objenumer.ReturnType.GetMethod( "HasNext",[] )
Local nextobj:=objenumer.ReturnType.GetMethod( "NextObject",[] )
Local getkey:=nextobj.ReturnType.GetMethod( "Key",[] )
Local getval:=nextobj.ReturnType.GetMethod( "Value",[] )
Local enumer:=objenumer.Invoke( obj,[] ),n:=0
If getkey<>Null
If getval<>Null
classnode.SetAttribute("type",clas.Name)
	While UnboxBool( hasnext.Invoke( enumer,[] ) )
			Local node:=nextobj.Invoke( enumer,[] )
			If node<>Null
			Local key:=getkey.Invoke( node,[] )
			Local val:=getval.Invoke( node,[] )
			Local a_node:=object_to_node(key,Null)
			If a_node<>Null
			classnode.AddChild(a_node)
			Local thisnode:=object_to_node(val,Null)
			If thisnode<>Null
			a_node.AddChild(thisnode)
			Endif
			Endif
			Endif
			Wend
Endif
Endif
Endif
Return classnode
Endif

If clas.ExtendsClass(GetClass(sa))
Local s:saveable=saveable(obj)
If s.unid=0

classnode.SetAttribute("type",clas.Name)
unique_int+=1
s.unid=unique_int
serial_objects.Set(s.unid,s)
Local fieldnode:ConfigNode

While clas<>Null
	For Local thisfield:=Eachin clas.GetFields(False)
	Local a_node:ConfigNode=object_to_node(thisfield.GetValue(obj),Null)
	
	If a_node<>Null
	a_node.name="Fi"
	a_node.SetAttribute("fn",thisfield.Name)
	classnode.AddChild(a_node)
	Endif
	Next
clas=clas.SuperClass
Wend


Return classnode
Else
Local s:saveable=saveable(obj)
classnode.SetAttribute("uid",s.unid)
Return classnode
Endif
Else
Endif

Return Null
End Function

Function add_list_to_node:Void(obj:Object,this_node:ConfigNode)

Local clas:=GetClass(obj)
If clas<>Null
	Local toarr:=clas.GetMethod( "ToArray",[] )
	Local arrty:=toarr.ReturnType
	Local arr:=toarr.Invoke( obj,[] )
	Local len:=arrty.ArrayLength( arr )
	For Local i:=0 Until len
	Local objnode:=New ConfigNode("LE")
	objnode=object_to_node(arrty.GetElement( arr,i ),objnode)
	If objnode<>Null
		this_node.AddChild(objnode)
	Endif
	Next
Endif

End Function

Function node_to_object:Object(node:ConfigNode,nam:String)
Local uid:String=node.GetAttribute("uid")
If uid<>""
If serial_objects.Get(Int(uid))=Null
Error "its null"
Endif
Return serial_objects.Get(Int(uid))
Endif
Select node.GetAttribute("type")
Case "Bool"
Return BoxBool(Bool(Int(node.GetAttribute("value"))))
Case "Int"
Return BoxInt(Int(node.GetAttribute("value")))
Case "String"
Return BoxString(node.GetAttribute("value"))
Case "Float"
Return BoxFloat( Float(node.GetAttribute("value")) )
Default
If node.GetAttribute("type").Find("monkey.boxes.ArrayObject")=0
Local clas:=GetClass(node.GetAttribute("type"))
If clas<>Null
Local obj:=clas.NewArray(Int(node.GetAttribute("length")) )
If node.GetChildren()<>Null
For Local c:=Eachin node.GetChildren()
Local pos:Int=Int(c.GetAttribute("AP"))
clas.SetElement( obj,pos, node_to_object(c,nam))
Next
Endif
Return obj
Endif
Endif

Local clas:=GetClass(node.GetAttribute("type"))
Local obj:Object=clas.NewInstance()
If node.GetAttribute("type").Find("monkey.list")=0		
		Local elemty:=clas.GetMethod( "ToArray",[] ).ReturnType.ElementType
		Local add:=clas.GetMethod( "AddLast",[elemty] )
If node.GetChildren()<>Null
	For Local c:=Eachin node.GetChildren()
			add.Invoke( obj,[node_to_object(c,nam)] )
	Next
Endif

Endif

If node.GetAttribute("type").Find("monkey.map")=0
	Local objenumer:=clas.GetMethod( "ObjectEnumerator",[] )
				Local nextobj:=objenumer.ReturnType.GetMethod( "NextObject",[] )
				Local getkey:=nextobj.ReturnType.GetMethod( "Key",[] )
				Local getval:=nextobj.ReturnType.GetMethod( "Value",[] )
				Local set:=clas.GetMethod( "Set",[getkey.ReturnType,getval.ReturnType] )
				
				
					For Local c:=Eachin node.GetChildren()
					Local key:=node_to_object(c,nam)
					For Local objnode:=Eachin c.GetChildren()
					Local val:=node_to_object(objnode,nam)
					set.Invoke( obj,[key,val] )
					Next
					Next
Endif
Local sa:saveable=New saveable

If clas.ExtendsClass(GetClass(sa))
For Local c:=Eachin node.GetChildren()
If c.GetAttribute("fn")="unid"
Local f:=c.GetAttribute("value")
Local i:Int=Int(f)
serial_objects.Set(i,obj)
Endif
Next


For Local thisfield:=Eachin clas.GetFields(True)
Select thisfield.Type.Name
Case "monkey.boxes.BoolObject"
thisfield.SetValue(obj,BoxBool(Bool(0)))
Case "monkey.boxes.IntObject"
thisfield.SetValue(obj,BoxInt(0))
Case "monkey.boxes.StringObject"
thisfield.SetValue(obj,BoxString(""))
Case "monkey.boxes.FloatObject"
thisfield.SetValue(obj,BoxFloat(Float(0.0)))
End Select
Next


For Local c:=Eachin node.GetChildren()
Local f:=clas.GetField(c.GetAttribute("fn"))
nam=f.Name
Local val:=node_to_object(c,nam)
If val<>Null
f.SetValue(obj,val)
Endif
Next
Endif

Return obj
End Select
Return Null
End Function

