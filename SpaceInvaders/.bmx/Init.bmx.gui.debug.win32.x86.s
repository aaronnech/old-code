	format	MS COFF
	extrn	_DrawMenuBar@4
	extrn	_ExtractIconA@12
	extrn	_GetWindowLongA@8
	extrn	_SendMessageA@16
	extrn	_SetWindowLongA@12
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_bank_bank
	extrn	___bb_bankstream_bankstream
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
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
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_openalaudio_openalaudio
	extrn	___bb_pngloader_pngloader
	extrn	___bb_reflection_reflection
	extrn	___bb_retro_retro
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	_bbArrayNew
	extrn	_bbConvertToInt
	extrn	_bbEmptyArray
	extrn	_bbEnd
	extrn	_bbFloatToInt
	extrn	_bbGCFree
	extrn	_bbIntToLong
	extrn	_bbIntTypeTag
	extrn	_bbLongOrl
	extrn	_bbMemFree
	extrn	_bbMilliSecs
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDowncast
	extrn	_bbObjectDtor
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_bbStringToCString
	extrn	_brl_audio_LoadSound
	extrn	_brl_audio_PlaySound
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_blitz_OutOfDataError
	extrn	_brl_graphics_Flip
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_linkedlist_ListAddLast
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawOval
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_LoadAnimImage
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d_SetScale
	extrn	_brl_polledinput_AppTerminate
	extrn	_brl_polledinput_KeyDown
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_random_Rand
	public	__bb_TAlien_BlowUp
	public	__bb_TAlien_Create
	public	__bb_TAlien_Delete
	public	__bb_TAlien_New
	public	__bb_TAlien_Shoot
	public	__bb_TAlien_Update
	public	__bb_TBullet_Create
	public	__bb_TBullet_Delete
	public	__bb_TBullet_New
	public	__bb_TBullet_Update
	public	__bb_TExplosion_Create
	public	__bb_TExplosion_Delete
	public	__bb_TExplosion_New
	public	__bb_TExplosion_Update
	public	__bb_TPlayer_Create
	public	__bb_TPlayer_Delete
	public	__bb_TPlayer_Die
	public	__bb_TPlayer_Hit
	public	__bb_TPlayer_New
	public	__bb_TPlayer_Shoot
	public	__bb_TPlayer_Update
	public	__bb_main
	public	_bb_ALIEN_LAYOUT
	public	_bb_AlienList
	public	_bb_BG
	public	_bb_BulletList
	public	_bb_CHECKALIEN
	public	_bb_CHECKBULLET
	public	_bb_EARTHHP
	public	_bb_ExplosionList
	public	_bb_FIRE_DOWN
	public	_bb_FIRE_TIMER
	public	_bb_FPS
	public	_bb_Frame
	public	_bb_GameOver
	public	_bb_LEVEL
	public	_bb_LIFES
	public	_bb_MainMenu
	public	_bb_RectsOverlap
	public	_bb_SCORE
	public	_bb_SU
	public	_bb_SUelapsed
	public	_bb_SUperiod
	public	_bb_SUticks
	public	_bb_SUtime
	public	_bb_SetIcon
	public	_bb_ShowLevelUp
	public	_bb_TAlien
	public	_bb_TBullet
	public	_bb_TExplosion
	public	_bb_TPlayer
	public	_bb_alien1_img
	public	_bb_alien2_img
	public	_bb_alien3_img
	public	_bb_boom
	public	_bb_enableMinimize
	public	_bb_explosion_img
	public	_bb_fire
	public	_bb_i
	public	_bb_intro
	public	_bb_player
	public	_bb_player_img
	public	_bb_t
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_293],0
	je	_294
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_294:
	mov	dword [_293],1
	push	ebp
	push	_246
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	mov	dword [_244],_245
	call	___bb_blitz_blitz
	call	___bb_appstub_appstub
	call	___bb_audio_audio
	call	___bb_bank_bank
	call	___bb_bankstream_bankstream
	call	___bb_basic_basic
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_eventqueue_eventqueue
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_openalaudio_openalaudio
	call	___bb_pngloader_pngloader
	call	___bb_reflection_reflection
	call	___bb_retro_retro
	call	___bb_tgaloader_tgaloader
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	push	_bb_TExplosion
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAlien
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TPlayer
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TBullet
	call	_bbObjectRegisterType
	add	esp,4
	push	_188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_191]
	and	eax,1
	cmp	eax,0
	jne	_192
	call	_bbMilliSecs
	sub	eax,dword [_bb_SUperiod]
	mov	dword [_bb_SUtime],eax
	or	dword [_191],1
_192:
	push	_193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_191]
	and	eax,2
	cmp	eax,0
	jne	_197
	call	_bbMilliSecs
	mov	dword [_bb_t],eax
	or	dword [_191],2
_197:
	push	_198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_191]
	and	eax,4
	cmp	eax,0
	jne	_201
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_AlienList],eax
	or	dword [_191],4
_201:
	push	_202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_191]
	and	eax,8
	cmp	eax,0
	jne	_204
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_BulletList],eax
	or	dword [_191],8
_204:
	push	_205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_191]
	and	eax,16
	cmp	eax,0
	jne	_207
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_ExplosionList],eax
	or	dword [_191],16
_207:
	push	_208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_191]
	and	eax,32
	cmp	eax,0
	jne	_211
	push	8
	push	20
	push	2
	push	_209
	call	_bbArrayNew
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_ALIEN_LAYOUT],eax
	or	dword [_191],32
_211:
	push	_212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_191]
	and	eax,64
	cmp	eax,0
	jne	_213
	push	32
	call	_brl_polledinput_KeyDown
	add	esp,4
	mov	dword [_bb_FIRE_DOWN],eax
	or	dword [_191],64
_213:
	push	_214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_191]
	and	eax,128
	cmp	eax,0
	jne	_218
	push	-1
	push	_18
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_BG],eax
	or	dword [_191],128
_218:
	push	_219
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_191]
	and	eax,256
	cmp	eax,0
	jne	_221
	push	-1
	push	_19
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_intro],eax
	or	dword [_191],256
_221:
	push	_222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_191]
	and	eax,512
	cmp	eax,0
	jne	_224
	push	-1
	push	_20
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_player_img],eax
	or	dword [_191],512
_224:
	push	_225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_191]
	and	eax,1024
	cmp	eax,0
	jne	_227
	push	-1
	push	3
	push	0
	push	25
	push	25
	push	_21
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_alien1_img],eax
	or	dword [_191],1024
_227:
	push	_228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_191]
	and	eax,2048
	cmp	eax,0
	jne	_230
	push	-1
	push	3
	push	0
	push	25
	push	25
	push	_22
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_alien2_img],eax
	or	dword [_191],2048
_230:
	push	_231
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_191]
	and	eax,4096
	cmp	eax,0
	jne	_233
	push	-1
	push	3
	push	0
	push	25
	push	25
	push	_23
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_alien3_img],eax
	or	dword [_191],4096
_233:
	push	_234
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_191]
	and	eax,8192
	cmp	eax,0
	jne	_236
	push	-1
	push	5
	push	0
	push	25
	push	25
	push	_24
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_explosion_img],eax
	or	dword [_191],8192
_236:
	push	_237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_191]
	and	eax,16384
	cmp	eax,0
	jne	_239
	push	0
	push	_25
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_fire],eax
	or	dword [_191],16384
_239:
	push	_240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_191]
	and	eax,32768
	cmp	eax,0
	jne	_242
	push	0
	push	_26
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_boom],eax
	or	dword [_191],32768
_242:
	push	_243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_50:
	mov	ebx,0
_90:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	push	_295
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TExplosion
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	mov	ebx,0
_93:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TExplosion_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_96:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
_298:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TExplosion_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	push	ebp
	push	_320
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [_bb_ExplosionList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_302
	call	_brl_blitz_NullObjectError
_302:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+16],eax
	push	_304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_306
	call	_brl_blitz_NullObjectError
_306:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+20],eax
	push	_308
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_310
	call	_brl_blitz_NullObjectError
_310:
	mov	eax,dword [ebp-16]
	mov	dword [ebx+24],eax
	push	_312
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_314
	call	_brl_blitz_NullObjectError
_314:
	fldz
	fstp	dword [ebx+8]
	push	_316
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_318
	call	_brl_blitz_NullObjectError
_318:
	mov	dword [ebx+12],0
	mov	ebx,0
_102:
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
	push	_362
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_326
	call	_brl_blitz_NullObjectError
_326:
	cmp	dword [ebx+24],2
	jne	_327
	push	_328
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1086324736
	push	1086324736
	call	_brl_max2d_SetScale
	add	esp,8
_327:
	push	_329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_331
	call	_brl_blitz_NullObjectError
_331:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_333
	call	_brl_blitz_NullObjectError
_333:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_335
	call	_brl_blitz_NullObjectError
_335:
	push	dword [ebx+12]
	mov	eax,dword [esi+20]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [edi+16]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_explosion_img]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_339
	call	_brl_blitz_NullObjectError
