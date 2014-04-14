	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_bank_bank
	extrn	___bb_bankstream_bankstream
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_d3d9max2d_d3d9max2d
	extrn	___bb_data_data
	extrn	___bb_directsoundaudio_directsoundaudio
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_freeaudioaudio_freeaudioaudio
	extrn	___bb_freejoy_freejoy
	extrn	___bb_freeprocess_freeprocess
	extrn	___bb_freetypefont_freetypefont
	extrn	___bb_glew_glew
	extrn	___bb_gnet_gnet
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_macos_macos
	extrn	___bb_map_map
	extrn	___bb_maxlua_maxlua
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_openalaudio_openalaudio
	extrn	___bb_pngloader_pngloader
	extrn	___bb_retro_retro
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_threads_threads
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	_bbATan2
	extrn	_bbCos
	extrn	_bbEnd
	extrn	_bbFloatToInt
	extrn	_bbGCFree
	extrn	_bbMilliSecs
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDowncast
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbSin
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_linkedlist_ListAddLast
	extrn	_brl_linkedlist_SortList
	extrn	_brl_linkedlist_TList
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawLine
	extrn	_brl_max2d_DrawRect
	extrn	_brl_max2d_DrawSubImageRect
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_MidHandleImage
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetScale
	extrn	_brl_pixmap_LoadPixmap
	extrn	_brl_pixmap_ReadPixel
	extrn	_brl_polledinput_KeyDown
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_polledinput_MouseDown
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_brl_random_Rand
	extrn	_brl_random_SeedRnd
	extrn	_brl_system_HideMouse
	public	__bb_TBullet_BulletList
	public	__bb_TBullet_Collide
	public	__bb_TBullet_Create
	public	__bb_TBullet_Delete
	public	__bb_TBullet_Detonate
	public	__bb_TBullet_New
	public	__bb_TBullet_Update
	public	__bb_TBullet_UpdateAll
	public	__bb_TExplosion_Create
	public	__bb_TExplosion_Delete
	public	__bb_TExplosion_ExplosionList
	public	__bb_TExplosion_New
	public	__bb_TExplosion_Update
	public	__bb_TExplosion_UpdateAll
	public	__bb_TPlayer_CollisionUpdates
	public	__bb_TPlayer_Delete
	public	__bb_TPlayer_DrawAll
	public	__bb_TPlayer_New
	public	__bb_TPlayer_PlayerList
	public	__bb_TPlayer_PowerBarUpdate
	public	__bb_TPlayer_Update
	public	__bb_hline_Collide
	public	__bb_hline_Create
	public	__bb_hline_Delete
	public	__bb_hline_Draw
	public	__bb_hline_Move
	public	__bb_hline_New
	public	__bb_hline_Split
	public	__bb_hshape_AddLine
	public	__bb_hshape_CollidePixel
	public	__bb_hshape_Create
	public	__bb_hshape_Delete
	public	__bb_hshape_Draw
	public	__bb_hshape_GenShape
	public	__bb_hshape_New
	public	__bb_hshape_Position
	public	__bb_hshape_SortLinesByHeight
	public	__bb_hshape_Subtract
	public	__bb_main
	public	_bb_AngleToDX
	public	_bb_AngleToDY
	public	_bb_CountFPS
	public	_bb_PLAYERS
	public	_bb_PointsToAngle
	public	_bb_TBullet
	public	_bb_TExplosion
	public	_bb_TPlayer
	public	_bb_Turn
	public	_bb_bg
	public	_bb_drawCross
	public	_bb_exphole
	public	_bb_explosion
	public	_bb_fps
	public	_bb_fpsc
	public	_bb_fpst
	public	_bb_hline
	public	_bb_hshape
	public	_bb_player
	public	_bb_player1
	public	_bb_player2
	public	_bb_terrain
	public	_bb_terrainshape
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_378],0
	je	_379
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_379:
	mov	dword [_378],1
	push	ebp
	push	_361
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_appstub_appstub
	call	___bb_audio_audio
	call	___bb_bank_bank
	call	___bb_bankstream_bankstream
	call	___bb_basic_basic
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_d3d9max2d_d3d9max2d
	call	___bb_data_data
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_eventqueue_eventqueue
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_map_map
	call	___bb_maxlua_maxlua
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_openalaudio_openalaudio
	call	___bb_pngloader_pngloader
	call	___bb_retro_retro
	call	___bb_tgaloader_tgaloader
	call	___bb_threads_threads
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	push	_bb_hline
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_hshape
	call	_bbObjectRegisterType
	add	esp,4
	push	_285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_288]
	and	eax,1
	cmp	eax,0
	jne	_289
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [__bb_TExplosion_ExplosionList],eax
	or	dword [_288],1
_289:
	push	_bb_TExplosion
	call	_bbObjectRegisterType
	add	esp,4
	push	_290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_288]
	and	eax,2
	cmp	eax,0
	jne	_292
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [__bb_TPlayer_PlayerList],eax
	or	dword [_288],2
_292:
	push	_bb_TPlayer
	call	_bbObjectRegisterType
	add	esp,4
	push	_293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_288]
	and	eax,4
	cmp	eax,0
	jne	_295
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [__bb_TBullet_BulletList],eax
	or	dword [_288],4
_295:
	push	_bb_TBullet
	call	_bbObjectRegisterType
	add	esp,4
	push	_296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	768
	push	1024
	call	_brl_graphics_Graphics
	add	esp,20
	push	_298
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_system_HideMouse
	push	_299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	push	eax
	call	_brl_random_SeedRnd
	add	esp,4
	push	_301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	_66
	call	_brl_max2d_DrawText
	add	esp,12
	push	_302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	push	_303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_288]
	and	eax,8
	cmp	eax,0
	jne	_306
	push	-1
	push	_67
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_bg],eax
	or	dword [_288],8
_306:
	push	_307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_288]
	and	eax,16
	cmp	eax,0
	jne	_309
	push	-1
	push	_68
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_player],eax
	or	dword [_288],16
_309:
	push	_310
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_288]
	and	eax,32
	cmp	eax,0
	jne	_312
	push	-1
	push	_69
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_terrain],eax
	or	dword [_288],32
_312:
	push	_313
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_288]
	and	eax,64
	cmp	eax,0
	jne	_315
	push	-1
	push	_70
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_explosion],eax
	or	dword [_288],64
_315:
	push	_316
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_explosion]
	call	_brl_max2d_MidHandleImage
	add	esp,4
	push	_317
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_288]
	and	eax,128
	cmp	eax,0
	jne	_319
	push	_69
	call	dword [_bb_hshape+76]
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_terrainshape],eax
	or	dword [_288],128
_319:
	push	_320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_288]
	and	eax,256
	cmp	eax,0
	jne	_322
	push	_70
	call	dword [_bb_hshape+76]
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_exphole],eax
	or	dword [_288],256
_322:
	push	_323
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_288]
	and	eax,512
	cmp	eax,0
	jne	_325
	push	_bb_TPlayer
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_player1],eax
	or	dword [_288],512
_325:
	push	_326
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_288]
	and	eax,1024
	cmp	eax,0
	jne	_328
	push	_bb_TPlayer
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_player2],eax
	or	dword [_288],1024
_328:
	push	_329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_331
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_71
_73:
	push	_332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	push	dword [_bb_bg]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_334
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_terrainshape]
	cmp	ebx,_bbNullObject
	jne	_336
	call	_brl_blitz_NullObjectError
_336:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TPlayer+48]
	push	_338
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_Turn]
	cmp	eax,1
	je	_341
	cmp	eax,2
	je	_342
	jmp	_340
_341:
	push	_343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player1]
	cmp	ebx,_bbNullObject
	jne	_345
	call	_brl_blitz_NullObjectError
_345:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	jmp	_340
_342:
	push	_346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player2]
	cmp	ebx,_bbNullObject
	jne	_348
	call	_brl_blitz_NullObjectError
_348:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	jmp	_340
_340:
	push	_349
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TExplosion+56]
	push	_350
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TBullet+64]
	push	_351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_MouseY
	push	eax
	call	_brl_polledinput_MouseX
	push	eax
	call	_bb_drawCross
	add	esp,8
	push	_352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_terrainshape]
	cmp	ebx,_bbNullObject
	jne	_354
	call	_brl_blitz_NullObjectError
_354:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_356
	call	_brl_blitz_NullObjectError
_356:
	push	1101004800
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1114636288
	push	0
	call	_bb_CountFPS
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_74
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_graphics_Flip
	add	esp,4
_71:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_73
_72:
	push	_359
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	push	_360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_139
_139:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_hline_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_380
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_hline
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	ebx,0
	jmp	_142
_142:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_hline_Delete:
	push	ebp
	mov	ebp,esp
_145:
	mov	eax,0
	jmp	_383
_383:
	mov	esp,ebp
	pop	ebp
	ret
__bb_hline_Draw:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,ebp
	push	eax
	push	_415
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_384
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_386
	call	_brl_blitz_NullObjectError
_386:
	cmp	dword [ebx+20],0
	je	_387
	push	_388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	jne	_390
	call	_brl_blitz_NullObjectError
_390:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_392
	call	_brl_blitz_NullObjectError
_392:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_394
	call	_brl_blitz_NullObjectError
_394:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_396
	call	_brl_blitz_NullObjectError
_396:
	push	1
	mov	eax,dword [ebx+16]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [esi+12]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [edi+16]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+8]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawLine
	add	esp,20
	jmp	_397
_387:
	push	_398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-32],eax
	cmp	dword [ebp-32],_bbNullObject
	jne	_400
	call	_brl_blitz_NullObjectError
_400:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	jne	_402
	call	_brl_blitz_NullObjectError
_402:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	jne	_404
	call	_brl_blitz_NullObjectError
_404:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-20],eax
	cmp	dword [ebp-20],_bbNullObject
	jne	_406
	call	_brl_blitz_NullObjectError
_406:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	jne	_408
	call	_brl_blitz_NullObjectError
_408:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_410
	call	_brl_blitz_NullObjectError
_410:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_412
	call	_brl_blitz_NullObjectError
_412:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_414
	call	_brl_blitz_NullObjectError
_414:
	push	0
	push	0
	push	0
	push	1065353216
	mov	eax,dword [esi+12]
	sub	eax,dword [ebx+8]
	add	eax,1
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [edi+16]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-16]
	mov	eax,dword [eax+8]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	push	1065353216
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+12]
	mov	edx,dword [ebp-20]
	sub	eax,dword [edx+8]
	add	eax,1
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-28]
	mov	eax,dword [eax+16]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-32]
	mov	eax,dword [eax+8]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-8]
	call	_brl_max2d_DrawSubImageRect
	add	esp,48
_397:
	mov	ebx,0
	jmp	_149
_149:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_hline_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],_bbNullObject
	push	ebp
	push	_435
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_416
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_hline
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-20],eax
	push	_418
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_420
	call	_brl_blitz_NullObjectError
_420:
	mov	eax,dword [ebp-4]
	mov	dword [ebx+8],eax
	push	_422
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_424
	call	_brl_blitz_NullObjectError
_424:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+12],eax
	push	_426
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_428
	call	_brl_blitz_NullObjectError
