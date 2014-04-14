Import sidesign.minib3d

'
' A shadow system for miniB3D.
'
' Based a realtime shadow system by
' Mikkel Fredborg found in the code archives of BlitzBasic.com
'

Type TShadow3D
	Field viewCam:TCamera,shadowCam:TCamera
	Field targetObj:TEntity
	Field scene:TMesh
	Field sceneMesh:TMesh
	Field sceneOrig:TMesh
	Field shadowSurf:TSurface
	Field shadowZoom:Float = 1.75 'Adjust to your liking.
	Field shadowLight:TEntity
	Field red:Int = 0
	Field green:Int = 0
	Field blue:Int = 0
	Field texSize:Int = 512
	Field shadowTex:TTexture,shadowBrush:TBrush
	Field lastx:Float,lasty:Float,lastz:Float	
	Field lastpitch:Float,lastyaw:Float,lastroll:Float
	Field resetAmbientRed:Int,resetAmbientGreen:Int,resetAmbientBlue:Int
	Field blur:Int = 0
	Field shadowStaticDist:Float = 20.0 'units from the targetObj
	
	Method changeColor(r:Int = 0,g:Int = 0,b:Int = 0)
	
		Self.red = r
		Self.green = g
		Self.blue = b
		
	End Method
	
	Method changeLight(lit:TEntity = Null)
		
		If lit = Null Then Return
		
		Self.shadowLight = lit
		
	End Method
	
	Method changeTarget(tar:TEntity = Null)
		
		If tar = Null Then Return
		
		Self.targetObj = tar
		
	End Method
	
	Method setAmbient(r:Int,g:Int,b:Int)
	
		resetAmbientRed:Int = r
		resetAmbientGreen:Int = g
		resetAmbientBlue:Int = b
	
	End Method
	
	Method changeViewCam(cam:TCamera = Null)
		
		If cam = Null Then Return
		
		Self.viewCam = cam
	
	End Method
	
	Method changeScene(sc:TMesh = Null)
		
		If sc = Null Then Return
		
		Self.scene = sc
	
	End Method

	Method update()

		HideEntity Self.sceneMesh
		HideEntity Self.sceneOrig
		
		?Debug
		Local tarDist:Float = EntityDistance(Self.targetObj,Self.shadowCam)
		Print tarDist
		?
		shadowZoom = tarDist / 10.0
		If shadowZoom > 1.75 Then shadowZoom = 1.75
		If shadowZoom < 0.05 Then shadowZoom = 0.05
		
		If blur=0 'Need to figure out a good way to blur this thing.
			AmbientLight(red,green,blue)
			ShowEntity Self.shadowCam
			CameraZoom Self.shadowCam,shadowZoom
			PointEntity(Self.shadowCam,targetObj)
			RenderWorld()
		EndIf

		BackBufferToTex(Self.shadowTex,0,0)
		
		AmbientLight(resetAmbientRed,resetAmbientGreen,resetAmbientBlue)
	
		' Show shadow meshes
		ShowEntity Self.sceneMesh
		
		Local x:Float = EntityX(shadowLight,True)
		Local y:Float = EntityY(shadowLight,True)
		Local z:Float = EntityZ(shadowLight,True)
	
		Local pitch:Float 	= EntityPitch(shadowLight,True)
		Local yaw:Float 	= EntityYaw(shadowLight,True)
		Local roll:Float 	= EntityRoll(shadowLight,True)

		' Remove backfacing triangles
		If x<>Self.lastx Or y<>Self.lasty Or z<>Self.lastz Or pitch<>Self.lastpitch Or yaw<>Self.lastyaw Or roll<>Self.lastroll
			ClearSurface Self.shadowSurf
			n_surfs = CountSurfaces(Self.sceneOrig)
			For s = 1 To n_surfs
				surf = GetSurface(Self.sceneOrig,s)
				n_tris = CountTriangles(surf)-1
				For t = 0 To n_tris
					v0 = TriangleVertex(surf,t,0)
					v1 = TriangleVertex(surf,t,1)
					v2 = TriangleVertex(surf,t,2)
									
					ex0# = VertexX(surf,v1) - VertexX(surf,v0)				
					ey0# = VertexY(surf,v1) - VertexY(surf,v0)
					ez0# = VertexZ(surf,v1) - VertexZ(surf,v0)

					ex1# = VertexX(surf,v2) - VertexX(surf,v0)				
					ey1# = VertexY(surf,v2) - VertexY(surf,v0)
					ez1# = VertexZ(surf,v2) - VertexZ(surf,v0)
	
					' Triangle normal
					nx# = ey0# * ez1# - ez0# * ey1#
					ny# = ez0# * ex1# - ex0# * ez1#
					nz# = ex0# * ey1# - ey0# * ex1#
					
					' Transform it compared To light
					TFormNormal nx#,ny#,nz#,Self.sceneOrig,Self.shadowLight
					If TFormedZ()<0.0
						nv0 = AddVertex(Self.shadowSurf,VertexX(surf,v0),VertexY(surf,v0),VertexZ(surf,v0))
						nv1 = AddVertex(Self.shadowSurf,VertexX(surf,v1),VertexY(surf,v1),VertexZ(surf,v1))
						nv2 = AddVertex(Self.shadowSurf,VertexX(surf,v2),VertexY(surf,v2),VertexZ(surf,v2))
						AddTriangle Self.shadowSurf,nv0,nv1,nv2
					EndIf
				Next
			Next
		EndIf
	
		' Calculate uv's	
		n_verts = CountVertices(Self.shadowSurf)-1
		For v = 0 To n_verts
			
			'Original Working Code
			TFormPoint VertexX(Self.shadowSurf,v),VertexY(Self.shadowSurf,v),VertexZ(Self.shadowSurf,v),Self.sceneMesh,0
			CameraProject shadowCam,TFormedX(),TFormedY(),TFormedZ()
			
			Local viewX = ProjectedX(),viewY=ProjectedY()
			If viewX < 0 Then viewX = 0
			If viewX > texSize Then viewX = texSize			
			If viewY < 0 Then viewY = 0
			If viewY > texSize Then viewY = texSize		
			'Rem WORKING
			tu:Float = Float(ProjectedX())/Float(texSize)
			tv:Float = 1.0-(Float(ProjectedY())/Float(texSize))
			
			If tu > 1.0 Then tu = 1.0
			If tu < 0.0 Then tu = 0.0
			
			If tv > 1.0 Then tv = 1.0
			If tv < 0.0 Then tv = 0.0

			VertexTexCoords Self.shadowSurf,v,tu,tv
			'EndRem
			
		Next
	
		' Update positions
		Self.lastx = x
		Self.lasty = y
		Self.lastz = z
		Self.lastpitch	= pitch
		Self.lastyaw		= yaw
		Self.lastroll		= roll
	
		HideEntity Self.shadowCam
	End Method
	
	Method cleanup()
		'TO DO
	End Method
	
	Method init()
	'texture init
		ClearTextureFilters
		Self.shadowTex = CreateTexture(Self.texSize,Self.texSize,1+2+4+16+32+256)
		TextureBlend shadowTex,1
		
		Self.shadowBrush = CreateBrush()
		BrushColor(shadowBrush,red,green,blue)
		BrushBlend shadowBrush,1
		BrushFX shadowBrush,1
		BrushTexture shadowBrush,shadowTex
		
	'mesh and surface init	
		Self.sceneMesh = CopyMesh(Self.scene)
		Self.shadowSurf = CreateSurface(Self.sceneMesh)
		EntityColor(sceneMesh,255,255,255)
		FlipMesh(sceneMesh)
		EntityFX(scene,16)
		'Entity blend modes 1 = Alpha, 2 = Mul, 3 = Add
		EntityBlend(Self.sceneMesh,2)
		PaintSurface Self.shadowSurf,Self.shadowBrush
		Self.sceneOrig = CopyMesh(Self.scene)
		
	'Camera init
		Self.shadowCam = CreateCamera(shadowLight)
		PositionEntity(shadowCam,EntityX(shadowLight),EntityY(shadowLight),EntityZ(shadowLight))
		PointEntity(shadowLight,targetObj)
		PointEntity(shadowCam,targetObj)
		CameraProjMode shadowCam,1
		CameraRange shadowCam,1.0,65000.0
		CameraClsColor shadowCam,255,255,255
		CameraViewport shadowCam,0,0,texSize,texSize
		CameraZoom shadowCam,shadowZoom '<--- This may need changing depending on the scene And light position
		
	End Method