_339:
	fld	dword [ebx+8]
	fadd	dword [_1024]
	fstp	dword [ebx+8]
	push	_341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_343
	call	_brl_blitz_NullObjectError
_343:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_346
	call	_brl_blitz_NullObjectError
_346:
	fld	dword [esi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+12],eax
	push	_347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_349
	call	_brl_blitz_NullObjectError
_349:
	fld	dword [ebx+8]
	fld	dword [_1025]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_350
	push	_351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ExplosionList]
	cmp	ebx,_bbNullObject
	jne	_353
	call	_brl_blitz_NullObjectError
_353:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_356
	call	_brl_blitz_NullObjectError
_356:
	cmp	dword [ebx+24],2
	jne	_357
	push	_358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_360
	call	_brl_blitz_NullObjectError
_360:
	mov	dword [ebx+20],1
_357:
_350:
	mov	ebx,0
_105:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAlien_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_364
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAlien
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],0
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+32]
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],0
	mov	ebx,0
_108:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAlien_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_111:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_367
	push	eax
	call	_bbGCFree
	add	esp,4
_367:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
_365:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAlien_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,ebp
	push	eax
	push	_429
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_370
	call	_brl_blitz_NullObjectError
_370:
	mov	eax,dword [ebp-8]
	imul	eax,35
	sub	eax,15
	mov	dword [ebx+8],eax
	push	_372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_374
	call	_brl_blitz_NullObjectError
_374:
	mov	eax,dword [ebp-12]
	imul	eax,35
	sub	eax,48
	mov	dword [ebx+12],eax
	push	_376
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_378
	call	_brl_blitz_NullObjectError
_378:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_381
	call	_brl_blitz_NullObjectError
_381:
	mov	eax,dword [esi+8]
	mov	dword [ebx+16],eax
	push	_382
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_384
	call	_brl_blitz_NullObjectError
_384:
	mov	dword [ebx+20],2
	push	_386
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_388
	call	_brl_blitz_NullObjectError
_388:
	push	7000
	push	2000
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+36],eax
	push	_390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_392
	call	_brl_blitz_NullObjectError
_392:
	call	_bbMilliSecs
	mov	dword [ebx+40],eax
	push	_394
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	cmp	eax,1
	je	_397
	cmp	eax,2
	je	_398
	cmp	eax,3
	je	_399
	jmp	_396
_397:
	push	_400
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_402
	call	_brl_blitz_NullObjectError
_402:
	mov	ebx,dword [_bb_alien1_img]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_407
	push	eax
	call	_bbGCFree
	add	esp,4
_407:
	mov	dword [esi+24],ebx
	jmp	_396
_398:
	push	_408
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_410
	call	_brl_blitz_NullObjectError
_410:
	mov	ebx,dword [_bb_alien2_img]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_415
	push	eax
	call	_bbGCFree
	add	esp,4
_415:
	mov	dword [esi+24],ebx
	jmp	_396
_399:
	push	_416
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_418
	call	_brl_blitz_NullObjectError
_418:
	mov	ebx,dword [_bb_alien3_img]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_423
	push	eax
	call	_bbGCFree
	add	esp,4
_423:
	mov	dword [esi+24],ebx
_396:
	push	_424
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_426
	call	_brl_blitz_NullObjectError
_426:
	mov	dword [ebx+28],0
	push	_428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [_bb_AlienList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	ebx,0
_117:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAlien_Update:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_522
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_435
	call	_brl_blitz_NullObjectError
_435:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_437
	call	_brl_blitz_NullObjectError
_437:
	mov	eax,dword [esi+16]
	add	eax,20
	cmp	dword [ebx+8],eax
	jl	_438
	push	_439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_441
	call	_brl_blitz_NullObjectError
_441:
	mov	dword [ebx+20],1
_438:
	push	_443
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_445
	call	_brl_blitz_NullObjectError
_445:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_447
	call	_brl_blitz_NullObjectError
_447:
	mov	eax,dword [esi+16]
	sub	eax,20
	cmp	dword [ebx+8],eax
	jg	_448
	push	_449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_451
	call	_brl_blitz_NullObjectError
_451:
	mov	dword [ebx+20],2
_448:
	push	_453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_455
	call	_brl_blitz_NullObjectError
_455:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_457
	call	_brl_blitz_NullObjectError
_457:
	mov	edx,dword [esi+8]
	mov	eax,dword [ebx+16]
	add	eax,20
	cmp	edx,eax
	setl	al
	movzx	eax,al
	cmp	eax,0
	je	_460
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_459
	call	_brl_blitz_NullObjectError
_459:
	mov	eax,dword [ebx+20]
	cmp	eax,2
	sete	al
	movzx	eax,al
_460:
	cmp	eax,0
	je	_462
	push	_463
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_465
	call	_brl_blitz_NullObjectError
_465:
	add	dword [ebx+8],3
_462:
	push	_467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_469
	call	_brl_blitz_NullObjectError
_469:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_471
	call	_brl_blitz_NullObjectError
_471:
	mov	edx,dword [esi+8]
	mov	eax,dword [ebx+16]
	sub	eax,20
	cmp	edx,eax
	setg	al
	movzx	eax,al
	cmp	eax,0
	je	_474
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_473
	call	_brl_blitz_NullObjectError
_473:
	mov	eax,dword [ebx+20]
	cmp	eax,1
	sete	al
	movzx	eax,al
_474:
	cmp	eax,0
	je	_476
	push	_477
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_479
	call	_brl_blitz_NullObjectError
_479:
	sub	dword [ebx+8],3
_476:
	push	_481
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_483
	call	_brl_blitz_NullObjectError
_483:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_485
	call	_brl_blitz_NullObjectError
_485:
	call	_bbMilliSecs
	mov	edx,dword [esi+40]
	add	edx,dword [ebx+36]
	cmp	eax,edx
	jle	_486
	push	_487
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_fire]
	call	_brl_audio_PlaySound
	add	esp,8
	push	_488
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_490
	call	_brl_blitz_NullObjectError
_490:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	_491
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_493
	call	_brl_blitz_NullObjectError
_493:
	call	_bbMilliSecs
	mov	dword [ebx+40],eax
_486:
	push	_495
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_497
	call	_brl_blitz_NullObjectError
_497:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_500
	call	_brl_blitz_NullObjectError
_500:
	fld	dword [esi+32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+28],eax
	push	_501
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-8],eax
	cmp	dword [ebp-8],_bbNullObject
	jne	_503
	call	_brl_blitz_NullObjectError
_503:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_505
	call	_brl_blitz_NullObjectError
_505:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_507
	call	_brl_blitz_NullObjectError
_507:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_509
	call	_brl_blitz_NullObjectError
_509:
	push	dword [ebx+28]
	mov	eax,dword [esi+12]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [edi+8]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-8]
	push	dword [eax+24]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_512
	call	_brl_blitz_NullObjectError
_512:
	fld	dword [ebx+32]
	fadd	dword [_1062]
	fstp	dword [ebx+32]
	push	_514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_516
	call	_brl_blitz_NullObjectError
_516:
	fld	dword [ebx+32]
	fld	dword [_1063]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_517
	push	_518
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_520
	call	_brl_blitz_NullObjectError
_520:
	fldz
	fstp	dword [ebx+32]
_517:
	mov	ebx,0
_120:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAlien_Shoot:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],0
	mov	eax,ebp
	push	eax
	push	_533
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_523
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TBullet
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_525
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_527
	call	_brl_blitz_NullObjectError
_527:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_530
	call	_brl_blitz_NullObjectError
_530:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_532
	call	_brl_blitz_NullObjectError
_532:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [ebp-12]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,16
	mov	ebx,0
_123:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAlien_BlowUp:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_548
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_536
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_AlienList]
	cmp	ebx,_bbNullObject
	jne	_538
	call	_brl_blitz_NullObjectError
_538:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_539
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TExplosion
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_541
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_543
	call	_brl_blitz_NullObjectError
_543:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_545
	call	_brl_blitz_NullObjectError
_545:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_547
	call	_brl_blitz_NullObjectError
_547:
	push	1
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,16
	mov	ebx,0
_126:
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
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_550
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TPlayer
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	ebx,0
_129:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPlayer_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_132:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
_551:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPlayer_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_568
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_552
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_554
	call	_brl_blitz_NullObjectError
_554:
	mov	dword [ebx+8],400
	push	_556
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_558
	call	_brl_blitz_NullObjectError
_558:
	mov	dword [ebx+12],480
	push	_560
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_562
	call	_brl_blitz_NullObjectError
_562:
	mov	dword [ebx+16],10
	push	_564
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_566
	call	_brl_blitz_NullObjectError
_566:
	mov	dword [ebx+20],1
	mov	ebx,0
_135:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPlayer_Update:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_629
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_569
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	32
	call	_brl_polledinput_KeyDown
	add	esp,4
	mov	dword [_bb_FIRE_DOWN],eax
	push	_570
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	39
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_573
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_572
	call	_brl_blitz_NullObjectError