_428:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+16],eax
	push	_430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_432
	call	_brl_blitz_NullObjectError
_432:
	mov	eax,dword [ebp-16]
	mov	dword [ebx+20],eax
	push	_434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	jmp	_155
_155:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_hline_Split:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,ebp
	push	eax
	push	_545
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_440
	call	_brl_blitz_NullObjectError
_440:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_442
	call	_brl_blitz_NullObjectError
_442:
	mov	eax,dword [esi+16]
	cmp	dword [ebx+16],eax
	jne	_443
	push	_444
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_446
	call	_brl_blitz_NullObjectError
_446:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_448
	call	_brl_blitz_NullObjectError
_448:
	mov	eax,dword [esi+8]
	cmp	dword [ebx+8],eax
	jg	_449
	push	_450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_452
	call	_brl_blitz_NullObjectError
_452:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_454
	call	_brl_blitz_NullObjectError
_454:
	mov	eax,dword [esi+12]
	cmp	dword [ebx+12],eax
	jl	_455
	push	_456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_458
	call	_brl_blitz_NullObjectError
_458:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_460
	call	_brl_blitz_NullObjectError
_460:
	mov	eax,dword [esi+12]
	add	eax,1
	cmp	eax,dword [ebx+12]
	jge	_461
	push	_462
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_464
	call	_brl_blitz_NullObjectError
_464:
	cmp	dword [ebx+20],0
	je	_465
	push	_466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_468
	call	_brl_blitz_NullObjectError
_468:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_470
	call	_brl_blitz_NullObjectError
_470:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_472
	call	_brl_blitz_NullObjectError
_472:
	push	1
	push	dword [ebx+16]
	push	dword [esi+12]
	mov	eax,dword [edi+12]
	add	eax,1
	push	eax
	call	dword [_bb_hline+52]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	dec	dword [eax+4]
	jnz	_476
	push	eax
	call	_bbGCFree
	add	esp,4
_476:
	mov	eax,dword [ebp-12]
	mov	dword [eax],ebx
	jmp	_477
_465:
	push	_478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_480
	call	_brl_blitz_NullObjectError
_480:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_482
	call	_brl_blitz_NullObjectError
_482:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_484
	call	_brl_blitz_NullObjectError
_484:
	push	0
	push	dword [ebx+16]
	push	dword [esi+12]
	mov	eax,dword [edi+12]
	add	eax,1
	push	eax
	call	dword [_bb_hline+52]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	dec	dword [eax+4]
	jnz	_488
	push	eax
	call	_bbGCFree
	add	esp,4
_488:
	mov	eax,dword [ebp-12]
	mov	dword [eax],ebx
_477:
_461:
	push	_489
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_491
	call	_brl_blitz_NullObjectError
_491:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_494
	call	_brl_blitz_NullObjectError
_494:
	mov	eax,dword [esi+8]
	sub	eax,1
	mov	dword [ebx+12],eax
	push	_495
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_497
	call	_brl_blitz_NullObjectError
_497:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_499
	call	_brl_blitz_NullObjectError
_499:
	mov	eax,dword [esi+12]
	cmp	eax,dword [ebx+8]
	setle	al
	movzx	eax,al
	mov	ebx,eax
	jmp	_160
_455:
	push	_501
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_503
	call	_brl_blitz_NullObjectError
_503:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_505
	call	_brl_blitz_NullObjectError
_505:
	mov	eax,dword [esi+8]
	cmp	dword [ebx+12],eax
	jl	_506
	push	_507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_509
	call	_brl_blitz_NullObjectError
_509:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_512
	call	_brl_blitz_NullObjectError
_512:
	mov	eax,dword [esi+8]
	sub	eax,1
	mov	dword [ebx+12],eax
	push	_513
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_515
	call	_brl_blitz_NullObjectError
_515:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_517
	call	_brl_blitz_NullObjectError
_517:
	mov	eax,dword [esi+12]
	cmp	eax,dword [ebx+8]
	setle	al
	movzx	eax,al
	mov	ebx,eax
	jmp	_160
_506:
_500:
	jmp	_518
_449:
	push	_519
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_521
	call	_brl_blitz_NullObjectError
_521:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_523
	call	_brl_blitz_NullObjectError
_523:
	mov	eax,dword [esi+12]
	cmp	dword [ebx+8],eax
	jg	_524
	push	_525
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_527
	call	_brl_blitz_NullObjectError
_527:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_529
	call	_brl_blitz_NullObjectError
_529:
	mov	eax,dword [esi+12]
	cmp	dword [ebx+12],eax
	jg	_530
	push	_531
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	jmp	_160
_530:
	push	_533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_535
	call	_brl_blitz_NullObjectError
_535:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_538
	call	_brl_blitz_NullObjectError
_538:
	mov	eax,dword [esi+12]
	add	eax,1
	mov	dword [ebx+8],eax
	push	_539
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_541
	call	_brl_blitz_NullObjectError
_541:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_543
	call	_brl_blitz_NullObjectError
_543:
	mov	eax,dword [esi+12]
	cmp	eax,dword [ebx+8]
	setle	al
	movzx	eax,al
	mov	ebx,eax
	jmp	_160
_524:
_518:
_443:
	push	_544
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_160
_160:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_hline_Move:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_559
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_547
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_549
	call	_brl_blitz_NullObjectError
_549:
	mov	eax,dword [ebp-8]
	add	dword [ebx+8],eax
	push	_551
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_553
	call	_brl_blitz_NullObjectError
_553:
	mov	eax,dword [ebp-8]
	add	dword [ebx+12],eax
	push	_555
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_557
	call	_brl_blitz_NullObjectError
_557:
	mov	eax,dword [ebp-12]
	add	dword [ebx+16],eax
	mov	ebx,0
	jmp	_165
_165:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_hline_Collide:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_574
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_562
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_564
	call	_brl_blitz_NullObjectError
_564:
	mov	eax,dword [ebp-12]
	cmp	dword [ebx+16],eax
	jne	_565
	push	_566
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_568
	call	_brl_blitz_NullObjectError
_568:
	mov	eax,dword [ebp-8]
	cmp	eax,dword [ebx+8]
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_571
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_570
	call	_brl_blitz_NullObjectError
_570:
	mov	eax,dword [ebp-8]
	cmp	eax,dword [ebx+12]
	setle	al
	movzx	eax,al
_571:
	mov	ebx,eax
	jmp	_170
_565:
	push	_573
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_170
_170:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_hshape_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_577
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_hshape
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	ebx,0
	jmp	_173
_173:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_hshape_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_176:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_580
	push	eax
	call	_bbGCFree
	add	esp,4
_580:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_582
	push	eax
	call	_bbGCFree
	add	esp,4
_582:
	mov	eax,0
	jmp	_578
_578:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_hshape_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	push	ebp
	push	_604
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_583
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_hshape
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_585
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_587
	call	_brl_blitz_NullObjectError
_587:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_592
	push	eax
	call	_bbGCFree
	add	esp,4
_592:
	mov	dword [ebx+12],esi
	push	_593
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	cmp	dword [eax+8],0
	je	_594
	push	_595
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_597
	call	_brl_blitz_NullObjectError
_597:
	push	-1
	push	dword [ebp-4]
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_602
	push	eax
	call	_bbGCFree
	add	esp,4
_602:
	mov	dword [ebx+8],esi
_594:
	push	_603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_179
_179:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_hshape_Draw:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_625
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_608
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_611
	call	_brl_blitz_NullObjectError
_611:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-12],eax
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_614
	call	_brl_blitz_NullObjectError
_614:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_22
_24:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_619
	call	_brl_blitz_NullObjectError
_619:
	push	_bb_hline
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-8],eax
	cmp	dword [ebp-8],_bbNullObject
	je	_22
	push	_620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_622
	call	_brl_blitz_NullObjectError
_622:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_624
	call	_brl_blitz_NullObjectError
_624:
	push	dword [ebx+8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,8
_22:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_617
	call	_brl_blitz_NullObjectError
_617:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_24
_23:
	mov	ebx,0
	jmp	_182
_182:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_hshape_AddLine:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	push	ebp
	push	_634
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_628
	call	_brl_blitz_NullObjectError
_628:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_630
	call	_brl_blitz_NullObjectError
_630:
	push	dword [ebp-20]
	fld	dword [ebp-16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	dword [_bb_hline+52]
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_631
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_633
	call	_brl_blitz_NullObjectError
_633:
	push	dword [_bb_hshape+60]
	push	1
	push	dword [ebx+12]
	call	_brl_linkedlist_SortList
	add	esp,12
	mov	ebx,0
	jmp	_189
_189:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_hshape_SortLinesByHeight:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_640
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_635
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_hline
	push	dword [ebp-8]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_637
	call	_brl_blitz_NullObjectError
_637:
	push	_bb_hline
	push	dword [ebp-4]
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_639
	call	_brl_blitz_NullObjectError
_639:
	mov	eax,dword [ebx+16]
	cmp	eax,dword [esi+16]
	setl	al
	movzx	eax,al
	mov	ebx,eax
	jmp	_193
_193:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_hshape_Position:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_679
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_644
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_646
	call	_brl_blitz_NullObjectError
_646:
	mov	eax,dword [ebp-8]
	sub	eax,dword [ebx+16]
	mov	dword [ebp-16],eax
	push	_648
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_650
	call	_brl_blitz_NullObjectError
_650:
	mov	eax,dword [ebp-12]
	sub	eax,dword [ebx+20]
	mov	dword [ebp-20],eax
	push	_652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_654
	call	_brl_blitz_NullObjectError
_654:
	mov	eax,dword [ebp-16]
	add	dword [ebx+16],eax
	push	_656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_658
	call	_brl_blitz_NullObjectError
_658:
	mov	eax,dword [ebp-20]
	add	dword [ebx+20],eax
	push	_660
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	cmp	eax,0
	jne	_661
	mov	eax,dword [ebp-20]
_661:
	cmp	eax,0
	je	_663
	push	_664
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_667
	call	_brl_blitz_NullObjectError
_667:
	mov	edi,dword [ebx+12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_670
	call	_brl_blitz_NullObjectError
_670:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_25
_27:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_675
	call	_brl_blitz_NullObjectError
_675:
	push	_bb_hline
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_25
	push	_676
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_678
	call	_brl_blitz_NullObjectError
_678:
	push	dword [ebp-20]
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,12
_25:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_673
	call	_brl_blitz_NullObjectError
_673:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_27
_26:
_663:
	mov	ebx,0
	jmp	_198
_198:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_hshape_Subtract:
	push	ebp
	mov	ebp,esp
	sub	esp,32
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_738
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_684
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_687
	call	_brl_blitz_NullObjectError
_687:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-28],eax
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_690
	call	_brl_blitz_NullObjectError
_690:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-32],eax
	jmp	_28
_30:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_695
	call	_brl_blitz_NullObjectError
_695:
	push	_bb_hline
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	je	_28
	push	_696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_699
	call	_brl_blitz_NullObjectError
_699:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-24],eax
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_702
	call	_brl_blitz_NullObjectError
_702:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_31
_33:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_707
	call	_brl_blitz_NullObjectError
