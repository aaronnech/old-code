'
Import klepto.minib3dextnew


Type TZombie
	Global ZombieList:TList = CreateList()
	
	Field x:Float, y:Float, z:Float
	Field handle:TMesh
	Field anim_time:Int
	
	Method Create:TZombie(_x:Float, _y:Float, _z:Float)
		handle = CopyMesh(Mzombie)
		x = _x
		y = _y
		z = _z
		anim_time = 2
		PositionEntity handle, x, y, z
		ScaleEntity handle, 4, 4, 4
		EntityType(handle, 3)
		ListAddLast(ZombieList, Self)
		TShadowObject.Create(handle, False)
		Return Self
	End Method
	
	Method Update()
		PointEntity handle, player
		RotateEntity(handle, 0.0, EntityYaw(handle), 0.0)
		'If EntityDistance(handle, player) > 40
			MoveEntity handle, 0, 0, 2
		'Else
			'Die()
		'End If
		RotateEntity(handle, 0.0, EntityYaw(handle) + 180, 0.0)
		TranslateEntity handle, 0, -5, 0
		SetAnimTime(handle, anim_time)
		anim_time:+.5
		If anim_time > 20 anim_time = 2
	End Method
	
	Function UpdateAll()
		For Local i:TZombie = EachIn ZombieList
			i.Update()
		Next
	End Function
End Type

Rem
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
 Bloom filter 
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
End Rem


Graphics3D 1024, 768, 32, 1
HideMouse()
AmbientLight 255, 255, 255
AntiAlias 2

Global Mzombie:TMesh = LoadAnimMesh("zombie.b3d")
HideEntity Mzombie


Global player:TPivot = CreatePivot()
PositionEntity player, -600, 700, 0
Global cam:TCamera = CreateCamera(player)
MoveEntity(cam, 0, 60, 0)
CameraFogMode cam, 1
CameraFogRange cam, 0, 5000
CameraRange cam, 1, 2000
CameraClsColor cam, 0, 20, 200

Global light1:TLight = CreateLight()
Global light:TLight = CreateLight(2)
LightColor light, 255, 200, 0
HideEntity(light)
TShadowObject.ShadowInit()
TShadowObject.AddLight(light)
TShadowObject.AddLight(light1)

Local level:TMesh = LoadMesh("level.b3d")
Local gun:TMesh = LoadMesh("gun.b3d", cam)
mesh_skybox = MakeSkyBox("sky")

PositionEntity gun, 1, -2, 4.5
RotateEntity gun, -50, 290, -5
ScaleEntity gun, .1, .1, .1
New TZombie.Create(0, 1.5, 20)
New TZombie.Create(400, 21, 145)
New TZombie.Create(458, 1.5, 440)
New TZombie.Create(556, 1.5, 627)

EntityType(player, 1)
EntityType(level, 2)
Collisions(1, 2, 2, 3)
Collisions(3, 2, 2, 3)
Collisions(3, 3, 2, 3)


Local lightmode:Byte = False
Local dark:Byte
Global anim_time:Float = 2
While Not KeyDown(KEY_ESCAPE)

	' control
	If Not dark And EntityY(player) < 590
		dark = True
		CameraClsColor cam, 0, 0, 0
		ChangeLight(lightmode)
	ElseIf dark = True And EntityY(player) >= 590
		dark = False
		AmbientLight 255, 255, 255
		CameraFogRange cam, 0, 5000
		CameraClsColor cam, 0, 20, 200
	End If
	If KeyHit(KEY_SPACE) And dark lightmode = Not lightmode ChangeLight(lightmode)
	TranslateEntity player, 0, -5, 0
	Local mouseDiffX:Int = MouseX() - (GraphicsWidth() / 2)
	Local mouseDiffY:Int = MouseY() - (GraphicsHeight() / 2)
	TurnEntity player, 0, -mouseDiffX, 0
	TurnEntity cam, mouseDiffY, 0, 0
	mouseDiffX = 0
	mouseDiffY = 0
	MoveMouse 512, 384
	MoveEntity player, (KeyDown(KEY_RIGHT) - KeyDown(KEY_LEFT)) * 4, 0, (KeyDown(KEY_UP) - KeyDown(KEY_DOWN)) * 4
	PositionEntity light, EntityX(player), EntityY(player), EntityZ(player)
	PositionEntity mesh_skybox, EntityX(player), EntityY(player), EntityZ(player)
	TZombie.UpdateAll()
	TShadowObject.Update(cam)
	
	UpdateWorld
	RenderWorld
	
	Flip
Wend
End

Function ChangeLight(i:Byte)
	If i
		CameraFogRange cam, 0, 600
		AmbientLight 255, 128, 0
		ShowEntity(light)
	Else
		CameraFogRange cam, 0, 250
		AmbientLight 50, 50, 50
		HideEntity(light)
	End If
End Function

Function Die()
	PositionEntity player, -600, 700, 0
	ResetEntity(player)
End Function

Function MakeSkyBox(file:String)

	m=CreateMesh()
	'front face
	b=LoadBrush( file$+"_FR.bmp",49 )
	s=CreateSurface( m )
	AddVertex s,-1,+1,-1,0,0;AddVertex s,+1,+1,-1,1,0
	AddVertex s,+1,-1,-1,1,1;AddVertex s,-1,-1,-1,0,1
	AddTriangle s,0,1,2;AddTriangle s,0,2,3
	PaintSurface s,b
	'FreeBrush b
	'Right face
	b=LoadBrush( file$+"_LF.bmp",49 )
	s=CreateSurface( m )
	AddVertex s,+1,+1,-1,0,0;AddVertex s,+1,+1,+1,1,0
	AddVertex s,+1,-1,+1,1,1;AddVertex s,+1,-1,-1,0,1
	AddTriangle s,0,1,2;AddTriangle s,0,2,3
	PaintSurface s,b
	'FreeBrush b
	'back face
	b=LoadBrush( file$+"_BK.bmp",49 )
	s=CreateSurface( m )
	AddVertex s,+1,+1,+1,0,0;AddVertex s,-1,+1,+1,1,0
	AddVertex s,-1,-1,+1,1,1;AddVertex s,+1,-1,+1,0,1
	AddTriangle s,0,1,2;AddTriangle s,0,2,3
	PaintSurface s,b
	'FreeBrush b
	'Left face
	b=LoadBrush( file$+"_RT.bmp",49 )
	s=CreateSurface( m )
	AddVertex s,-1,+1,+1,0,0;AddVertex s,-1,+1,-1,1,0
	AddVertex s,-1,-1,-1,1,1;AddVertex s,-1,-1,+1,0,1
	AddTriangle s,0,1,2;AddTriangle s,0,2,3
	PaintSurface s,b
	'FreeBrush b
	'top face
	b=LoadBrush( file$+"_UP.bmp",49 )
	s=CreateSurface( m )
	AddVertex s,-1,+1,+1,0,1;AddVertex s,+1,+1,+1,0,0
	AddVertex s,+1,+1,-1,1,0;AddVertex s,-1,+1,-1,1,1
	AddTriangle s,0,1,2;AddTriangle s,0,2,3
	PaintSurface s,b
	'FreeBrush b

	ScaleMesh m, 100, 100, 100
	FlipMesh m
	EntityFX m, 1
	EntityOrder m, 10
	
	Return m
	
End Function