_572:
	mov	eax,dword [ebx+8]
	cmp	eax,760
	setl	al
	movzx	eax,al
_573:
	cmp	eax,0
	je	_577
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_576
	call	_brl_blitz_NullObjectError
_576:
	mov	eax,dword [ebx+20]
	cmp	eax,1
	sete	al
	movzx	eax,al
_577:
	cmp	eax,0
	je	_579
	push	_580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_582
	call	_brl_blitz_NullObjectError
_582:
	add	dword [ebx+8],8
_579:
	push	_584
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	37
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_587
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_586
	call	_brl_blitz_NullObjectError
_586:
	mov	eax,dword [ebx+8]
	cmp	eax,0
	setg	al
	movzx	eax,al
_587:
	cmp	eax,0
	je	_591
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_590
	call	_brl_blitz_NullObjectError
_590:
	mov	eax,dword [ebx+20]
	cmp	eax,1
	sete	al
	movzx	eax,al
_591:
	cmp	eax,0
	je	_593
	push	_594
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_596
	call	_brl_blitz_NullObjectError
_596:
	sub	dword [ebx+8],8
_593:
	push	_598
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	32
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_601
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_600
	call	_brl_blitz_NullObjectError
_600:
	mov	eax,dword [ebx+20]
	cmp	eax,1
	sete	al
	movzx	eax,al
_601:
	cmp	eax,0
	je	_603
	push	_604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_fire]
	call	_brl_audio_PlaySound
	add	esp,8
	push	_605
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_607
	call	_brl_blitz_NullObjectError
_607:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
_603:
	push	_608
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_FIRE_DOWN]
	cmp	eax,0
	je	_611
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_610
	call	_brl_blitz_NullObjectError
_610:
	mov	eax,dword [ebx+20]
	cmp	eax,1
	sete	al
	movzx	eax,al
_611:
	cmp	eax,0
	je	_613
	fld	dword [_bb_FIRE_TIMER]
	fld	dword [_1122]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
_613:
	cmp	eax,0
	je	_615
	push	_616
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_fire]
	call	_brl_audio_PlaySound
	add	esp,8
	push	_617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_619
	call	_brl_blitz_NullObjectError
_619:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
_615:
	push	_620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_622
	call	_brl_blitz_NullObjectError
_622:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_624
	call	_brl_blitz_NullObjectError
_624:
	push	0
	mov	eax,dword [esi+12]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebx+8]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_player_img]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_625
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_FIRE_TIMER]
	fadd	dword [_1123]
	fstp	dword [_bb_FIRE_TIMER]
	push	_626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_FIRE_TIMER]
	fld	dword [_1124]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_627
	push	_628
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [_bb_FIRE_TIMER]
_627:
	mov	ebx,0
_138:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPlayer_Shoot:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_639
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_630
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TBullet
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_632
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_634
	call	_brl_blitz_NullObjectError
_634:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_636
	call	_brl_blitz_NullObjectError
_636:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_638
	call	_brl_blitz_NullObjectError
_638:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	2
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,16
	mov	ebx,0
_141:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPlayer_Hit:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_660
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_640
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TExplosion
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_642
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_644
	call	_brl_blitz_NullObjectError
_644:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_646
	call	_brl_blitz_NullObjectError
_646:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_648
	call	_brl_blitz_NullObjectError
_648:
	push	1
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,16
	push	_649
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_651
	call	_brl_blitz_NullObjectError
_651:
	sub	dword [ebx+16],1
	push	_653
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_655
	call	_brl_blitz_NullObjectError
_655:
	cmp	dword [ebx+16],0
	jne	_656
	push	_657
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_659
	call	_brl_blitz_NullObjectError
_659:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
_656:
	mov	ebx,0
_144:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPlayer_Die:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_686
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_661
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_663
	call	_brl_blitz_NullObjectError
_663:
	mov	dword [ebx+20],0
	push	_665
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TExplosion
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_667
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_669
	call	_brl_blitz_NullObjectError
_669:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_671
	call	_brl_blitz_NullObjectError
_671:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_673
	call	_brl_blitz_NullObjectError
_673:
	push	2
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,16
	push	_674
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [_bb_LIFES],1
	push	_675
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_677
	call	_brl_blitz_NullObjectError
_677:
	mov	dword [ebx+16],10
	push	_679
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_LIFES],0
	jne	_680
	push	_681
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_683
	call	_brl_blitz_NullObjectError
_683:
	mov	dword [ebx+20],1
	push	_685
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_GameOver
_680:
	mov	ebx,0
_147:
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
	push	_687
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TBullet
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	mov	ebx,0
_150:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBullet_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_153:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
_688:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBullet_Create:
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
	mov	dword [ebp-20],0
	push	ebp
	push	_728
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [_bb_BulletList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_690
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	eax,2
	je	_693
	cmp	eax,dword [ebp-20]
	je	_694
	jmp	_692
_693:
	push	_696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_698
	call	_brl_blitz_NullObjectError
_698:
	mov	eax,dword [ebp-12]
	add	eax,20
	mov	dword [ebx+8],eax
	push	_700
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_702
	call	_brl_blitz_NullObjectError
_702:
	mov	eax,dword [ebp-16]
	add	eax,10
	mov	dword [ebx+12],eax
	push	_704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_706
	call	_brl_blitz_NullObjectError
_706:
	mov	dword [ebx+16],1
	push	_708
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_710
	call	_brl_blitz_NullObjectError
_710:
	mov	dword [ebx+24],2
	jmp	_692
_694:
	push	_712
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_714
	call	_brl_blitz_NullObjectError
_714:
	mov	eax,dword [ebp-12]
	add	eax,12
	mov	dword [ebx+8],eax
	push	_716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_718
	call	_brl_blitz_NullObjectError
_718:
	mov	eax,dword [ebp-16]
	add	eax,5
	mov	dword [ebx+12],eax
	push	_720
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_722
	call	_brl_blitz_NullObjectError
_722:
	mov	dword [ebx+16],-1
	push	_724
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_726
	call	_brl_blitz_NullObjectError
_726:
	mov	eax,dword [ebp-20]
	mov	dword [ebx+24],eax
_692:
	mov	ebx,0
_159:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBullet_Update:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	eax,ebp
	push	eax
	push	_828
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_730
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_732
	call	_brl_blitz_NullObjectError
_732:
	cmp	dword [ebx+16],1
	jne	_733
	push	_734
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_736
	call	_brl_blitz_NullObjectError
_736:
	sub	dword [ebx+12],8
	jmp	_738
_733:
	push	_739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_741
	call	_brl_blitz_NullObjectError
_741:
	add	dword [ebx+12],8
_738:
	push	_743
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_745
	call	_brl_blitz_NullObjectError
_745:
	cmp	dword [ebx+24],2
	jne	_746
	push	_747
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_AlienList]
	mov	dword [ebp-20],eax
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_750
	call	_brl_blitz_NullObjectError
_750:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-16],eax
	jmp	_27
_29:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_755
	call	_brl_blitz_NullObjectError
_755:
	push	_bb_TAlien
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_CHECKALIEN]
	dec	dword [eax+4]
	jnz	_759
	push	eax
	call	_bbGCFree
	add	esp,4
_759:
	mov	dword [_bb_CHECKALIEN],ebx
	cmp	dword [_bb_CHECKALIEN],_bbNullObject
	je	_27
	push	_760
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	jne	_762
	call	_brl_blitz_NullObjectError
_762:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_764
	call	_brl_blitz_NullObjectError
_764:
	mov	esi,dword [_bb_CHECKALIEN]
	cmp	esi,_bbNullObject
	jne	_766
	call	_brl_blitz_NullObjectError
_766:
	mov	ebx,dword [_bb_CHECKALIEN]
	cmp	ebx,_bbNullObject
	jne	_768
	call	_brl_blitz_NullObjectError
_768:
	push	25
	push	25
	push	dword [ebx+12]
	push	dword [esi+8]
	push	20
	push	5
	push	dword [edi+12]
	mov	eax,dword [ebp-12]
	push	dword [eax+8]
	call	_bb_RectsOverlap
	add	esp,32
	cmp	eax,0
	je	_769
	push	_770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_boom]
	call	_brl_audio_PlaySound
	add	esp,8
	push	_771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_CHECKALIEN]
	cmp	ebx,_bbNullObject
	jne	_773
	call	_brl_blitz_NullObjectError
_773:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BulletList]
	cmp	ebx,_bbNullObject
	jne	_776
	call	_brl_blitz_NullObjectError
_776:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
_769:
_27:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_753
	call	_brl_blitz_NullObjectError
_753:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_29
_28:
_746:
	push	_777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_779
	call	_brl_blitz_NullObjectError
_779:
	mov	eax,dword [ebp-8]
	cmp	dword [ebx+24],eax
	jne	_781
	push	_782
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_player]
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	jne	_784
	call	_brl_blitz_NullObjectError
_784:
	mov	edi,dword [_bb_player]
	cmp	edi,_bbNullObject
	jne	_786
	call	_brl_blitz_NullObjectError
_786:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_788
	call	_brl_blitz_NullObjectError