_707:
	push	_bb_hline
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_31
	push	_708
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	push	_710
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_712
	call	_brl_blitz_NullObjectError
_712:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_714
	call	_brl_blitz_NullObjectError
_714:
	mov	eax,dword [ebx+16]
	cmp	dword [esi+16],eax
	jge	_715
	push	_716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_32
_715:
	push	_717
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_719
	call	_brl_blitz_NullObjectError
_719:
	mov	eax,dword [ebp-20]
	inc	dword [eax+4]
	lea	eax,dword [ebp-20]
	push	eax
	push	dword [ebp-12]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,12
	mov	ebx,eax
	mov	eax,dword [ebp-20]
	dec	dword [eax+4]
	jnz	_720
	push	dword [ebp-20]
	call	_bbGCFree
	add	esp,4
_720:
	cmp	ebx,0
	je	_722
	push	_723
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_725
	call	_brl_blitz_NullObjectError
_725:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_727
	call	_brl_blitz_NullObjectError
_727:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
_722:
	push	_728
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-20],_bbNullObject
	je	_729
	push	_730
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_732
	call	_brl_blitz_NullObjectError
_732:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_734
	call	_brl_blitz_NullObjectError
_734:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_735
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_737
	call	_brl_blitz_NullObjectError
_737:
	push	dword [_bb_hshape+60]
	push	1
	push	dword [ebx+12]
	call	_brl_linkedlist_SortList
	add	esp,12
_729:
_31:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_705
	call	_brl_blitz_NullObjectError
_705:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_33
_32:
_28:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_693
	call	_brl_blitz_NullObjectError
_693:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_30
_29:
	mov	ebx,0
	jmp	_202
_202:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_hshape_CollidePixel:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_769
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_741
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_744
	call	_brl_blitz_NullObjectError
_744:
	mov	edi,dword [ebx+12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_747
	call	_brl_blitz_NullObjectError
_747:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_34
_36:
	cmp	ebx,_bbNullObject
	jne	_752
	call	_brl_blitz_NullObjectError
_752:
	push	_bb_hline
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_34
	push	_753
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_755
	call	_brl_blitz_NullObjectError
_755:
	mov	eax,dword [ebp-12]
	cmp	dword [esi+16],eax
	jle	_756
	push	_757
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_207
_756:
	push	_759
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_761
	call	_brl_blitz_NullObjectError
_761:
	mov	eax,dword [esi+16]
	cmp	eax,dword [ebp-12]
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_764
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_763
	call	_brl_blitz_NullObjectError
_763:
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,12
_764:
	cmp	eax,0
	je	_766
	push	_767
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	jmp	_207
_766:
_758:
_34:
	cmp	ebx,_bbNullObject
	jne	_750
	call	_brl_blitz_NullObjectError
_750:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_36
_35:
	push	_768
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_207
_207:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_hshape_GenShape:
	push	ebp
	mov	ebp,esp
	sub	esp,40
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	mov	dword [ebp-32],0
	mov	dword [ebp-36],0
	mov	eax,ebp
	push	eax
	push	_817
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	dword [_bb_hshape+48]
	add	esp,4
	mov	dword [ebp-8],eax
	push	_772
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	call	dword [_bb_hshape+48]
	add	esp,4
	mov	dword [ebp-12],eax
	push	_774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_776
	call	_brl_blitz_NullObjectError
_776:
	push	0
	push	0
	push	1065353216
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,20
	push	_777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_brl_pixmap_LoadPixmap
	add	esp,4
	mov	dword [ebp-16],eax
	push	_779
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_781
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	push	_783
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],0
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_786
	call	_brl_blitz_NullObjectError
_786:
	mov	eax,dword [ebx+16]
	sub	eax,1
	mov	edi,eax
	jmp	_787
_39:
	push	_789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_791
	call	_brl_blitz_NullObjectError
_791:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_793
	call	_brl_blitz_NullObjectError
_793:
	push	0
	mov	eax,dword [ebp-28]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebx+12]
	sub	eax,1
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	sub	esp,4
	fstp	dword [esp]
	push	0
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,20
_37:
	add	dword [ebp-28],1
_787:
	cmp	dword [ebp-28],edi
	jle	_39
_38:
	push	_794
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	mov	dword [ebp-32],0
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_797
	call	_brl_blitz_NullObjectError
_797:
	mov	eax,dword [ebx+12]
	sub	eax,1
	mov	edi,eax
	jmp	_798
_42:
	push	_800
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],0
	mov	dword [ebp-36],0
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_803
	call	_brl_blitz_NullObjectError
_803:
	mov	eax,dword [ebx+16]
	sub	eax,1
	mov	ebx,eax
	jmp	_804
_45:
	push	_806
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-36]
	push	dword [ebp-32]
	push	dword [ebp-16]
	call	_brl_pixmap_ReadPixel
	add	esp,12
	mov	dword [ebp-20],eax
	push	_807
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	shr	eax,24
	and	eax,255
	mov	dword [ebp-24],eax
	push	_808
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	jne	_809
	push	_810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_812
	call	_brl_blitz_NullObjectError
_812:
	push	dword [ebp-36]
	push	dword [ebp-32]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,12
	push	_813
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_815
	call	_brl_blitz_NullObjectError
_815:
	push	dword [ebp-12]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
_809:
_43:
	add	dword [ebp-36],1
_804:
	cmp	dword [ebp-36],ebx
	jle	_45
_44:
_40:
	add	dword [ebp-32],1
_798:
	cmp	dword [ebp-32],edi
	jle	_42
_41:
	push	_816
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_210
_210:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TExplosion_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_825
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TExplosion
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+20]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+24]
	mov	ebx,0
	jmp	_213
_213:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TExplosion_Delete:
	push	ebp
	mov	ebp,esp
_216:
	mov	eax,0
	jmp	_827
_827:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TExplosion_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_837
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_828
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_830
	call	_brl_blitz_NullObjectError
_830:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+12],eax
	push	_832
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_834
	call	_brl_blitz_NullObjectError
_834:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+16],eax
	push	_836
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [__bb_TExplosion_ExplosionList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	ebx,_bbNullObject
	jmp	_221
_221:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TExplosion_Update:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_886
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_838
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_840
	call	_brl_blitz_NullObjectError
_840:
	cmp	dword [ebx+8],10
	jne	_841
	push	_842
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TExplosion_ExplosionList]
	cmp	ebx,_bbNullObject
	jne	_844
	call	_brl_blitz_NullObjectError
_844:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_845
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [_bb_exphole]
	cmp	edi,_bbNullObject
	jne	_847
	call	_brl_blitz_NullObjectError
_847:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_849
	call	_brl_blitz_NullObjectError
_849:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_851
	call	_brl_blitz_NullObjectError
_851:
	mov	eax,dword [ebx+16]
	sub	eax,22
	push	eax
	mov	eax,dword [esi+12]
	sub	eax,22
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+64]
	add	esp,12
	push	_852
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_terrainshape]
	cmp	ebx,_bbNullObject
	jne	_854
	call	_brl_blitz_NullObjectError
_854:
	push	dword [_bb_exphole]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
_841:
	push	_855
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_857
	call	_brl_blitz_NullObjectError
_857:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_860
	call	_brl_blitz_NullObjectError
_860:
	mov	eax,dword [esi+8]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fmul	dword [_1506]
	fstp	dword [ebx+20]
	push	_861
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_863
	call	_brl_blitz_NullObjectError
_863:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_866
	call	_brl_blitz_NullObjectError
_866:
	fld	dword [_1507]
	fld	dword [_1508]
	mov	eax,dword [esi+8]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fmulp	st1,st0
	fsubp	st1,st0
	fstp	dword [ebx+24]
	push	_867
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_869
	call	_brl_blitz_NullObjectError
_869:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_871
	call	_brl_blitz_NullObjectError
_871:
	push	dword [ebx+20]
	push	dword [esi+20]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_872
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_874
	call	_brl_blitz_NullObjectError
_874:
	push	dword [ebx+24]
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_875
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_877
	call	_brl_blitz_NullObjectError
_877:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_879
	call	_brl_blitz_NullObjectError
_879:
	push	0
	mov	eax,dword [esi+16]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_explosion]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_880
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_881
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_882
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_884
	call	_brl_blitz_NullObjectError
_884:
	add	dword [ebx+8],1
	mov	ebx,0
	jmp	_224
_224:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TExplosion_UpdateAll:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_900
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	edi,dword [__bb_TExplosion_ExplosionList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_891
	call	_brl_blitz_NullObjectError
_891:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_46
_48:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_896
	call	_brl_blitz_NullObjectError
_896:
	push	_bb_TExplosion
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_46
	push	_897
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_899
	call	_brl_blitz_NullObjectError
_899:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
_46:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_894
	call	_brl_blitz_NullObjectError
_894:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_48
_47:
	mov	ebx,0
	jmp	_226
_226:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPlayer_New:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_910
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TPlayer
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+20]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+24]
	mov	eax,dword [ebp-4]
	mov	byte [eax+28],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],1
	push	_901
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_903
	call	_brl_blitz_NullObjectError
_903:
	push	900
	push	40
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fstp	dword [ebx+8]
	push	_905
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_907
	call	_brl_blitz_NullObjectError