EndType

Type TMouse

	Field resetX = GraphicsWidth() / 2
	Field resetY = GraphicsHeight() / 2
	Field resetZ = 0
	
	Field currX:Int = 0
	Field currY:Int = 0
	Field currZ:Int = 0
	
	Method mouseXSpeed:Int()
		Return resetX - MouseX()
	EndMethod
	
	Method mouseYSpeed:Int()
		Return resetY - MouseY()
	EndMethod
	
	Method mouseZSpeed:Int()
		Return resetZ - MouseZ()
	EndMethod
	
	Method update()
	EndMethod
	
	Method flush()
		MoveMouse(resetX,resetY)
		currX = 0
		currY = 0
		currZ = 0
	EndMethod
End Type


Function killNormals(ent:TMesh)

	numSurf:Int =CountSurfaces(ent)
	For s = 1 To numSurf
		currSurf:TSurface = GetSurface(ent,s)
		numVerts:Int = CountVertices(currSurf)-1
		For v = 0 To numVerts
			VertexNormal(currSurf,v,0.0,0.0,0.0)
		Next
	Next
End Function

Local width=1280,height=720,depth=32,mode=0,rate=30
Graphics3D width,height,depth,mode,rate

HideMouse
AmbientLight 0,0,0
SeedRnd MilliSecs()