_788:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_790
	call	_brl_blitz_NullObjectError
_790:
	push	25
	push	25
	push	dword [ebx+12]
	push	dword [esi+8]
	push	50
	push	30
	push	dword [edi+12]
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+8]
	add	eax,5
	push	eax
	call	_bb_RectsOverlap
	add	esp,32
	cmp	eax,0
	je	_791
	push	_792
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_boom]
	call	_brl_audio_PlaySound
	add	esp,8
	push	_793
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_795
	call	_brl_blitz_NullObjectError
_795:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_796
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BulletList]
	cmp	ebx,_bbNullObject
	jne	_798
	call	_brl_blitz_NullObjectError
_798:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
_791:
_781:
	push	_799
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_801
	call	_brl_blitz_NullObjectError
_801:
	cmp	dword [ebx+12],-20
	jge	_802
	push	_803
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BulletList]
	cmp	ebx,_bbNullObject
	jne	_805
	call	_brl_blitz_NullObjectError
_805:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
_802:
	push	_806
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_808
	call	_brl_blitz_NullObjectError
_808:
	cmp	dword [ebx+12],610
	jle	_809
	push	_810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BulletList]
	cmp	ebx,_bbNullObject
	jne	_812
	call	_brl_blitz_NullObjectError
_812:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_813
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_EARTHHP]
	fsub	dword [_1190]
	fstp	dword [_bb_EARTHHP]
_809:
	push	_814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_817
	call	_brl_blitz_NullObjectError
_817:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_819
	call	_brl_blitz_NullObjectError
_819:
	push	1101004800
	push	1084227584
	mov	eax,dword [esi+12]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebx+8]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawOval
	add	esp,16
	push	_820
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1050253722
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_821
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_823
	call	_brl_blitz_NullObjectError
_823:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_825
	call	_brl_blitz_NullObjectError
_825:
	push	1103626240
	push	1092616192
	mov	eax,dword [esi+12]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebx+8]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawOval
	add	esp,16
	push	_826
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_827
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	mov	ebx,0
_162:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_enableMinimize:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-4],eax
	mov	dword [ebp-16],0
	mov	dword [ebp-12],0
	push	ebp
	push	_834
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_829
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-16
	push	dword [ebp-8]
	call	_GetWindowLongA@8
	push	eax
	lea	eax,dword [ebp-16]
	push	eax
	call	_bbIntToLong
	add	esp,8
	push	_831
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	131072
	push	dword [ebp-12]
	push	dword [ebp-16]
	lea	eax,dword [ebp-16]
	push	eax
	call	_bbLongOrl
	add	esp,20
	push	_832
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	push	-16
	push	dword [ebp-8]
	call	_SetWindowLongA@12
	push	_833
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_DrawMenuBar@4
	mov	ebx,0
_165:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_SetIcon:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	push	ebp
	push	_850
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_839
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_bbStringToCString
	add	esp,4
	mov	ebx,eax
	push	0
	push	ebx
	push	dword [ebp-8]
	call	_ExtractIconA@12
	mov	esi,eax
	push	ebx
	call	_bbMemFree
	add	esp,4
	mov	dword [ebp-12],esi
	push	_843
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],128
	push	_845
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_847
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	push	_849
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	dword [ebp-24]
	push	dword [ebp-16]
	push	dword [ebp-8]
	call	_SendMessageA@16
	mov	ebx,0
_169:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_RectsOverlap:
	push	ebp
	mov	ebp,esp
	sub	esp,32
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp+36]
	mov	dword [ebp-32],eax
	push	ebp
	push	_870
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_859
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-20]
	add	eax,dword [ebp-28]
	cmp	edx,eax
	setg	al
	movzx	eax,al
	cmp	eax,0
	jne	_860
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-12]
	cmp	eax,dword [ebp-20]
	setl	al
	movzx	eax,al
_860:
	cmp	eax,0
	je	_862
	push	_863
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_179
_862:
	push	_864
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-24]
	add	eax,dword [ebp-32]
	cmp	edx,eax
	setg	al
	movzx	eax,al
	cmp	eax,0
	jne	_865
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-16]
	cmp	eax,dword [ebp-24]
	setl	al
	movzx	eax,al
_865:
	cmp	eax,0
	je	_867
	push	_868
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_179
_867:
	push	_869
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
_179:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ShowLevelUp:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fldz
	fstp	dword [ebp-8]
	mov	dword [ebp-12],0
	push	ebp
	push	_893
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_880
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-8]
	push	_882
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	push	_884
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_32:
	push	_885
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_886
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1133903872
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-4]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_33
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-12],2
	push	_888
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fadd	dword [_1240]
	fstp	dword [ebp-8]
	push	_889
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_AppTerminate
	cmp	eax,0
	je	_890
	push	_891
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
_890:
	push	_892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_30:
	fld	dword [ebp-8]
	fld	dword [_1241]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_32
_31:
	mov	ebx,0
_182:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_GameOver:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	fldz
	fstp	dword [ebp-4]
	mov	dword [ebp-8],0
	push	ebp
	push	_913
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_897
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-4]
	push	_899
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	push	_901
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_36:
	push	_902
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_903
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1133903872
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	push	_37
	call	_brl_max2d_DrawText
	add	esp,12
	push	_904
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-8],2
	push	_905
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fadd	dword [_1245]
	fstp	dword [ebp-4]
	push	_906
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_AppTerminate
	cmp	eax,0
	je	_907
	push	_908
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
_907:
	push	_909
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_34:
	fld	dword [ebp-4]
	fld	dword [_1246]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_36
_35:
	push	_910
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_LEVEL],1
	push	_911
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_SCORE],0
	push	_912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_MainMenu
	mov	ebx,0
_184:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_MainMenu:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_989
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_915
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_917
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_LIFES],3
	push	_918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_LEVEL],1
	push	_919
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_SCORE],0
	push	_920
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BulletList]
	cmp	ebx,_bbNullObject
	jne	_922
	call	_brl_blitz_NullObjectError
_922:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_923
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_AlienList]
	cmp	ebx,_bbNullObject
	jne	_925
	call	_brl_blitz_NullObjectError
_925:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_926
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ExplosionList]
	cmp	ebx,_bbNullObject
	jne	_928
	call	_brl_blitz_NullObjectError
_928:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_929
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_244],_51
	push	_930
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],1
	jmp	_932
_40:
	push	_933
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	jmp	_935
_43:
	push	_936
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_938
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_244]
	mov	ebx,dword [esi]
	cmp	ebx,0
	jne	_941
	call	_brl_blitz_OutOfDataError
_941:
	mov	ebx,dword [ebx]
	add	esi,4
	push	ebx
	push	esi
	call	_bbConvertToInt
	add	esp,8
	mov	dword [ebp-16],eax
	add	esi,4
	movzx	eax,byte [ebx]
	cmp	eax,100
	jne	_942
	add	esi,4
_942:
	mov	dword [_244],esi
	push	_943
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	sub	esi,1
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	esi,dword [eax+20]
	jb	_945
	call	_brl_blitz_ArrayBoundsError
_945:
	mov	ebx,dword [ebp-8]
	sub	ebx,1
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	ebx,dword [eax+24]
	jb	_947
	call	_brl_blitz_ArrayBoundsError
_947:
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edx,dword [ebp-16]
	mov	dword [eax+28],edx
	push	_949
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	sub	esi,1
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	esi,dword [eax+20]
	jb	_951
	call	_brl_blitz_ArrayBoundsError
_951:
	mov	ebx,dword [ebp-8]
	sub	ebx,1
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	ebx,dword [eax+24]
	jb	_953
	call	_brl_blitz_ArrayBoundsError
_953:
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	add	esi,ebx
	cmp	dword [eax+esi*4+28],0
	jle	_954
	push	_955
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAlien
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-20],eax
	push	_957
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-20]
	cmp	edi,_bbNullObject
	jne	_959
	call	_brl_blitz_NullObjectError
_959:
	mov	eax,dword [ebp-12]
	sub	eax,1
	mov	edx,dword [_bb_ALIEN_LAYOUT]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	esi,dword [eax+20]
	jb	_961
	call	_brl_blitz_ArrayBoundsError
_961:
	mov	eax,dword [ebp-8]
	sub	eax,1
	mov	ebx,eax
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	ebx,dword [eax+24]
	jb	_963
	call	_brl_blitz_ArrayBoundsError
_963:
	mov	edx,dword [_bb_ALIEN_LAYOUT]
	mov	eax,esi
	add	eax,ebx
	push	dword [edx+eax*4+28]
	mov	eax,dword [ebp-8]
	add	eax,1
	push	eax
	mov	eax,dword [ebp-12]
	add	eax,1
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,16
_954:
_41:
	add	dword [ebp-12],1
_935:
	cmp	dword [ebp-12],20
	jle	_43
_42:
_38:
	add	dword [ebp-8],1
_932:
	cmp	dword [ebp-8],8
	jle	_40