_907:
	fld	dword [_1535]
	fstp	dword [ebx+12]
	push	_909
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [__bb_TPlayer_PlayerList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	ebx,0
	jmp	_229
_229:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPlayer_Delete:
	push	ebp
	mov	ebp,esp
_232:
	mov	eax,0
	jmp	_911
_911:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPlayer_DrawAll:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_930
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	eax,dword [__bb_TPlayer_PlayerList]
	mov	dword [ebp-8],eax
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_916
	call	_brl_blitz_NullObjectError
_916:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_49
_51:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_921
	call	_brl_blitz_NullObjectError
_921:
	push	_bb_TPlayer
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_49
	push	_922
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_924
	call	_brl_blitz_NullObjectError
_924:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_926
	call	_brl_blitz_NullObjectError
_926:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [_bb_player]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_927
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_929
	call	_brl_blitz_NullObjectError
_929:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
_49:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_919
	call	_brl_blitz_NullObjectError
_919:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_51
_50:
	mov	ebx,0
	jmp	_234
_234:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPlayer_CollisionUpdates:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_955
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_932
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [_bb_terrainshape]
	cmp	edi,_bbNullObject
	jne	_934
	call	_brl_blitz_NullObjectError
_934:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_936
	call	_brl_blitz_NullObjectError
_936:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_938
	call	_brl_blitz_NullObjectError
_938:
	fld	dword [ebx+12]
	fadd	dword [_1551]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [esi+8]
	fadd	dword [_1552]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	cmp	eax,0
	je	_939
	push	_940
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_942
	call	_brl_blitz_NullObjectError
_942:
	fldz
	fstp	dword [ebx+16]
	jmp	_944
_939:
	push	_945
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_947
	call	_brl_blitz_NullObjectError
_947:
	fld	dword [_1553]
	fstp	dword [ebx+16]
_944:
	push	_949
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_951
	call	_brl_blitz_NullObjectError
_951:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_954
	call	_brl_blitz_NullObjectError
_954:
	fld	dword [ebx+12]
	fadd	dword [esi+16]
	fstp	dword [ebx+12]
	mov	ebx,0
	jmp	_237
_237:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPlayer_Update:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_1070
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_956
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_958
	call	_brl_blitz_NullObjectError
_958:
	fldz
	fstp	dword [ebx+20]
	push	_960
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	37
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_961
	push	_962
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_964
	call	_brl_blitz_NullObjectError
_964:
	fld	dword [_1564]
	fstp	dword [ebx+20]
_961:
	push	_966
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	39
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_967
	push	_968
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_970
	call	_brl_blitz_NullObjectError
_970:
	fld1
	fstp	dword [ebx+20]
_967:
	push	_972
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	90
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_973
	push	_974
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_976
	call	_brl_blitz_NullObjectError
_976:
	sub	dword [ebx+40],1
_973:
	push	_978
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	88
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_979
	push	_980
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_982
	call	_brl_blitz_NullObjectError
_982:
	add	dword [ebx+40],1
_979:
	push	_984
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_986
	call	_brl_blitz_NullObjectError
_986:
	cmp	dword [ebx+40],2
	jle	_987
	push	_988
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_990
	call	_brl_blitz_NullObjectError
_990:
	mov	dword [ebx+40],1
_987:
	push	_992
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_994
	call	_brl_blitz_NullObjectError
_994:
	cmp	dword [ebx+40],1
	jge	_995
	push	_996
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_998
	call	_brl_blitz_NullObjectError
_998:
	mov	dword [ebx+40],2
_995:
	push	_1000
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1002
	call	_brl_blitz_NullObjectError
_1002:
	fld	dword [ebx+20]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_1003
	push	_1004
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [_bb_terrainshape]
	cmp	edi,_bbNullObject
	jne	_1006
	call	_brl_blitz_NullObjectError
_1006:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1008
	call	_brl_blitz_NullObjectError
_1008:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1010
	call	_brl_blitz_NullObjectError
_1010:
	fld	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [esi+8]
	fadd	dword [_1565]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	cmp	eax,0
	je	_1011
	push	_1012
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1014
	call	_brl_blitz_NullObjectError
_1014:
	fldz
	fstp	dword [ebx+20]
	jmp	_1016
_1011:
	push	_1017
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [_bb_terrainshape]
	cmp	edi,_bbNullObject
	jne	_1019
	call	_brl_blitz_NullObjectError
_1019:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1021
	call	_brl_blitz_NullObjectError
_1021:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1023
	call	_brl_blitz_NullObjectError
_1023:
	fld	dword [ebx+12]
	fadd	dword [_1566]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [esi+8]
	fadd	dword [_1567]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	cmp	eax,0
	je	_1024
	push	_1025
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1027
	call	_brl_blitz_NullObjectError
_1027:
	fld	dword [ebx+12]
	fsub	dword [_1568]
	fstp	dword [ebx+12]
_1024:
_1016:
_1003:
	push	_1029
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1031
	call	_brl_blitz_NullObjectError
_1031:
	fld	dword [ebx+20]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_1032
	push	_1033
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [_bb_terrainshape]
	cmp	edi,_bbNullObject
	jne	_1035
	call	_brl_blitz_NullObjectError
_1035:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1037
	call	_brl_blitz_NullObjectError
_1037:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1039
	call	_brl_blitz_NullObjectError
_1039:
	fld	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [esi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	cmp	eax,0
	je	_1040
	push	_1041
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1043
	call	_brl_blitz_NullObjectError
_1043:
	fldz
	fstp	dword [ebx+20]
	jmp	_1045
_1040:
	push	_1046
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [_bb_terrainshape]
	cmp	edi,_bbNullObject
	jne	_1048
	call	_brl_blitz_NullObjectError
_1048:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1050
	call	_brl_blitz_NullObjectError
_1050:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1052
	call	_brl_blitz_NullObjectError
_1052:
	fld	dword [ebx+12]
	fadd	dword [_1569]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [esi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	cmp	eax,0
	je	_1053
	push	_1054
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1056
	call	_brl_blitz_NullObjectError
_1056:
	fld	dword [ebx+12]
	fsub	dword [_1570]
	fstp	dword [ebx+12]
_1053:
_1045:
_1032:
	push	_1058
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1060
	call	_brl_blitz_NullObjectError
_1060:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1063
	call	_brl_blitz_NullObjectError
_1063:
	fld	dword [ebx+8]
	fadd	dword [esi+20]
	fstp	dword [ebx+8]
	push	_1064
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1066
	call	_brl_blitz_NullObjectError
_1066:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_1067
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1069
	call	_brl_blitz_NullObjectError
_1069:
	push	1109393408
	push	0
	push	dword [ebx+40]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_52
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	mov	ebx,0
	jmp	_240
_240:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPlayer_PowerBarUpdate:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_1115
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1071
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseDown
	add	esp,4
	cmp	eax,0
	je	_1072
	push	_1073
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1075
	call	_brl_blitz_NullObjectError
_1075:
	mov	byte [ebx+28],1
	push	_1077
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1079
	call	_brl_blitz_NullObjectError
_1079:
	add	dword [ebx+36],1
	jmp	_1081
_1072:
	push	_1082
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseDown
	add	esp,4
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1085
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1084
	call	_brl_blitz_NullObjectError
_1084:
	movzx	eax,byte [ebx+28]
	mov	eax,eax
	cmp	eax,1
	sete	al
	movzx	eax,al
_1085:
	cmp	eax,0
	je	_1087
	push	_1088
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TBullet
	call	_bbObjectNew
	add	esp,4
	mov	edi,eax
	cmp	edi,_bbNullObject
	jne	_1090
	call	_brl_blitz_NullObjectError
_1090:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1092
	call	_brl_blitz_NullObjectError
_1092:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1094
	call	_brl_blitz_NullObjectError
_1094:
	push	dword [ebp-4]
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebx+12]
	fadd	dword [_1616]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [esi+8]
	fadd	dword [_1617]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_PointsToAngle
	add	esp,16
	fadd	dword [_1618]
	sub	esp,4
	fstp	dword [esp]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,12
	push	_1095
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1097
	call	_brl_blitz_NullObjectError
_1097:
	mov	dword [ebx+36],1
	push	_1099
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1101
	call	_brl_blitz_NullObjectError
_1101:
	mov	byte [ebx+28],0
	push	_1103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_Turn],1
	push	_1104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_PLAYERS]
	cmp	dword [_bb_Turn],eax
	jle	_1105
	push	_1106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_Turn],1
_1105:
	jmp	_1107
_1087:
	push	_1108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1110
	call	_brl_blitz_NullObjectError
_1110:
	mov	dword [ebx+36],1
_1107:
_1081:
	push	_1112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1114
	call	_brl_blitz_NullObjectError
_1114:
	push	0
	push	0
	push	dword [ebx+36]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_53
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	mov	ebx,0
	jmp	_243
_243:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBullet_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1116
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TBullet
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+20]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+24]
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],0
	mov	ebx,0
	jmp	_246
_246:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBullet_Delete:
	push	ebp
	mov	ebp,esp
_249:
	mov	eax,0
	jmp	_1118
_1118:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBullet_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,ebp
	push	eax
	push	_1156
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1121
	call	_brl_blitz_NullObjectError
_1121:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1124
	call	_brl_blitz_NullObjectError
_1124:
	mov	eax,dword [esi+36]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	fstp	dword [ebx+24]
	push	_1125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1127
	call	_brl_blitz_NullObjectError
_1127:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1130
	call	_brl_blitz_NullObjectError
_1130:
	mov	eax,dword [esi+40]
	mov	dword [ebx+28],eax
	push	_1131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1133
	call	_brl_blitz_NullObjectError
_1133:
	push	dword [ebp-8]
	call	_bb_AngleToDX
	add	esp,4
	fstp	dword [ebx+8]
	push	_1135
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1137
	call	_brl_blitz_NullObjectError
_1137:
	push	dword [ebp-8]
	call	_bb_AngleToDY
	add	esp,4
	fstp	dword [ebx+12]
	push	_1139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1141
	call	_brl_blitz_NullObjectError
_1141:
	mov	edi,ebx
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1144
	call	_brl_blitz_NullObjectError
_1144:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1146
	call	_brl_blitz_NullObjectError
_1146:
	fld	dword [esi+8]
	fadd	dword [_1639]
	fld	dword [ebx+8]
	fmul	dword [_1640]
	faddp	st1,st0
	fstp	dword [edi+16]
	push	_1147
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1149
	call	_brl_blitz_NullObjectError
_1149:
	mov	edi,ebx
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1152
	call	_brl_blitz_NullObjectError
_1152:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1154
	call	_brl_blitz_NullObjectError
_1154:
	fld	dword [esi+12]
	fadd	dword [_1641]
	fld	dword [ebx+12]
	fmul	dword [_1642]
	faddp	st1,st0
	fstp	dword [edi+20]
	push	_1155
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [__bb_TBullet_BulletList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	ebx,_bbNullObject
	jmp	_254
_254:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBullet_Update:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_1207
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1159
	call	_brl_blitz_NullObjectError
_1159:
	fld	dword [ebx+12]
	fadd	dword [_1657]
	fstp	dword [ebx+12]
	push	_1161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1163
	call	_brl_blitz_NullObjectError
_1163:
	mov	esi,ebx
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_1166
	call	_brl_blitz_NullObjectError
_1166:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1168
	call	_brl_blitz_NullObjectError
_1168:
	fld	dword [esi+16]
	fld	dword [edi+8]
	fld	dword [ebx+24]
	fdiv	dword [_1658]
	fmulp	st1,st0
	faddp	st1,st0
	fstp	dword [esi+16]
	push	_1169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1171
	call	_brl_blitz_NullObjectError
_1171:
	mov	esi,ebx
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_1174
	call	_brl_blitz_NullObjectError
_1174:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1176
	call	_brl_blitz_NullObjectError
_1176:
	fld	dword [esi+20]
	fld	dword [edi+12]
	fld	dword [ebx+24]
	fdiv	dword [_1659]
	fmulp	st1,st0
	faddp	st1,st0
	fstp	dword [esi+20]
	push	_1177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1179
	call	_brl_blitz_NullObjectError
_1179:
	fld	dword [ebx+16]
	fld	dword [_1660]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_1182
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1181
	call	_brl_blitz_NullObjectError
_1181:
	fld	dword [ebx+16]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_1182:
	cmp	eax,0
	jne	_1186
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1185
	call	_brl_blitz_NullObjectError
_1185:
	fld	dword [ebx+20]
	fld	dword [_1661]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_1186:
	cmp	eax,0
	je	_1188
	push	_1189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TBullet_BulletList]
	cmp	ebx,_bbNullObject
	jne	_1191
	call	_brl_blitz_NullObjectError
_1191:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
_1188:
	push	_1192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1194
	call	_brl_blitz_NullObjectError
_1194:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	je	_1195
	push	_1196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TBullet_BulletList]
	cmp	ebx,_bbNullObject
	jne	_1198
	call	_brl_blitz_NullObjectError
_1198:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_1199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1201
	call	_brl_blitz_NullObjectError
_1201:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
_1195:
	push	_1202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1204
	call	_brl_blitz_NullObjectError