Global bob = CreateCube(10)
PositionEntity(bob,0,0,0)

Global scene = CreateSphere(18)
EntityColor(scene,255,255,255)
EntityFX(scene,0)
sceneTex = LoadTexture("zombie/Zombie.jpg")
EntityTexture(scene,sceneTex)
ScaleMesh(scene,50,50,50)
PositionEntity(scene,0,0,0)
FlipMesh(scene)

Global light = CreateLight()
LightRange(light,2000)
RotateEntity light,0,0,0
PositionEntity light,0,0,-10
PointEntity light,bob

sphere = CreateSphere(light)
ScaleEntity(sphere,1,1,1)
EntityColor(sphere,255,255,255)
PositionEntity(sphere,EntityX(light),EntityY(light),EntityZ(light))
EntityFX(sphere,1)

Global camera1 = CreateCamera()
CameraClsColor(camera1,100,100,255)
PositionEntity(camera1,4,4,-15)
RotateEntity(camera1,-15,180,0)

Global shadow:TShadow3D = New TShadow3D
shadow.changeScene(scene)
shadow.changeColor(255,255,255)
shadow.changeTarget(bob)
shadow.changeViewCam(camera1)
shadow.changeLight(light)
shadow.setAmbient(64,64,64)
shadow.init()

spd# = 20.0 / Float(rate) 'units / sec
zoom# = 1.0

a:Float = 0.0
b:Float = 0.0
mxs:Float = 0.0
mys:Float = 0.0

mouse:TMouse = New TMouse

'A hacky way of clearing the shininess from my model.
Local renderme:TMesh = CopyMesh(bob)
PositionEntity(renderme,EntityX(bob),EntityY(bob),EntityZ(bob))
Local renderbrush = CreateBrush()
BrushColor(renderbrush,128,128,128)
BrushShininess(renderbrush,0.0)
BrushBlend renderbrush,1
BrushAlpha renderbrush,1.0
BrushFX renderbrush,16
PaintMesh(renderme,renderbrush)
killNormals(renderme)

Repeat
	
	MoveEntity camera1,(KeyDown(KEY_D)-KeyDown(KEY_A))*spd,0,(KeyDown(KEY_W)-KeyDown(KEY_S))*spd
	PositionEntity light,EntityX(light)+((KeyDown(KEY_RIGHT)-KeyDown(KEY_LEFT))*spd),EntityY(light)+((KeyDown(KEY_UP)-KeyDown(KEY_DOWN))*spd),EntityZ(light)+((KeyDown(KEY_1)-KeyDown(KEY_2))*spd)

	PointEntity light,bob
	PositionEntity sphere,EntityX(light),EntityY(light),EntityZ(light)
	PointEntity sphere,light
	
	mxs=mxs-(mouse.MouseXSpeed()/2.0)
	mys=mys+(mouse.MouseYSpeed()/2.0)
	
	TurnEntity camera1,mys,mxs,0

	mxs = 0.0
	mys = 0.0

	mouse.update()
	mouse.flush()

	b = b + (45.0/Float(rate)) 'degrees per second

	a# = a- (45.0/Float(rate))
	RotateEntity bob,b,b,0
	RotateEntity renderme,b,b,0

	HideEntity scene

	CameraProjMode camera1,0
	HideEntity camera1
	HideEntity sphere
	HideEntity bob
	ShowEntity renderme
	
	shadow.update()

	ShowEntity bob
	ShowEntity scene
	ShowEntity sphere
	HideEntity renderme
	
	CameraProjMode camera1,1
	ShowEntity camera1

	RenderWorld()

	BeginMax2D()
	EndMax2D()
	Flip

Until KeyHit(KEY_ESCAPE)

End