_39:
	push	_964
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_46:
	push	_965
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_966
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	push	dword [_bb_BG]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_967
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	1125515264
	push	1128792064
	push	dword [_bb_intro]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_968
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	edi,dword [_bb_AlienList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_972
	call	_brl_blitz_NullObjectError
_972:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_47
_49:
	cmp	ebx,_bbNullObject
	jne	_977
	call	_brl_blitz_NullObjectError
_977:
	push	_bb_TAlien
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_47
	push	_978
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_980
	call	_brl_blitz_NullObjectError
_980:
	call	_bbMilliSecs
	mov	dword [esi+40],eax
_47:
	cmp	ebx,_bbNullObject
	jne	_975
	call	_brl_blitz_NullObjectError
_975:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_49
_48:
	push	_982
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	13
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_983
	push	_984
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],1
_983:
	push	_985
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_AppTerminate
	cmp	eax,0
	je	_986
	push	_987
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
_986:
	push	_988
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_44:
	cmp	dword [ebp-4],0
	je	_46
_45:
	mov	ebx,0
_186:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_293:
	dd	0
_247:
	db	"Init",0
_248:
	db	"ReqFPS",0
_57:
	db	"i",0
	align	4
_249:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	54,48
_250:
	db	"PARENT_PLAYER",0
	align	4
_251:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	50
_252:
	db	"PARENT_ALIEN1",0
	align	4
_253:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	49
_254:
	db	"DIR_UP",0
_255:
	db	"DIR_DOWN",0
	align	4
_256:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	45,49
_257:
	db	"SUperiod",0
	align	4
_bb_SUperiod:
	dd	16
_258:
	db	"SUtime",0
	align	4
_bb_SUtime:
	dd	0
_259:
	db	"SUelapsed",0
	align	4
_bb_SUelapsed:
	dd	0
_260:
	db	"SU",0
	align	4
_bb_SU:
	dd	0
_261:
	db	"SUticks",0
	align	4
_bb_SUticks:
	dd	0
_262:
	db	"FPS",0
_55:
	db	"f",0
	align	4
_bb_FPS:
	dd	0x0
_263:
	db	"Frame",0
	align	4
_bb_Frame:
	dd	0
_264:
	db	"t",0
	align	4
_bb_t:
	dd	0
	align	4
_bb_i:
	dd	0
_265:
	db	"CHECKALIEN",0
_266:
	db	":TAlien",0
	align	4
_bb_CHECKALIEN:
	dd	_bbNullObject
_267:
	db	"CHECKBULLET",0
_268:
	db	":TBullet",0
	align	4
_bb_CHECKBULLET:
	dd	_bbNullObject
_269:
	db	"AlienList",0
_270:
	db	":brl.linkedlist.TList",0
	align	4
_bb_AlienList:
	dd	_bbNullObject
_271:
	db	"BulletList",0
	align	4
_bb_BulletList:
	dd	_bbNullObject
_272:
	db	"ExplosionList",0
	align	4
_bb_ExplosionList:
	dd	_bbNullObject
_273:
	db	"ALIEN_LAYOUT",0
_274:
	db	"[,]i",0
	align	4
_bb_ALIEN_LAYOUT:
	dd	_bbEmptyArray
_275:
	db	"FIRE_DOWN",0
	align	4
_bb_FIRE_DOWN:
	dd	0
_276:
	db	"FIRE_TIMER",0
	align	4
_bb_FIRE_TIMER:
	dd	0x0
_277:
	db	"LIFES",0
	align	4
_bb_LIFES:
	dd	3
_278:
	db	"LEVEL",0
	align	4
_bb_LEVEL:
	dd	1
_279:
	db	"SCORE",0
	align	4
_bb_SCORE:
	dd	0
_280:
	db	"EARTHHP",0
	align	4
_bb_EARTHHP:
	dd	0x42c80000
_281:
	db	"player",0
_282:
	db	":TPlayer",0
	align	4
_bb_player:
	dd	_bbNullObject
_283:
	db	"BG",0
_72:
	db	":brl.max2d.TImage",0
	align	4
_bb_BG:
	dd	_bbNullObject
_284:
	db	"intro",0
	align	4
_bb_intro:
	dd	_bbNullObject
_285:
	db	"player_img",0
	align	4
_bb_player_img:
	dd	_bbNullObject
_286:
	db	"alien1_img",0
	align	4
_bb_alien1_img:
	dd	_bbNullObject
_287:
	db	"alien2_img",0
	align	4
_bb_alien2_img:
	dd	_bbNullObject
_288:
	db	"alien3_img",0
	align	4
_bb_alien3_img:
	dd	_bbNullObject
_289:
	db	"explosion_img",0
	align	4
_bb_explosion_img:
	dd	_bbNullObject
_290:
	db	"fire",0
_291:
	db	":brl.audio.TSound",0
	align	4
_bb_fire:
	dd	_bbNullObject
_292:
	db	"boom",0
	align	4
_bb_boom:
	dd	_bbNullObject
	align	4
_246:
	dd	1
	dd	_247
	dd	1
	dd	_248
	dd	_57
	dd	_249
	dd	1
	dd	_250
	dd	_57
	dd	_251
	dd	1
	dd	_252
	dd	_57
	dd	_253
	dd	1
	dd	_254
	dd	_57
	dd	_253
	dd	1
	dd	_255
	dd	_57
	dd	_256
	dd	4
	dd	_257
	dd	_57
	dd	_bb_SUperiod
	dd	4
	dd	_258
	dd	_57
	dd	_bb_SUtime
	dd	4
	dd	_259
	dd	_57
	dd	_bb_SUelapsed
	dd	4
	dd	_260
	dd	_57
	dd	_bb_SU
	dd	4
	dd	_261
	dd	_57
	dd	_bb_SUticks
	dd	4
	dd	_262
	dd	_55
	dd	_bb_FPS
	dd	4
	dd	_263
	dd	_57
	dd	_bb_Frame
	dd	4
	dd	_264
	dd	_57
	dd	_bb_t
	dd	4
	dd	_57
	dd	_57
	dd	_bb_i
	dd	4
	dd	_265
	dd	_266
	dd	_bb_CHECKALIEN
	dd	4
	dd	_267
	dd	_268
	dd	_bb_CHECKBULLET
	dd	4
	dd	_269
	dd	_270
	dd	_bb_AlienList
	dd	4
	dd	_271
	dd	_270
	dd	_bb_BulletList
	dd	4
	dd	_272
	dd	_270
	dd	_bb_ExplosionList
	dd	4
	dd	_273
	dd	_274
	dd	_bb_ALIEN_LAYOUT
	dd	4
	dd	_275
	dd	_57
	dd	_bb_FIRE_DOWN
	dd	4
	dd	_276
	dd	_55
	dd	_bb_FIRE_TIMER
	dd	4
	dd	_277
	dd	_57
	dd	_bb_LIFES
	dd	4
	dd	_278
	dd	_57
	dd	_bb_LEVEL
	dd	4
	dd	_279
	dd	_57
	dd	_bb_SCORE
	dd	4
	dd	_280
	dd	_55
	dd	_bb_EARTHHP
	dd	4
	dd	_281
	dd	_282
	dd	_bb_player
	dd	4
	dd	_283
	dd	_72
	dd	_bb_BG
	dd	4
	dd	_284
	dd	_72
	dd	_bb_intro
	dd	4
	dd	_285
	dd	_72
	dd	_bb_player_img
	dd	4
	dd	_286
	dd	_72
	dd	_bb_alien1_img
	dd	4
	dd	_287
	dd	_72
	dd	_bb_alien2_img
	dd	4
	dd	_288
	dd	_72
	dd	_bb_alien3_img
	dd	4
	dd	_289
	dd	_72
	dd	_bb_explosion_img
	dd	4
	dd	_290
	dd	_291
	dd	_bb_fire
	dd	4
	dd	_292
	dd	_291
	dd	_bb_boom
	dd	0
	align	4
_245:
_51:
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	0
	align	4
_244:
	dd	0
_53:
	db	"TExplosion",0
_54:
	db	"FrameTimer",0
_56:
	db	"Current_Frame",0
_58:
	db	"x",0
_59:
	db	"y",0
_60:
	db	"size",0
_61:
	db	"New",0
_62:
	db	"()i",0
_63:
	db	"Delete",0
_64:
	db	"Create",0
_65:
	db	"(i,i,i)i",0
_66:
	db	"Update",0
	align	4
_52:
	dd	2
	dd	_53
	dd	3
	dd	_54
	dd	_55
	dd	8
	dd	3
	dd	_56
	dd	_57
	dd	12
	dd	3
	dd	_58
	dd	_57
	dd	16
	dd	3
	dd	_59
	dd	_57
	dd	20
	dd	3
	dd	_60
	dd	_57
	dd	24
	dd	6
	dd	_61
	dd	_62
	dd	16
	dd	6
	dd	_63
	dd	_62
	dd	20
	dd	6
	dd	_64
	dd	_65
	dd	48
	dd	6
	dd	_66
	dd	_62
	dd	52
	dd	0
	align	4