_1204:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1206
	call	_brl_blitz_NullObjectError
_1206:
	push	1082130432
	push	1082130432
	push	dword [ebx+20]
	push	dword [esi+16]
	call	_brl_max2d_DrawRect
	add	esp,16
	mov	ebx,0
	jmp	_257
_257:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBullet_Collide:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_1217
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [_bb_terrainshape]
	cmp	edi,_bbNullObject
	jne	_1210
	call	_brl_blitz_NullObjectError
_1210:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1212
	call	_brl_blitz_NullObjectError
_1212:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1214
	call	_brl_blitz_NullObjectError
_1214:
	fld	dword [ebx+20]
	fadd	dword [_1684]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [esi+16]
	fadd	dword [_1685]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	cmp	eax,0
	je	_1215
	push	_1216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],1
	jmp	_260
_1215:
	mov	byte [ebp-8],0
	jmp	_260
_260:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-8]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBullet_Detonate:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	eax,ebp
	push	eax
	push	_1247
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1220
	call	_brl_blitz_NullObjectError
_1220:
	mov	eax,dword [ebx+28]
	cmp	eax,1
	je	_1223
	cmp	eax,2
	je	_1224
	jmp	_1222
_1223:
	push	_1225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TExplosion
	call	_bbObjectNew
	add	esp,4
	mov	edi,eax
	cmp	edi,_bbNullObject
	jne	_1227
	call	_brl_blitz_NullObjectError
_1227:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1229
	call	_brl_blitz_NullObjectError
_1229:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1231
	call	_brl_blitz_NullObjectError
_1231:
	fld	dword [ebx+20]
	fadd	dword [_1692]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [esi+16]
	fadd	dword [_1693]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,12
	jmp	_1222
_1224:
	push	_1232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1235
	call	_brl_blitz_NullObjectError
_1235:
	fld	dword [ebx+20]
	fsub	dword [_1694]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-8],eax
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1237
	call	_brl_blitz_NullObjectError
_1237:
	fld	dword [ebx+20]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-12],eax
	jmp	_1238
_56:
	push	_1240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [_bb_terrainshape]
	cmp	edi,_bbNullObject
	jne	_1242
	call	_brl_blitz_NullObjectError
_1242:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1244
	call	_brl_blitz_NullObjectError
_1244:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1246
	call	_brl_blitz_NullObjectError
_1246:
	push	1
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebx+16]
	fadd	dword [_1695]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [esi+16]
	fsub	dword [_1696]
	sub	esp,4
	fstp	dword [esp]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+56]
	add	esp,20
_54:
	add	dword [ebp-8],1
_1238:
	mov	eax,dword [ebp-12]
	cmp	dword [ebp-8],eax
	jle	_56
_55:
	jmp	_1222
_1222:
	mov	ebx,0
	jmp	_263
_263:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBullet_UpdateAll:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_1262
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	edi,dword [__bb_TBullet_BulletList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1253
	call	_brl_blitz_NullObjectError
_1253:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_57
_59:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1258
	call	_brl_blitz_NullObjectError
_1258:
	push	_bb_TBullet
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_57
	push	_1259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1261
	call	_brl_blitz_NullObjectError
_1261:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
_57:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1256
	call	_brl_blitz_NullObjectError
_1256:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_59
_58:
	mov	ebx,0
	jmp	_265
_265:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_AngleToDY:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	push	ebp
	push	_1264
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fchs
	fstp	dword [ebp-8]
	jmp	_268
_268:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	mov	esp,ebp
	pop	ebp
	ret
_bb_AngleToDX:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	push	ebp
	push	_1268
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1267
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	dword [ebp-8]
	jmp	_271
_271:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	mov	esp,ebp
	pop	ebp
	ret
_bb_PointsToAngle:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	fldz
	fstp	dword [ebp-20]
	push	ebp
	push	_1277
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [ebp-12]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-8]
	fsub	dword [ebp-16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fld	qword [_1725]
	faddp	st1,st0
	fstp	dword [ebp-20]
	push	_1272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_60
_62:
	push	_1273
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fsub	dword [_1726]
	fstp	dword [ebp-20]
_60:
	fld	dword [ebp-20]
	fld	dword [_1727]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_62
_61:
	push	_1274
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_63
_65:
	push	_1275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fadd	dword [_1728]
	fstp	dword [ebp-20]
_63:
	fld	dword [ebp-20]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_65
_64:
	push	_1276
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fstp	dword [ebp-24]
	jmp	_277
_277:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-24]
	mov	esp,ebp
	pop	ebp
	ret
_bb_drawCross:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_1286
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	mov	eax,dword [ebp-8]
	add	eax,10
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	add	eax,10
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-8]
	sub	eax,10
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	sub	eax,10
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawLine
	add	esp,20
	push	_1285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	mov	eax,dword [ebp-8]
	add	eax,10
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	sub	eax,10
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-8]
	sub	eax,10
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	add	eax,10
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawLine
	add	esp,20
	mov	ebx,0
	jmp	_281
_281:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_CountFPS:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebp
	push	_1296
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_fpst]
	fstp	dword [ebp-8]
	call	_bbMilliSecs
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fld	dword [ebp-8]
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_1289
	push	_1290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	add	eax,1000
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fstp	dword [_bb_fpst]
	push	_1291
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_fpsc]
	fstp	dword [_bb_fps]
	push	_1292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [_bb_fpsc]
	jmp	_1293
_1289:
	push	_1294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_fpsc]
	fadd	dword [_1735]
	fstp	dword [_bb_fpsc]
_1293:
	push	_1295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_fps]
	fstp	dword [ebp-4]
	jmp	_283
_283:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-4]
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_378:
	dd	0
_362:
	db	"main",0
_363:
	db	"bg",0
_97:
	db	":brl.max2d.TImage",0
	align	4
_bb_bg:
	dd	_bbNullObject
_364:
	db	"player",0
	align	4
_bb_player:
	dd	_bbNullObject
_365:
	db	"terrain",0
	align	4
_bb_terrain:
	dd	_bbNullObject
_366:
	db	"explosion",0
	align	4
_bb_explosion:
	dd	_bbNullObject
_367:
	db	"terrainshape",0
_368:
	db	":hshape",0
	align	4
_bb_terrainshape:
	dd	_bbNullObject
_369:
	db	"exphole",0
	align	4
_bb_exphole:
	dd	_bbNullObject
_370:
	db	"player1",0
_371:
	db	":TPlayer",0
	align	4
_bb_player1:
	dd	_bbNullObject
_372:
	db	"player2",0
	align	4
_bb_player2:
	dd	_bbNullObject
_373:
	db	"Turn",0
_78:
	db	"i",0
	align	4
_bb_Turn:
	dd	1
_374:
	db	"PLAYERS",0
	align	4
_bb_PLAYERS:
	dd	2
_375:
	db	"fps",0
_116:
	db	"f",0
	align	4
_bb_fps:
	dd	0x0
_376:
	db	"fpst",0
	align	4
_bb_fpst:
	dd	0x0
_377:
	db	"fpsc",0
	align	4
_bb_fpsc:
	dd	0x0
	align	4
_361:
	dd	1
	dd	_362
	dd	4
	dd	_363
	dd	_97
	dd	_bb_bg
	dd	4
	dd	_364
	dd	_97
	dd	_bb_player
	dd	4
	dd	_365
	dd	_97
	dd	_bb_terrain
	dd	4
	dd	_366
	dd	_97
	dd	_bb_explosion
	dd	4
	dd	_367
	dd	_368
	dd	_bb_terrainshape
	dd	4
	dd	_369
	dd	_368
	dd	_bb_exphole
	dd	4
	dd	_370
	dd	_371
	dd	_bb_player1
	dd	4
	dd	_372
	dd	_371
	dd	_bb_player2
	dd	4
	dd	_373
	dd	_78
	dd	_bb_Turn
	dd	4
	dd	_374
	dd	_78
	dd	_bb_PLAYERS
	dd	4
	dd	_375
	dd	_116
	dd	_bb_fps
	dd	4
	dd	_376
	dd	_116
	dd	_bb_fpst
	dd	4
	dd	_377
	dd	_116
	dd	_bb_fpsc
	dd	0
_76:
	db	"hline",0
_77:
	db	"_start",0
_79:
	db	"_end",0
_80:
	db	"_y",0
_81:
	db	"Added",0
_82:
	db	"New",0
_83:
	db	"()i",0
_84:
	db	"Delete",0
_85:
	db	"Draw",0
_86:
	db	"(:brl.max2d.TImage)i",0
_87:
	db	"Create",0
_88:
	db	"(i,i,i,i):hline",0
_89:
	db	"Split",0
_90:
	db	"(:hline,*:hline)i",0
_91:
	db	"Move",0
_92:
	db	"(i,i)i",0
_93:
	db	"Collide",0
	align	4
_75:
	dd	2
	dd	_76
	dd	3
	dd	_77
	dd	_78
	dd	8
	dd	3
	dd	_79
	dd	_78
	dd	12
	dd	3
	dd	_80
	dd	_78
	dd	16
	dd	3
	dd	_81
	dd	_78
	dd	20
	dd	6
	dd	_82
	dd	_83
	dd	16
	dd	6
	dd	_84
	dd	_83
	dd	20
	dd	6
	dd	_85
	dd	_86
	dd	48
	dd	7
	dd	_87
	dd	_88
	dd	52
	dd	6
	dd	_89
	dd	_90
	dd	56
	dd	6
	dd	_91
	dd	_92
	dd	60
	dd	6
	dd	_93
	dd	_92
	dd	64
	dd	0
	align	4
_bb_hline:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_75
	dd	24
	dd	__bb_hline_New
	dd	__bb_hline_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_hline_Draw
	dd	__bb_hline_Create
	dd	__bb_hline_Split
	dd	__bb_hline_Move
	dd	__bb_hline_Collide
_95:
	db	"hshape",0
_96:
	db	"img",0
_98:
	db	"lines",0
_99:
	db	":brl.linkedlist.TList",0
_100:
	db	"x",0
_101:
	db	"y",0
_102:
	db	"($):hshape",0
_103:
	db	"AddLine",0
_104:
	db	"(f,f,f,i)i",0
_105:
	db	"SortLinesByHeight",0
_106:
	db	"(:Object,:Object)i",0
_107:
	db	"Position",0
_108:
	db	"Subtract",0
_109:
	db	"(:hshape)i",0
_110:
	db	"CollidePixel",0
_111:
	db	"GenShape",0
	align	4
_94:
	dd	2
	dd	_95
	dd	3
	dd	_96
	dd	_97
	dd	8
	dd	3
	dd	_98
	dd	_99
	dd	12
	dd	3
	dd	_100
	dd	_78
	dd	16
	dd	3
	dd	_101
	dd	_78
	dd	20
	dd	6
	dd	_82
	dd	_83
	dd	16
	dd	6
	dd	_84
	dd	_83
	dd	20
	dd	7
	dd	_87
	dd	_102
	dd	48
	dd	6
	dd	_85
	dd	_83
	dd	52
	dd	6
	dd	_103
	dd	_104
	dd	56
	dd	7
	dd	_105
	dd	_106
	dd	60
	dd	6
	dd	_107
	dd	_92
	dd	64
	dd	6
	dd	_108
	dd	_109
	dd	68
	dd	6
	dd	_110
	dd	_92
	dd	72
	dd	7
	dd	_111
	dd	_102
	dd	76
	dd	0
	align	4