_bb_TExplosion:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_52
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
_68:
	db	"TAlien",0
_69:
	db	"orgx",0
_70:
	db	"lr",0
_71:
	db	"Alien",0
_73:
	db	"IMGFrame",0
_74:
	db	"IMGFrameTimer",0
_75:
	db	"shoottimer",0
_76:
	db	"shoottime",0
_77:
	db	"Shoot",0
_78:
	db	"BlowUp",0
	align	4
_67:
	dd	2
	dd	_68
	dd	3
	dd	_58
	dd	_57
	dd	8
	dd	3
	dd	_59
	dd	_57
	dd	12
	dd	3
	dd	_69
	dd	_57
	dd	16
	dd	3
	dd	_70
	dd	_57
	dd	20
	dd	3
	dd	_71
	dd	_72
	dd	24
	dd	3
	dd	_73
	dd	_57
	dd	28
	dd	3
	dd	_74
	dd	_55
	dd	32
	dd	3
	dd	_75
	dd	_57
	dd	36
	dd	3
	dd	_76
	dd	_57
	dd	40
	dd	6
	dd	_61
	dd	_62
	dd	16
	dd	6
	dd	_63
	dd	_62
	dd	20
	dd	6
	dd	_64
	dd	_65
	dd	48
	dd	6
	dd	_66
	dd	_62
	dd	52
	dd	6
	dd	_77
	dd	_62
	dd	56
	dd	6
	dd	_78
	dd	_62
	dd	60
	dd	0
	align	4
_bb_TAlien:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_67
	dd	44
	dd	__bb_TAlien_New
	dd	__bb_TAlien_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TAlien_Create
	dd	__bb_TAlien_Update
	dd	__bb_TAlien_Shoot
	dd	__bb_TAlien_BlowUp
_80:
	db	"TPlayer",0
_81:
	db	"HP",0
_82:
	db	"Mobile",0
_83:
	db	"Hit",0
_84:
	db	"Die",0
	align	4
_79:
	dd	2
	dd	_80
	dd	3
	dd	_58
	dd	_57
	dd	8
	dd	3
	dd	_59
	dd	_57
	dd	12
	dd	3
	dd	_81
	dd	_57
	dd	16
	dd	3
	dd	_82
	dd	_57
	dd	20
	dd	6
	dd	_61
	dd	_62
	dd	16
	dd	6
	dd	_63
	dd	_62
	dd	20
	dd	6
	dd	_64
	dd	_62
	dd	48
	dd	6
	dd	_66
	dd	_62
	dd	52
	dd	6
	dd	_77
	dd	_62
	dd	56
	dd	6
	dd	_83
	dd	_62
	dd	60
	dd	6
	dd	_84
	dd	_62
	dd	64
	dd	0
	align	4
_bb_TPlayer:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_79
	dd	24
	dd	__bb_TPlayer_New
	dd	__bb_TPlayer_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TPlayer_Create
	dd	__bb_TPlayer_Update
	dd	__bb_TPlayer_Shoot
	dd	__bb_TPlayer_Hit
	dd	__bb_TPlayer_Die
_86:
	db	"TBullet",0
_87:
	db	"direction",0
_88:
	db	"speed",0
_89:
	db	"par",0
	align	4
_85:
	dd	2
	dd	_86
	dd	3
	dd	_58
	dd	_57
	dd	8
	dd	3
	dd	_59
	dd	_57
	dd	12
	dd	3
	dd	_87
	dd	_57
	dd	16
	dd	3
	dd	_88
	dd	_57
	dd	20
	dd	3
	dd	_89
	dd	_57
	dd	24
	dd	6
	dd	_61
	dd	_62
	dd	16
	dd	6
	dd	_63
	dd	_62
	dd	20
	dd	6
	dd	_64
	dd	_65
	dd	48
	dd	6
	dd	_66
	dd	_62
	dd	52
	dd	0
	align	4
_bb_TBullet:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_85
	dd	28
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
_189:
	db	"D:/KIDS/Aarons Programs/BlitzMax/SpaceInvaders/Init.bmx",0
	align	4
_188:
	dd	_189
	dd	4
	dd	1
	align	4
_190:
	dd	_189
	dd	5
	dd	1
	align	4
_191:
	dd	0
	align	4
_193:
	dd	_189
	dd	6
	dd	1
	align	4
_194:
	dd	_189
	dd	7
	dd	1
	align	4
_195:
	dd	_189
	dd	8
	dd	1
	align	4
_196:
	dd	_189
	dd	9
	dd	1
	align	4
_198:
	dd	_189
	dd	12
	dd	1
	align	4
_199:
	dd	_189
	dd	16
	dd	1
	align	4
_202:
	dd	_189
	dd	18
	dd	1
	align	4
_205:
	dd	_189
	dd	20
	dd	1
	align	4
_208:
	dd	_189
	dd	25
	dd	1
_209:
	db	"i",0
	align	4
_212:
	dd	_189
	dd	27
	dd	1
	align	4
_214:
	dd	_189
	dd	29
	dd	1
	align	4
_215:
	dd	_189
	dd	31
	dd	1
	align	4
_216:
	dd	_189
	dd	34
	dd	1
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	77,101,100,105,97,92,66,71,46,112,110,103
	align	4
_219:
	dd	_189
	dd	35
	dd	1
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	77,101,100,105,97,92,105,110,116,114,111,46,112,110,103
	align	4
_222:
	dd	_189
	dd	37
	dd	1
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	77,101,100,105,97,92,112,108,97,121,101,114,46,112,110,103
	align	4
_225:
	dd	_189
	dd	38
	dd	1
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	77,101,100,105,97,92,97,108,105,101,110,49,46,112,110,103
	align	4
_228:
	dd	_189
	dd	39
	dd	1
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	77,101,100,105,97,92,97,108,105,101,110,50,46,112,110,103
	align	4
_231:
	dd	_189
	dd	40
	dd	1
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	77,101,100,105,97,92,97,108,105,101,110,51,46,112,110,103
	align	4
_234:
	dd	_189
	dd	41
	dd	1
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	77,101,100,105,97,92,101,120,112,108,111,115,105,111,110,46
	dw	112,110,103
	align	4
_237:
	dd	_189
	dd	43
	dd	1
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	77,101,100,105,97,92,102,105,114,101,46,119,97,118
	align	4
_240:
	dd	_189
	dd	44
	dd	1
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	77,101,100,105,97,92,98,111,111,109,46,119,97,118
	align	4
_243:
	dd	_189
	dd	360
	dd	1
_296:
	db	"Self",0
_297:
	db	":TExplosion",0
	align	4
_295:
	dd	1
	dd	_61
	dd	2
	dd	_296
	dd	_297
	dd	-4
	dd	0
_321:
	db	"bx",0
_322:
	db	"by",0
_323:
	db	"bsize",0
	align	4
_320:
	dd	1
	dd	_64
	dd	2
	dd	_296
	dd	_297
	dd	-4
	dd	2
	dd	_321
	dd	_57
	dd	-8
	dd	2
	dd	_322
	dd	_57
	dd	-12
	dd	2
	dd	_323
	dd	_57
	dd	-16
	dd	0
	align	4
_299:
	dd	_189
	dd	50
	dd	3
	align	4
_300:
	dd	_189
	dd	51
	dd	3
	align	4
_304:
	dd	_189
	dd	52
	dd	3
	align	4
_308:
	dd	_189
	dd	53
	dd	3
	align	4
_312:
	dd	_189
	dd	54
	dd	3
	align	4
_316:
	dd	_189
	dd	55
	dd	3
	align	4
_362:
	dd	1
	dd	_66
	dd	2
	dd	_296
	dd	_297
	dd	-4
	dd	0
	align	4
_324:
	dd	_189
	dd	59
	dd	3
	align	4
_328:
	dd	_189
	dd	59
	dd	15
	align	4
_329:
	dd	_189
	dd	60
	dd	3
	align	4
_336:
	dd	_189
	dd	61
	dd	3
	align	4
_337:
	dd	_189
	dd	62
	dd	3
	align	4
_1024:
	dd	0x3dcccccd
	align	4
_341:
	dd	_189
	dd	63
	dd	3
	align	4
_347:
	dd	_189
	dd	64
	dd	3
	align	4
_1025:
	dd	0x40800000
	align	4
_351:
	dd	_189
	dd	65
	dd	4
	align	4
_354:
	dd	_189
	dd	66
	dd	4
	align	4
_358:
	dd	_189
	dd	66
	dd	16
	align	4
_364:
	dd	1
	dd	_61
	dd	2
	dd	_296
	dd	_266
	dd	-4
	dd	0
_430:
	db	"PX",0
_431:
	db	"PY",0
_432:
	db	"A_Type",0
	align	4
_429:
	dd	1
	dd	_64
	dd	2
	dd	_296
	dd	_266
	dd	-4
	dd	2
	dd	_430
	dd	_57
	dd	-8
	dd	2
	dd	_431
	dd	_57
	dd	-12
	dd	2
	dd	_432
	dd	_57
	dd	-16
	dd	0
	align	4
_368:
	dd	_189
	dd	77
	dd	3
	align	4
_372:
	dd	_189
	dd	78
	dd	3
	align	4
_376:
	dd	_189
	dd	79
	dd	3
	align	4
_382:
	dd	_189
	dd	80
	dd	3
	align	4
_386:
	dd	_189
	dd	81
	dd	3
	align	4
_390:
	dd	_189
	dd	82
	dd	3
	align	4
_394:
	dd	_189
	dd	83
	dd	3
	align	4
_400:
	dd	_189
	dd	85
	dd	5
	align	4
_408:
	dd	_189
	dd	87
	dd	5
	align	4
_416:
	dd	_189
	dd	89
	dd	5
	align	4
_424:
	dd	_189
	dd	91
	dd	3
	align	4
_428:
	dd	_189
	dd	92
	dd	3
	align	4
_522:
	dd	1
	dd	_66
	dd	2
	dd	_296
	dd	_266
	dd	-4
	dd	0
	align	4
_433:
	dd	_189
	dd	96
	dd	3
	align	4
_439:
	dd	_189
	dd	96
	dd	20
	align	4
_443:
	dd	_189
	dd	97
	dd	3
	align	4
_449:
	dd	_189
	dd	97
	dd	20
	align	4
_453:
	dd	_189
	dd	98
	dd	3
	align	4
_463:
	dd	_189
	dd	98
	dd	29
	align	4
_467:
	dd	_189
	dd	99
	dd	3
	align	4
_477:
	dd	_189
	dd	99
	dd	29
	align	4
_481:
	dd	_189
	dd	101
	dd	3
	align	4
_487:
	dd	_189
	dd	102
	dd	4
	align	4
_488:
	dd	_189
	dd	103
	dd	4
	align	4
_491:
	dd	_189
	dd	104
	dd	4
	align	4
_495:
	dd	_189
	dd	107
	dd	3
	align	4
_501:
	dd	_189
	dd	109
	dd	3
	align	4
_510:
	dd	_189
	dd	111
	dd	3
	align	4
_1062:
	dd	0x3d4ccccd
	align	4
_514:
	dd	_189
	dd	112
	dd	3
	align	4
_1063:
	dd	0x40400000
	align	4
_518:
	dd	_189
	dd	112
	dd	24
_534:
	db	"bullet",0
_535:
	db	"PARENT_ALIEN",0
	align	4
_533:
	dd	1
	dd	_77
	dd	2
	dd	_296
	dd	_266
	dd	-4
	dd	2
	dd	_534
	dd	_268
	dd	-8
	dd	2
	dd	_535
	dd	_57
	dd	-12
	dd	0
	align	4
_523:
	dd	_189
	dd	116
	dd	3
	align	4
_525:
	dd	_189
	dd	117
	dd	3
_549:
	db	"exp1",0
	align	4
_548:
	dd	1
	dd	_78
	dd	2
	dd	_296
	dd	_266
	dd	-4
	dd	2
	dd	_549
	dd	_297
	dd	-8
	dd	0
	align	4
_536:
	dd	_189
	dd	122
	dd	3
	align	4
_539:
	dd	_189
	dd	123
	dd	3
	align	4
_541:
	dd	_189
	dd	124
	dd	3
	align	4
_550:
	dd	1
	dd	_61
	dd	2
	dd	_296
	dd	_282
	dd	-4
	dd	0
	align	4
_568:
	dd	1
	dd	_64
	dd	2
	dd	_296
	dd	_282
	dd	-4
	dd	0
	align	4
_552:
	dd	_189
	dd	133
	dd	3
	align	4
_556:
	dd	_189
	dd	134
	dd	3
	align	4
_560:
	dd	_189
	dd	135
	dd	3
	align	4
_564:
	dd	_189
	dd	136
	dd	3
	align	4
_629:
	dd	1
	dd	_66
	dd	2
	dd	_296
	dd	_282
	dd	-4
	dd	0
	align	4
_569:
	dd	_189
	dd	141
	dd	3
	align	4
_570:
	dd	_189
	dd	143
	dd	3
	align	4
_580:
	dd	_189
	dd	143
	dd	55
	align	4
_584:
	dd	_189
	dd	144
	dd	3
	align	4
_594:
	dd	_189
	dd	144
	dd	52
	align	4
_598:
	dd	_189
	dd	145
	dd	3
	align	4
_604:
	dd	_189
	dd	145
	dd	42
	align	4
_605:
	dd	_189
	dd	145
	dd	57
	align	4
_608:
	dd	_189
	dd	146
	dd	3
	align	4
_1122:
	dd	0x40000000
	align	4
_616:
	dd	_189
	dd	146
	dd	54
	align	4
_617:
	dd	_189
	dd	146
	dd	69
	align	4
_620:
	dd	_189
	dd	149
	dd	3
	align	4
_625:
	dd	_189
	dd	151
	dd	3
	align	4
_1123:
	dd	0x3dcccccd
	align	4
_626:
	dd	_189
	dd	152
	dd	3
	align	4
_1124:
	dd	0x40066666
	align	4
_628:
	dd	_189
	dd	152
	dd	23
	align	4
_639:
	dd	1
	dd	_77
	dd	2
	dd	_296
	dd	_282
	dd	-4
	dd	2
	dd	_534
	dd	_268
	dd	-8
	dd	0
	align	4
_630:
	dd	_189
	dd	156
	dd	3
	align	4
_632:
	dd	_189
	dd	157
	dd	3
	align	4
_660:
	dd	1
	dd	_83
	dd	2
	dd	_296
	dd	_282
	dd	-4
	dd	2
	dd	_549
	dd	_297
	dd	-8
	dd	0
	align	4
_640:
	dd	_189
	dd	161
	dd	3
	align	4
_642:
	dd	_189
	dd	162
	dd	3
	align	4
_649:
	dd	_189
	dd	163
	dd	3
	align	4
_653:
	dd	_189
	dd	164
	dd	3
	align	4
_657:
	dd	_189
	dd	165
	dd	4
	align	4
_686:
	dd	1
	dd	_84
	dd	2
	dd	_296
	dd	_282
	dd	-4
	dd	2
	dd	_549
	dd	_297
	dd	-8
	dd	0
	align	4
_661:
	dd	_189
	dd	170
	dd	3
	align	4
_665:
	dd	_189
	dd	171
	dd	3
	align	4
_667:
	dd	_189
	dd	172
	dd	3
	align	4
_674:
	dd	_189
	dd	173
	dd	3
	align	4
_675:
	dd	_189
	dd	174
	dd	3
	align	4
_679:
	dd	_189
	dd	175
	dd	3
	align	4
_681:
	dd	_189
	dd	176
	dd	4
	align	4
_685:
	dd	_189
	dd	177
	dd	4
	align	4
_687:
	dd	1
	dd	_61
	dd	2
	dd	_296
	dd	_268
	dd	-4
	dd	0
_729:
	db	"parent",0
	align	4
_728:
	dd	1
	dd	_64
	dd	2
	dd	_296
	dd	_268
	dd	-4
	dd	2
	dd	_729
	dd	_57
	dd	-8
	dd	2
	dd	_430
	dd	_57
	dd	-12
	dd	2
	dd	_431
	dd	_57
	dd	-16
	dd	2
	dd	_535
	dd	_57
	dd	-20
	dd	0
	align	4
_689:
	dd	_189
	dd	190
	dd	3
	align	4
_690:
	dd	_189
	dd	191
	dd	3
	align	4
_696:
	dd	_189
	dd	193
	dd	5
	align	4
_700:
	dd	_189
	dd	194
	dd	5
	align	4
_704:
	dd	_189
	dd	195
	dd	5
	align	4
_708:
	dd	_189
	dd	196
	dd	5
	align	4
_712:
	dd	_189
	dd	198
	dd	5
	align	4
_716:
	dd	_189
	dd	199
	dd	5
	align	4
_720:
	dd	_189
	dd	200
	dd	5
	align	4
_724:
	dd	_189
	dd	201
	dd	5
	align	4
_828:
	dd	1
	dd	_66
	dd	2
	dd	_296
	dd	_268
	dd	-4
	dd	2
	dd	_535
	dd	_57
	dd	-8
	dd	0
	align	4
_730:
	dd	_189
	dd	208
	dd	3
	align	4
_734:
	dd	_189
	dd	209
	dd	4
	align	4
_739:
	dd	_189
	dd	211
	dd	4
	align	4
_743:
	dd	_189
	dd	214
	dd	3
	align	4
_747:
	dd	_189
	dd	215
	dd	4
	align	4
_760:
	dd	_189
	dd	216
	dd	5
	align	4
_770:
	dd	_189
	dd	217
	dd	6
	align	4
_771:
	dd	_189
	dd	218
	dd	6
	align	4
_774:
	dd	_189
	dd	220
	dd	6
	align	4
_777:
	dd	_189
	dd	225
	dd	3
	align	4
_782:
	dd	_189
	dd	226
	dd	4
	align	4