_bb_hshape:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_94
	dd	24
	dd	__bb_hshape_New
	dd	__bb_hshape_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_hshape_Create
	dd	__bb_hshape_Draw
	dd	__bb_hshape_AddLine
	dd	__bb_hshape_SortLinesByHeight
	dd	__bb_hshape_Position
	dd	__bb_hshape_Subtract
	dd	__bb_hshape_CollidePixel
	dd	__bb_hshape_GenShape
_286:
	db	"D:/Programming And Webdesign/Binary Source/BlitzMax/Tankfire/inc.engine.bmx",0
	align	4
_285:
	dd	_286
	dd	165
	dd	2
	align	4
_288:
	dd	0
	align	4
__bb_TExplosion_ExplosionList:
	dd	_bbNullObject
_113:
	db	"TExplosion",0
_114:
	db	"frame",0
_115:
	db	"s",0
_117:
	db	"a",0
_118:
	db	"(i,i):TExplosion",0
_119:
	db	"Update",0
_120:
	db	"UpdateAll",0
	align	4
_112:
	dd	2
	dd	_113
	dd	3
	dd	_114
	dd	_78
	dd	8
	dd	3
	dd	_100
	dd	_78
	dd	12
	dd	3
	dd	_101
	dd	_78
	dd	16
	dd	3
	dd	_115
	dd	_116
	dd	20
	dd	3
	dd	_117
	dd	_116
	dd	24
	dd	6
	dd	_82
	dd	_83
	dd	16
	dd	6
	dd	_84
	dd	_83
	dd	20
	dd	6
	dd	_87
	dd	_118
	dd	48
	dd	6
	dd	_119
	dd	_83
	dd	52
	dd	7
	dd	_120
	dd	_83
	dd	56
	dd	0
	align	4
_bb_TExplosion:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_112
	dd	28
	dd	__bb_TExplosion_New
	dd	__bb_TExplosion_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TExplosion_Create
	dd	__bb_TExplosion_Update
	dd	__bb_TExplosion_UpdateAll
	align	4
_290:
	dd	_286
	dd	197
	dd	2
	align	4
__bb_TPlayer_PlayerList:
	dd	_bbNullObject
_122:
	db	"TPlayer",0
_123:
	db	"dy",0
_124:
	db	"dx",0
_125:
	db	"GunAngle",0
_126:
	db	"StartFire",0
_127:
	db	"b",0
_128:
	db	"FireCounter",0
_129:
	db	"power",0
_130:
	db	"Weapon",0
_131:
	db	"DrawAll",0
_132:
	db	"CollisionUpdates",0
_133:
	db	"PowerBarUpdate",0
	align	4
_121:
	dd	2
	dd	_122
	dd	3
	dd	_100
	dd	_116
	dd	8
	dd	3
	dd	_101
	dd	_116
	dd	12
	dd	3
	dd	_123
	dd	_116
	dd	16
	dd	3
	dd	_124
	dd	_116
	dd	20
	dd	3
	dd	_125
	dd	_116
	dd	24
	dd	3
	dd	_126
	dd	_127
	dd	28
	dd	3
	dd	_128
	dd	_78
	dd	32
	dd	3
	dd	_129
	dd	_78
	dd	36
	dd	3
	dd	_130
	dd	_78
	dd	40
	dd	6
	dd	_82
	dd	_83
	dd	16
	dd	6
	dd	_84
	dd	_83
	dd	20
	dd	7
	dd	_131
	dd	_83
	dd	48
	dd	6
	dd	_132
	dd	_83
	dd	52
	dd	6
	dd	_119
	dd	_83
	dd	56
	dd	6
	dd	_133
	dd	_83
	dd	60
	dd	0
	align	4
_bb_TPlayer:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_121
	dd	44
	dd	__bb_TPlayer_New
	dd	__bb_TPlayer_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TPlayer_DrawAll
	dd	__bb_TPlayer_CollisionUpdates
	dd	__bb_TPlayer_Update
	dd	__bb_TPlayer_PowerBarUpdate
	align	4
_293:
	dd	_286
	dd	278
	dd	2
	align	4
__bb_TBullet_BulletList:
	dd	_bbNullObject
_135:
	db	"TBullet",0
_136:
	db	"(f,:TPlayer):TBullet",0
_137:
	db	"()b",0
_138:
	db	"Detonate",0
	align	4
_134:
	dd	2
	dd	_135
	dd	3
	dd	_124
	dd	_116
	dd	8
	dd	3
	dd	_123
	dd	_116
	dd	12
	dd	3
	dd	_100
	dd	_116
	dd	16
	dd	3
	dd	_101
	dd	_116
	dd	20
	dd	3
	dd	_129
	dd	_116
	dd	24
	dd	3
	dd	_130
	dd	_78
	dd	28
	dd	6
	dd	_82
	dd	_83
	dd	16
	dd	6
	dd	_84
	dd	_83
	dd	20
	dd	6
	dd	_87
	dd	_136
	dd	48
	dd	6
	dd	_119
	dd	_83
	dd	52
	dd	6
	dd	_93
	dd	_137
	dd	56
	dd	6
	dd	_138
	dd	_83
	dd	60
	dd	7
	dd	_120
	dd	_83
	dd	64
	dd	0
	align	4
_bb_TBullet:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_134
	dd	32
	dd	__bb_TBullet_New
	dd	__bb_TBullet_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TBullet_Create
	dd	__bb_TBullet_Update
	dd	__bb_TBullet_Collide
	dd	__bb_TBullet_Detonate
	dd	__bb_TBullet_UpdateAll
_297:
	db	"D:/Programming And Webdesign/Binary Source/BlitzMax/Tankfire/main.bmx",0
	align	4
_296:
	dd	_297
	dd	3
	dd	1
	align	4
_298:
	dd	_297
	dd	4
	dd	1
	align	4
_299:
	dd	_297
	dd	5
	dd	1
	align	4
_300:
	dd	_297
	dd	6
	dd	1
	align	4
_301:
	dd	_297
	dd	7
	dd	1
	align	4
_66:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	76,111,97,100,105,110,103,46,46,46
	align	4
_302:
	dd	_297
	dd	8
	dd	1
_304:
	db	"D:/Programming And Webdesign/Binary Source/BlitzMax/Tankfire/inc.media.bmx",0
	align	4
_303:
	dd	_304
	dd	1
	dd	1
	align	4
_67:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	77,101,100,105,97,47,98,97,99,107,103,114,111,117,110,100
	dw	46,112,110,103
	align	4
_307:
	dd	_304
	dd	2
	dd	1
	align	4
_68:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	77,101,100,105,97,47,116,97,110,107,49,46,112,110,103
	align	4
_310:
	dd	_304
	dd	3
	dd	1
	align	4
_69:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	77,101,100,105,97,47,116,101,114,114,97,105,110,46,112,110
	dw	103
	align	4
_313:
	dd	_304
	dd	4
	dd	1
	align	4
_70:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	77,101,100,105,97,47,101,120,112,108,111,115,105,111,110,46
	dw	112,110,103
	align	4
_316:
	dd	_304
	dd	5
	dd	1
	align	4
_317:
	dd	_304
	dd	7
	dd	1
	align	4
_320:
	dd	_304
	dd	8
	dd	1
	align	4
_323:
	dd	_304
	dd	9
	dd	1
	align	4
_326:
	dd	_304
	dd	10
	dd	1
	align	4
_329:
	dd	_304
	dd	11
	dd	1
	align	4
_330:
	dd	_304
	dd	12
	dd	1
	align	4
_331:
	dd	_297
	dd	14
	dd	1
	align	4
_332:
	dd	_297
	dd	15
	dd	2
	align	4
_333:
	dd	_297
	dd	17
	dd	2
	align	4
_334:
	dd	_297
	dd	18
	dd	2
	align	4
_337:
	dd	_297
	dd	19
	dd	2
	align	4
_338:
	dd	_297
	dd	20
	dd	2
	align	4
_343:
	dd	_297
	dd	22
	dd	4
	align	4
_346:
	dd	_297
	dd	24
	dd	4
	align	4
_349:
	dd	_297
	dd	26
	dd	2
	align	4
_350:
	dd	_297
	dd	27
	dd	2
	align	4
_351:
	dd	_297
	dd	28
	dd	2
	align	4
_352:
	dd	_297
	dd	29
	dd	2
	align	4
_357:
	dd	_297
	dd	30
	dd	2
	align	4
_74:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	70,80,83,58
	align	4
_358:
	dd	_297
	dd	32
	dd	2
	align	4
_359:
	dd	_297
	dd	34
	dd	1
	align	4
_360:
	dd	_297
	dd	40
	dd	1
_381:
	db	"Self",0
_382:
	db	":hline",0
	align	4
_380:
	dd	1
	dd	_82
	dd	2
	dd	_381
	dd	_382
	dd	-4
	dd	0
	align	4
_415:
	dd	1
	dd	_85
	dd	2
	dd	_381
	dd	_382
	dd	-4
	dd	2
	dd	_96
	dd	_97
	dd	-8
	dd	0
	align	4
_384:
	dd	_286
	dd	9
	dd	3
	align	4
_388:
	dd	_286
	dd	10
	dd	4
	align	4
_398:
	dd	_286
	dd	12
	dd	4
_436:
	db	"e",0
_437:
	db	"hl",0
	align	4
_435:
	dd	1
	dd	_87
	dd	2
	dd	_115
	dd	_78
	dd	-4
	dd	2
	dd	_436
	dd	_78
	dd	-8
	dd	2
	dd	_101
	dd	_78
	dd	-12
	dd	2
	dd	_117
	dd	_78
	dd	-16
	dd	2
	dd	_437
	dd	_382
	dd	-20
	dd	0
	align	4
_416:
	dd	_286
	dd	18
	dd	3
	align	4
_418:
	dd	_286
	dd	19
	dd	3
	align	4
_422:
	dd	_286
	dd	20
	dd	3
	align	4
_426:
	dd	_286
	dd	21
	dd	3
	align	4
_430:
	dd	_286
	dd	22
	dd	3
	align	4
_434:
	dd	_286
	dd	23
	dd	3
_546:
	db	"hlDest",0
	align	4
_545:
	dd	1
	dd	_89
	dd	2
	dd	_381
	dd	_382
	dd	-4
	dd	2
	dd	_437
	dd	_382
	dd	-8
	dd	5
	dd	_546
	dd	_382
	dd	-12
	dd	0
	align	4
_438:
	dd	_286
	dd	28
	dd	3
	align	4
_444:
	dd	_286
	dd	29
	dd	4
	align	4
_450:
	dd	_286
	dd	30
	dd	5
	align	4
_456:
	dd	_286
	dd	31
	dd	6
	align	4
_462:
	dd	_286
	dd	32
	dd	7
	align	4
_466:
	dd	_286
	dd	33
	dd	8
	align	4
_478:
	dd	_286
	dd	35
	dd	8
	align	4
_489:
	dd	_286
	dd	38
	dd	6
	align	4
_495:
	dd	_286
	dd	39
	dd	6
	align	4
_501:
	dd	_286
	dd	40
	dd	10
	align	4
_507:
	dd	_286
	dd	41
	dd	6
	align	4
_513:
	dd	_286
	dd	42
	dd	6
	align	4
_519:
	dd	_286
	dd	44
	dd	9
	align	4
_525:
	dd	_286
	dd	45
	dd	5
	align	4
_531:
	dd	_286
	dd	46
	dd	6
	align	4
_533:
	dd	_286
	dd	48
	dd	6
	align	4
_539:
	dd	_286
	dd	49
	dd	6
	align	4
_544:
	dd	_286
	dd	53
	dd	3
_560:
	db	"mx",0
_561:
	db	"my",0
	align	4
_559:
	dd	1
	dd	_91
	dd	2
	dd	_381
	dd	_382
	dd	-4
	dd	2
	dd	_560
	dd	_78
	dd	-8
	dd	2
	dd	_561
	dd	_78
	dd	-12
	dd	0
	align	4
_547:
	dd	_286
	dd	58
	dd	3
	align	4
_551:
	dd	_286
	dd	59
	dd	3
	align	4
_555:
	dd	_286
	dd	60
	dd	3
	align	4
_574:
	dd	1
	dd	_93
	dd	2
	dd	_381
	dd	_382
	dd	-4
	dd	2
	dd	_100
	dd	_78
	dd	-8
	dd	2
	dd	_101
	dd	_78
	dd	-12
	dd	0
	align	4
_562:
	dd	_286
	dd	64
	dd	3
	align	4
_566:
	dd	_286
	dd	64
	dd	17
	align	4
_573:
	dd	_286
	dd	65
	dd	3
	align	4
_577:
	dd	1
	dd	_82
	dd	2
	dd	_381
	dd	_368
	dd	-4
	dd	0
_605:
	db	"filename",0
_606:
	db	"$",0
_607:
	db	"hs",0
	align	4
_604:
	dd	1
	dd	_87
	dd	2
	dd	_605
	dd	_606
	dd	-4
	dd	2
	dd	_607
	dd	_368
	dd	-8
	dd	0
	align	4
_583:
	dd	_286
	dd	77
	dd	3
	align	4
_585:
	dd	_286
	dd	78
	dd	3
	align	4
_593:
	dd	_286
	dd	79
	dd	3
	align	4
_595:
	dd	_286
	dd	79
	dd	26
	align	4
_603:
	dd	_286
	dd	80
	dd	3
	align	4
_625:
	dd	1
	dd	_85
	dd	2
	dd	_381
	dd	_368
	dd	-4
	dd	2
	dd	_437
	dd	_382
	dd	-8
	dd	0
	align	4
_608:
	dd	_286
	dd	84
	dd	3
	align	4
_620:
	dd	_286
	dd	85
	dd	5
	align	4
_634:
	dd	1
	dd	_103
	dd	2
	dd	_381
	dd	_368
	dd	-4
	dd	2
	dd	_115
	dd	_116
	dd	-8
	dd	2
	dd	_436
	dd	_116
	dd	-12
	dd	2
	dd	_101
	dd	_116
	dd	-16
	dd	2
	dd	_117
	dd	_78
	dd	-20
	dd	0
	align	4
_626:
	dd	_286
	dd	90
	dd	3
	align	4
_631:
	dd	_286
	dd	91
	dd	3
_641:
	db	"h0",0
_642:
	db	":Object",0
_643:
	db	"h1",0
	align	4
_640:
	dd	1
	dd	_105
	dd	2
	dd	_641
	dd	_642
	dd	-4
	dd	2
	dd	_643
	dd	_642
	dd	-8
	dd	0
	align	4
_635:
	dd	_286
	dd	95
	dd	3
_680:
	db	"_x",0
_681:
	db	"xmove",0
_682:
	db	"ymove",0
_683:
	db	"hlThis",0
	align	4
_679:
	dd	1
	dd	_107
	dd	2
	dd	_381
	dd	_368
	dd	-4
	dd	2
	dd	_680
	dd	_78
	dd	-8
	dd	2
	dd	_80
	dd	_78
	dd	-12
	dd	2
	dd	_681
	dd	_78
	dd	-16
	dd	2
	dd	_682
	dd	_78
	dd	-20
	dd	2
	dd	_683
	dd	_382
	dd	-24
	dd	0
	align	4
_644:
	dd	_286
	dd	99
	dd	3
	align	4
_648:
	dd	_286
	dd	100
	dd	3
	align	4
_652:
	dd	_286
	dd	101
	dd	3
	align	4
_656:
	dd	_286
	dd	102
	dd	3
	align	4
_660:
	dd	_286
	dd	103
	dd	3
	align	4
_664:
	dd	_286
	dd	104
	dd	4
	align	4
_676:
	dd	_286
	dd	105
	dd	5
_739:
	db	"hlOther",0
_740:
	db	"hlNew",0
	align	4
_738:
	dd	1
	dd	_108
	dd	2
	dd	_381
	dd	_368
	dd	-4
	dd	2
	dd	_607
	dd	_368
	dd	-8
	dd	2
	dd	_739
	dd	_382
	dd	-12
	dd	2
	dd	_683
	dd	_382
	dd	-16
	dd	2
	dd	_740
	dd	_382
	dd	-20
	dd	0
	align	4
_684:
	dd	_286
	dd	111
	dd	3
	align	4
_696:
	dd	_286
	dd	112
	dd	4
	align	4
_708:
	dd	_286
	dd	113
	dd	5
	align	4
_710:
	dd	_286
	dd	114
	dd	5
	align	4
_716:
	dd	_286
	dd	114
	dd	35
	align	4
_717:
	dd	_286
	dd	115
	dd	5
	align	4
_723:
	dd	_286
	dd	116
	dd	6
	align	4
_728:
	dd	_286
	dd	118
	dd	5
	align	4
_730:
	dd	_286
	dd	119
	dd	6
	align	4
_735:
	dd	_286
	dd	120
	dd	6
	align	4
_769:
	dd	1
	dd	_110
	dd	2
	dd	_381
	dd	_368
	dd	-4
	dd	2
	dd	_100
	dd	_78
	dd	-8
	dd	2
	dd	_101
	dd	_78
	dd	-12
	dd	2
	dd	_683
	dd	_382
	dd	-16
	dd	0
	align	4
_741:
	dd	_286
	dd	127
	dd	3
	align	4
_753:
	dd	_286
	dd	128
	dd	4
	align	4
_757:
	dd	_286
	dd	129
	dd	5
	align	4
_759:
	dd	_286
	dd	130
	dd	9
	align	4
_767:
	dd	_286
	dd	131
	dd	5
	align	4
_768:
	dd	_286
	dd	134
	dd	3
_818:
	db	"imagePath",0
_819:
	db	"shape",0
_820:
	db	"dot",0
_821:
	db	"tmp",0
_822:
	db	":brl.pixmap.TPixmap",0
_823:
	db	"argb",0
_824:
	db	"t",0
	align	4
_817:
	dd	1
	dd	_111
	dd	2
	dd	_818
	dd	_606
	dd	-4
	dd	2
	dd	_819
	dd	_368
	dd	-8
	dd	2
	dd	_820
	dd	_368
	dd	-12
	dd	2
	dd	_821
	dd	_822
	dd	-16
	dd	2
	dd	_823
	dd	_78
	dd	-20
	dd	2
	dd	_117
	dd	_78
	dd	-24
	dd	2
	dd	_824
	dd	_78
	dd	-28
	dd	2
	dd	_100
	dd	_78
	dd	-32
	dd	2
	dd	_101
	dd	_78
	dd	-36
	dd	0
	align	4
_770:
	dd	_286
	dd	138
	dd	3
	align	4
_772:
	dd	_286
	dd	139
	dd	3
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_774:
	dd	_286
	dd	140
	dd	3
	align	4
_777:
	dd	_286
	dd	141
	dd	3
	align	4
_779:
	dd	_286
	dd	142
	dd	3
	align	4
_781:
	dd	_286
	dd	143
	dd	3
	align	4
_783:
	dd	_286
	dd	145
	dd	3
	align	4
_789:
	dd	_286
	dd	146
	dd	5
	align	4
_794:
	dd	_286
	dd	149
	dd	3
	align	4
_800:
	dd	_286
	dd	150
	dd	4
	align	4
_806:
	dd	_286
	dd	151
	dd	5
	align	4
_807:
	dd	_286
	dd	152
	dd	5
	align	4
_808:
	dd	_286
	dd	153
	dd	5
	align	4
_810:
	dd	_286
	dd	154
	dd	6
	align	4
_813:
	dd	_286
	dd	155
	dd	6
	align	4
_816:
	dd	_286
	dd	159
	dd	3
_826:
	db	":TExplosion",0
	align	4
_825:
	dd	1
	dd	_82
	dd	2
	dd	_381
	dd	_826
	dd	-4
	dd	0
	align	4
_837:
	dd	1
	dd	_87
	dd	2
	dd	_381
	dd	_826
	dd	-4
	dd	2
	dd	_680
	dd	_78
	dd	-8
	dd	2
	dd	_80
	dd	_78
	dd	-12
	dd	0
	align	4
_828:
	dd	_286
	dd	170
	dd	3
	align	4
_832:
	dd	_286
	dd	171
	dd	3
	align	4
_836:
	dd	_286
	dd	172
	dd	3
	align	4
_886:
	dd	1
	dd	_119
	dd	2
	dd	_381
	dd	_826
	dd	-4
	dd	0
	align	4
_838:
	dd	_286
	dd	175
	dd	3
	align	4
_842:
	dd	_286
	dd	176
	dd	4
	align	4
_845:
	dd	_286
	dd	177
	dd	4
	align	4
_852:
	dd	_286
	dd	178
	dd	4
	align	4
_855:
	dd	_286
	dd	180
	dd	3
	align	4
_1506:
	dd	0x3dcccccd
	align	4
_861:
	dd	_286
	dd	181
	dd	3
	align	4
_1507:
	dd	0x3f800000
	align	4
_1508:
	dd	0x3d4ccccd
	align	4
_867:
	dd	_286
	dd	182
	dd	3
	align	4
_872:
	dd	_286
	dd	183
	dd	3
	align	4
_875:
	dd	_286
	dd	184
	dd	3
	align	4
_880:
	dd	_286
	dd	185
	dd	3
	align	4
_881:
	dd	_286
	dd	186
	dd	3
	align	4
_882:
	dd	_286
	dd	187
	dd	3
	align	4
_900:
	dd	1
	dd	_120
	dd	2
	dd	_436
	dd	_826
	dd	-4
	dd	0
	align	4
_887:
	dd	_286
	dd	190
	dd	3
	align	4
_897:
	dd	_286
	dd	191
	dd	4
	align	4
_910:
	dd	1
	dd	_82
	dd	2
	dd	_381
	dd	_371
	dd	-4
	dd	0
	align	4
_901:
	dd	_286
	dd	207
	dd	3
	align	4
_905:
	dd	_286
	dd	208
	dd	3
	align	4