_792:
	dd	_189
	dd	227
	dd	5
	align	4
_793:
	dd	_189
	dd	228
	dd	5
	align	4
_796:
	dd	_189
	dd	229
	dd	5
	align	4
_799:
	dd	_189
	dd	233
	dd	3
	align	4
_803:
	dd	_189
	dd	234
	dd	4
	align	4
_806:
	dd	_189
	dd	236
	dd	3
	align	4
_810:
	dd	_189
	dd	237
	dd	4
	align	4
_813:
	dd	_189
	dd	238
	dd	4
	align	4
_1190:
	dd	0x3dcccccd
	align	4
_814:
	dd	_189
	dd	241
	dd	3
	align	4
_815:
	dd	_189
	dd	242
	dd	3
	align	4
_820:
	dd	_189
	dd	243
	dd	3
	align	4
_821:
	dd	_189
	dd	244
	dd	3
	align	4
_826:
	dd	_189
	dd	245
	dd	3
	align	4
_827:
	dd	_189
	dd	246
	dd	3
_835:
	db	"enableMinimize",0
_836:
	db	"hWnd",0
_837:
	db	"l",0
_838:
	db	"tmp",0
	align	4
_834:
	dd	1
	dd	_835
	dd	2
	dd	_836
	dd	_837
	dd	-8
	dd	2
	dd	_838
	dd	_837
	dd	-16
	dd	0
	align	4
_829:
	dd	_189
	dd	259
	dd	2
	align	4
_831:
	dd	_189
	dd	260
	dd	2
	align	4
_832:
	dd	_189
	dd	261
	dd	2
	align	4
_833:
	dd	_189
	dd	262
	dd	2
_851:
	db	"SetIcon",0
_852:
	db	"iconname",0
_853:
	db	"$",0
_854:
	db	"TheWindow",0
_855:
	db	"icon",0
_856:
	db	"WM_SETICON",0
_857:
	db	"ICON_SMALL",0
_858:
	db	"ICON_BIG",0
	align	4
_850:
	dd	1
	dd	_851
	dd	2
	dd	_852
	dd	_853
	dd	-4
	dd	2
	dd	_854
	dd	_57
	dd	-8
	dd	2
	dd	_855
	dd	_57
	dd	-12
	dd	2
	dd	_856
	dd	_57
	dd	-16
	dd	2
	dd	_857
	dd	_57
	dd	-20
	dd	2
	dd	_858
	dd	_57
	dd	-24
	dd	0
	align	4
_839:
	dd	_189
	dd	267
	dd	2
	align	4
_843:
	dd	_189
	dd	268
	dd	2
	align	4
_845:
	dd	_189
	dd	269
	dd	2
	align	4
_847:
	dd	_189
	dd	270
	dd	2
	align	4
_849:
	dd	_189
	dd	271
	dd	2
_871:
	db	"RectsOverlap",0
_872:
	db	"x0",0
_873:
	db	"y0",0
_874:
	db	"w0",0
_875:
	db	"h0",0
_876:
	db	"x2",0
_877:
	db	"y2",0
_878:
	db	"w2",0
_879:
	db	"h2",0
	align	4
_870:
	dd	1
	dd	_871
	dd	2
	dd	_872
	dd	_57
	dd	-4
	dd	2
	dd	_873
	dd	_57
	dd	-8
	dd	2
	dd	_874
	dd	_57
	dd	-12
	dd	2
	dd	_875
	dd	_57
	dd	-16
	dd	2
	dd	_876
	dd	_57
	dd	-20
	dd	2
	dd	_877
	dd	_57
	dd	-24
	dd	2
	dd	_878
	dd	_57
	dd	-28
	dd	2
	dd	_879
	dd	_57
	dd	-32
	dd	0
	align	4
_859:
	dd	_189
	dd	281
	dd	2
	align	4
_863:
	dd	_189
	dd	281
	dd	43
	align	4
_864:
	dd	_189
	dd	282
	dd	2
	align	4
_868:
	dd	_189
	dd	282
	dd	43
	align	4
_869:
	dd	_189
	dd	283
	dd	2
_894:
	db	"ShowLevelUp",0
_895:
	db	"lv",0
_896:
	db	"timer",0
	align	4
_893:
	dd	1
	dd	_894
	dd	2
	dd	_895
	dd	_57
	dd	-4
	dd	2
	dd	_896
	dd	_55
	dd	-8
	dd	2
	dd	_58
	dd	_57
	dd	-12
	dd	0
	align	4
_880:
	dd	_189
	dd	287
	dd	1
	align	4
_882:
	dd	_189
	dd	288
	dd	1
	align	4
_884:
	dd	_189
	dd	298
	dd	2
	align	4
_885:
	dd	_189
	dd	290
	dd	3
	align	4
_886:
	dd	_189
	dd	292
	dd	3
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	76,101,118,101,108,32
	align	4
_887:
	dd	_189
	dd	294
	dd	3
	align	4
_888:
	dd	_189
	dd	295
	dd	3
	align	4
_1240:
	dd	0x3f000000
	align	4
_889:
	dd	_189
	dd	296
	dd	3
	align	4
_891:
	dd	_189
	dd	296
	dd	21
	align	4
_892:
	dd	_189
	dd	297
	dd	3
	align	4
_1241:
	dd	0x43480000
_914:
	db	"GameOver",0
	align	4
_913:
	dd	1
	dd	_914
	dd	2
	dd	_896
	dd	_55
	dd	-4
	dd	2
	dd	_58
	dd	_57
	dd	-8
	dd	0
	align	4
_897:
	dd	_189
	dd	302
	dd	1
	align	4
_899:
	dd	_189
	dd	303
	dd	1
	align	4
_901:
	dd	_189
	dd	314
	dd	2
	align	4
_902:
	dd	_189
	dd	305
	dd	3
	align	4
_903:
	dd	_189
	dd	308
	dd	3
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	71,97,109,101,32,79,118,101,114,46,46,46
	align	4
_904:
	dd	_189
	dd	310
	dd	3
	align	4
_905:
	dd	_189
	dd	311
	dd	3
	align	4
_1245:
	dd	0x3f000000
	align	4
_906:
	dd	_189
	dd	312
	dd	3
	align	4
_908:
	dd	_189
	dd	312
	dd	21
	align	4
_909:
	dd	_189
	dd	313
	dd	3
	align	4
_1246:
	dd	0x43480000
	align	4
_910:
	dd	_189
	dd	316
	dd	1
	align	4
_911:
	dd	_189
	dd	317
	dd	1
	align	4
_912:
	dd	_189
	dd	318
	dd	1
_990:
	db	"MainMenu",0
_991:
	db	"play",0
_992:
	db	"Datastorage",0
_993:
	db	"AA",0
	align	4
_989:
	dd	1
	dd	_990
	dd	2
	dd	_991
	dd	_57
	dd	-4
	dd	2
	dd	_59
	dd	_57
	dd	-8
	dd	2
	dd	_58
	dd	_57
	dd	-12
	dd	2
	dd	_992
	dd	_57
	dd	-16
	dd	2
	dd	_71
	dd	_266
	dd	-20
	dd	2
	dd	_993
	dd	_266
	dd	-24
	dd	0
	align	4
_915:
	dd	_189
	dd	322
	dd	1
	align	4
_917:
	dd	_189
	dd	324
	dd	2
	align	4
_918:
	dd	_189
	dd	325
	dd	2
	align	4
_919:
	dd	_189
	dd	326
	dd	2
	align	4
_920:
	dd	_189
	dd	327
	dd	2
	align	4
_923:
	dd	_189
	dd	328
	dd	2
	align	4
_926:
	dd	_189
	dd	329
	dd	2
	align	4
_929:
	dd	_189
	dd	330
	dd	2
	align	4
_930:
	dd	_189
	dd	331
	dd	2
	align	4
_933:
	dd	_189
	dd	332
	dd	3
	align	4
_936:
	dd	_189
	dd	333
	dd	4
	align	4
_938:
	dd	_189
	dd	334
	dd	4
	align	4
_943:
	dd	_189
	dd	335
	dd	4
	align	4
_949:
	dd	_189
	dd	336
	dd	4
	align	4
_955:
	dd	_189
	dd	337
	dd	5
	align	4
_957:
	dd	_189
	dd	338
	dd	5
	align	4
_964:
	dd	_189
	dd	356
	dd	2
	align	4
_965:
	dd	_189
	dd	344
	dd	3
	align	4
_966:
	dd	_189
	dd	345
	dd	3
	align	4
_967:
	dd	_189
	dd	346
	dd	3
	align	4
_968:
	dd	_189
	dd	348
	dd	3
	align	4
_978:
	dd	_189
	dd	349
	dd	4
	align	4
_982:
	dd	_189
	dd	352
	dd	3
	align	4
_984:
	dd	_189
	dd	352
	dd	24
	align	4
_985:
	dd	_189
	dd	354
	dd	3
	align	4
_987:
	dd	_189
	dd	354
	dd	21
	align	4
_988:
	dd	_189
	dd	355
	dd	3