_1535:
	dd	0x43af0000
	align	4
_909:
	dd	_286
	dd	209
	dd	3
_931:
	db	"p",0
	align	4
_930:
	dd	1
	dd	_131
	dd	2
	dd	_931
	dd	_371
	dd	-4
	dd	0
	align	4
_912:
	dd	_286
	dd	213
	dd	3
	align	4
_922:
	dd	_286
	dd	214
	dd	4
	align	4
_927:
	dd	_286
	dd	215
	dd	4
	align	4
_955:
	dd	1
	dd	_132
	dd	2
	dd	_381
	dd	_371
	dd	-4
	dd	0
	align	4
_932:
	dd	_286
	dd	220
	dd	3
	align	4
_1551:
	dd	0x41600000
	align	4
_1552:
	dd	0x41200000
	align	4
_940:
	dd	_286
	dd	221
	dd	4
	align	4
_945:
	dd	_286
	dd	223
	dd	4
	align	4
_1553:
	dd	0x40400000
	align	4
_949:
	dd	_286
	dd	225
	dd	3
	align	4
_1070:
	dd	1
	dd	_119
	dd	2
	dd	_381
	dd	_371
	dd	-4
	dd	0
	align	4
_956:
	dd	_286
	dd	229
	dd	3
	align	4
_960:
	dd	_286
	dd	230
	dd	3
	align	4
_962:
	dd	_286
	dd	231
	dd	4
	align	4
_1564:
	dd	0xbf800000
	align	4
_966:
	dd	_286
	dd	233
	dd	3
	align	4
_968:
	dd	_286
	dd	234
	dd	4
	align	4
_972:
	dd	_286
	dd	236
	dd	3
	align	4
_974:
	dd	_286
	dd	236
	dd	20
	align	4
_978:
	dd	_286
	dd	237
	dd	3
	align	4
_980:
	dd	_286
	dd	237
	dd	20
	align	4
_984:
	dd	_286
	dd	238
	dd	3
	align	4
_988:
	dd	_286
	dd	238
	dd	17
	align	4
_992:
	dd	_286
	dd	239
	dd	3
	align	4
_996:
	dd	_286
	dd	239
	dd	17
	align	4
_1000:
	dd	_286
	dd	240
	dd	3
	align	4
_1004:
	dd	_286
	dd	241
	dd	4
	align	4
_1565:
	dd	0x41a00000
	align	4
_1012:
	dd	_286
	dd	242
	dd	5
	align	4
_1017:
	dd	_286
	dd	243
	dd	4
	align	4
_1566:
	dd	0x41500000
	align	4
_1567:
	dd	0x41a00000
	align	4
_1025:
	dd	_286
	dd	244
	dd	5
	align	4
_1568:
	dd	0x3f800000
	align	4
_1029:
	dd	_286
	dd	247
	dd	3
	align	4
_1033:
	dd	_286
	dd	248
	dd	4
	align	4
_1041:
	dd	_286
	dd	249
	dd	5
	align	4
_1046:
	dd	_286
	dd	250
	dd	4
	align	4
_1569:
	dd	0x41500000
	align	4
_1054:
	dd	_286
	dd	251
	dd	5
	align	4
_1570:
	dd	0x3f800000
	align	4
_1058:
	dd	_286
	dd	254
	dd	3
	align	4
_1064:
	dd	_286
	dd	255
	dd	3
	align	4
_1067:
	dd	_286
	dd	256
	dd	3
	align	4
_52:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	67,117,114,114,101,110,116,32,87,101,97,112,111,110,58
	align	4
_1115:
	dd	1
	dd	_133
	dd	2
	dd	_381
	dd	_371
	dd	-4
	dd	0
	align	4
_1071:
	dd	_286
	dd	260
	dd	3
	align	4
_1073:
	dd	_286
	dd	261
	dd	4
	align	4
_1077:
	dd	_286
	dd	262
	dd	4
	align	4
_1082:
	dd	_286
	dd	263
	dd	3
	align	4
_1088:
	dd	_286
	dd	264
	dd	4
	align	4
_1616:
	dd	0x40e00000
	align	4
_1617:
	dd	0x41200000
	align	4
_1618:
	dd	0x42b40000
	align	4
_1095:
	dd	_286
	dd	265
	dd	4
	align	4
_1099:
	dd	_286
	dd	266
	dd	4
	align	4
_1103:
	dd	_286
	dd	267
	dd	4
	align	4
_1104:
	dd	_286
	dd	268
	dd	4
	align	4
_1106:
	dd	_286
	dd	268
	dd	22
	align	4
_1108:
	dd	_286
	dd	270
	dd	4
	align	4
_1112:
	dd	_286
	dd	272
	dd	3
	align	4
_53:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	80,111,119,101,114,58
_1117:
	db	":TBullet",0
	align	4
_1116:
	dd	1
	dd	_82
	dd	2
	dd	_381
	dd	_1117
	dd	-4
	dd	0
	align	4
_1156:
	dd	1
	dd	_87
	dd	2
	dd	_381
	dd	_1117
	dd	-4
	dd	2
	dd	_117
	dd	_116
	dd	-8
	dd	2
	dd	_931
	dd	_371
	dd	-12
	dd	0
	align	4
_1119:
	dd	_286
	dd	286
	dd	3
	align	4
_1125:
	dd	_286
	dd	287
	dd	3
	align	4
_1131:
	dd	_286
	dd	288
	dd	3
	align	4
_1135:
	dd	_286
	dd	289
	dd	3
	align	4
_1139:
	dd	_286
	dd	290
	dd	3
	align	4
_1639:
	dd	0x41200000
	align	4
_1640:
	dd	0x40400000
	align	4
_1147:
	dd	_286
	dd	291
	dd	3
	align	4
_1641:
	dd	0x40e00000
	align	4
_1642:
	dd	0x40400000
	align	4
_1155:
	dd	_286
	dd	292
	dd	3
	align	4
_1207:
	dd	1
	dd	_119
	dd	2
	dd	_381
	dd	_1117
	dd	-4
	dd	0
	align	4
_1157:
	dd	_286
	dd	295
	dd	3
	align	4
_1657:
	dd	0x3ccccccd
	align	4
_1161:
	dd	_286
	dd	296
	dd	3
	align	4
_1658:
	dd	0x40a00000
	align	4
_1169:
	dd	_286
	dd	297
	dd	3
	align	4
_1659:
	dd	0x40a00000
	align	4
_1177:
	dd	_286
	dd	298
	dd	3
	align	4
_1660:
	dd	0x44800000
	align	4
_1661:
	dd	0x44400000
	align	4
_1189:
	dd	_286
	dd	299
	dd	4
	align	4
_1192:
	dd	_286
	dd	301
	dd	3
	align	4
_1196:
	dd	_286
	dd	301
	dd	16
	align	4
_1199:
	dd	_286
	dd	301
	dd	40
	align	4
_1202:
	dd	_286
	dd	302
	dd	3
	align	4
_1217:
	dd	1
	dd	_93
	dd	2
	dd	_381
	dd	_1117
	dd	-4
	dd	0
	align	4
_1208:
	dd	_286
	dd	305
	dd	3
	align	4
_1684:
	dd	0x40000000
	align	4
_1685:
	dd	0x40000000
	align	4
_1216:
	dd	_286
	dd	306
	dd	4
_1248:
	db	"ty",0
	align	4
_1247:
	dd	1
	dd	_138
	dd	2
	dd	_381
	dd	_1117
	dd	-4
	dd	2
	dd	_1248
	dd	_78
	dd	-8
	dd	0
	align	4
_1218:
	dd	_286
	dd	310
	dd	3
	align	4
_1225:
	dd	_286
	dd	312
	dd	5
	align	4
_1692:
	dd	0x40000000
	align	4
_1693:
	dd	0x40000000
	align	4
_1232:
	dd	_286
	dd	314
	dd	5
	align	4
_1694:
	dd	0x42c80000
	align	4
_1240:
	dd	_286
	dd	315
	dd	6
	align	4
_1695:
	dd	0x40a00000
	align	4
_1696:
	dd	0x40a00000
	align	4
_1262:
	dd	1
	dd	_120
	dd	2
	dd	_127
	dd	_1117
	dd	-4
	dd	0
	align	4
_1249:
	dd	_286
	dd	320
	dd	3
	align	4
_1259:
	dd	_286
	dd	321
	dd	4
_1265:
	db	"AngleToDY",0
_1266:
	db	"angle",0
	align	4
_1264:
	dd	1
	dd	_1265
	dd	2
	dd	_1266
	dd	_116
	dd	-4
	dd	0
	align	4
_1263:
	dd	_286
	dd	329
	dd	2
_1269:
	db	"AngleToDX",0
	align	4
_1268:
	dd	1
	dd	_1269
	dd	2
	dd	_1266
	dd	_116
	dd	-4
	dd	0
	align	4
_1267:
	dd	_286
	dd	333
	dd	3
_1278:
	db	"PointsToAngle",0
_1279:
	db	"x1",0
_1280:
	db	"y1",0
_1281:
	db	"x2",0
_1282:
	db	"y2",0
_1283:
	db	"direction",0
	align	4
_1277:
	dd	1
	dd	_1278
	dd	2
	dd	_1279
	dd	_116
	dd	-4
	dd	2
	dd	_1280
	dd	_116
	dd	-8
	dd	2
	dd	_1281
	dd	_116
	dd	-12
	dd	2
	dd	_1282
	dd	_116
	dd	-16
	dd	2
	dd	_1283
	dd	_116
	dd	-20
	dd	0
	align	4
_1270:
	dd	_286
	dd	337
	dd	2
	align	8
_1725:
	dd	0x0,0x40668000
	align	4
_1272:
	dd	_286
	dd	339
	dd	2
	align	4
_1273:
	dd	_286
	dd	340
	dd	3
	align	4
_1726:
	dd	0x43340000
	align	4
_1727:
	dd	0x43b40000
	align	4
_1274:
	dd	_286
	dd	343
	dd	2
	align	4
_1275:
	dd	_286
	dd	344
	dd	3
	align	4
_1728:
	dd	0x43340000
	align	4
_1276:
	dd	_286
	dd	347
	dd	2
_1287:
	db	"drawCross",0
	align	4
_1286:
	dd	1
	dd	_1287
	dd	2
	dd	_100
	dd	_78
	dd	-4
	dd	2
	dd	_101
	dd	_78
	dd	-8
	dd	0
	align	4
_1284:
	dd	_297
	dd	37
	dd	2
	align	4
_1285:
	dd	_297
	dd	38
	dd	2
_1297:
	db	"CountFPS",0
	align	4
_1296:
	dd	1
	dd	_1297
	dd	0
	align	4
_1288:
	dd	_297
	dd	42
	dd	2
	align	4
_1290:
	dd	_297
	dd	43
	dd	3
	align	4
_1291:
	dd	_297
	dd	44
	dd	3
	align	4
_1292:
	dd	_297
	dd	45
	dd	3
	align	4
_1294:
	dd	_297
	dd	47
	dd	3
	align	4
_1735:
	dd	0x3f800000
	align	4
_1295:
	dd	_297
	dd	49
	dd	2
