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
	extrn	_brl_polledinput_FlushKeys
	extrn	_brl_polledinput_KeyDown
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_random_Rand
	public	___bb_spaceinvaders_init
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
	public	_bb_Win
	public	_bb_alien1_img
	public	_bb_alien2_img
	public	_bb_alien3_img
	public	_bb_alien4_img
	public	_bb_bg_music
	public	_bb_boom
	public	_bb_enableMinimize
	public	_bb_explosion_img
	public	_bb_fire
	public	_bb_i
	public	_bb_intro
	public	_bb_player
	public	_bb_player_img
	public	_bb_press_ent
	section	"code" code
___bb_spaceinvaders_init:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_309],0
	je	_310
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_310:
	mov	dword [_309],1
	push	ebp
	push	_262
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	mov	dword [_260],_261
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
	push	_197
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,1
	cmp	eax,0
	jne	_201
	call	_bbMilliSecs
	sub	eax,dword [_bb_SUperiod]
	mov	dword [_bb_SUtime],eax
	or	dword [_200],1
_201:
	push	_202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,2
	cmp	eax,0
	jne	_208
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_AlienList],eax
	or	dword [_200],2
_208:
	push	_209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,4
	cmp	eax,0
	jne	_211
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_BulletList],eax
	or	dword [_200],4
_211:
	push	_212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,8
	cmp	eax,0
	jne	_214
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_ExplosionList],eax
	or	dword [_200],8
_214:
	push	_215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,16
	cmp	eax,0
	jne	_218
	push	8
	push	20
	push	2
	push	_216
	call	_bbArrayNew
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_ALIEN_LAYOUT],eax
	or	dword [_200],16
_218:
	push	_219
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,32
	cmp	eax,0
	jne	_220
	push	32
	call	_brl_polledinput_KeyDown
	add	esp,4
	mov	dword [_bb_FIRE_DOWN],eax
	or	dword [_200],32
_220:
	push	_221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,64
	cmp	eax,0
	jne	_225
	push	-1
	push	_18
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_BG],eax
	or	dword [_200],64
_225:
	push	_226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,128
	cmp	eax,0
	jne	_228
	push	-1
	push	_19
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_intro],eax
	or	dword [_200],128
_228:
	push	_229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,256
	cmp	eax,0
	jne	_231
	push	-1
	push	_20
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_player_img],eax
	or	dword [_200],256
_231:
	push	_232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,512
	cmp	eax,0
	jne	_234
	push	-1
	push	_21
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_press_ent],eax
	or	dword [_200],512
_234:
	push	_235
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,1024
	cmp	eax,0
	jne	_237
	push	-1
	push	3
	push	0
	push	25
	push	25
	push	_22
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_alien1_img],eax
	or	dword [_200],1024
_237:
	push	_238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,2048
	cmp	eax,0
	jne	_240
	push	-1
	push	3
	push	0
	push	25
	push	25
	push	_23
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_alien2_img],eax
	or	dword [_200],2048
_240:
	push	_241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,4096
	cmp	eax,0
	jne	_243
	push	-1
	push	3
	push	0
	push	25
	push	25
	push	_24
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_alien3_img],eax
	or	dword [_200],4096
_243:
	push	_244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,8192
	cmp	eax,0
	jne	_246
	push	-1
	push	3
	push	0
	push	25
	push	25
	push	_25
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_alien4_img],eax
	or	dword [_200],8192
_246:
	push	_247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,16384
	cmp	eax,0
	jne	_249
	push	-1
	push	5
	push	0
	push	25
	push	25
	push	_26
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_explosion_img],eax
	or	dword [_200],16384
_249:
	push	_250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,32768
	cmp	eax,0
	jne	_252
	push	0
	push	_27
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_fire],eax
	or	dword [_200],32768
_252:
	push	_253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,65536
	cmp	eax,0
	jne	_255
	push	0
	push	_28
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_boom],eax
	or	dword [_200],65536
_255:
	push	_256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_200]
	and	eax,131072
	cmp	eax,0
	jne	_258
	push	1
	push	_29
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_bg_music],eax
	or	dword [_200],131072
_258:
	push	_259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_57:
	mov	ebx,0
_97:
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
	push	_311
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
_100:
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
_103:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
_314:
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
	push	_336
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_315
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [_bb_ExplosionList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_316
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_318
	call	_brl_blitz_NullObjectError
_318:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+16],eax
	push	_320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_322
	call	_brl_blitz_NullObjectError
_322:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+20],eax
	push	_324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_326
	call	_brl_blitz_NullObjectError
_326:
	mov	eax,dword [ebp-16]
	mov	dword [ebx+24],eax
	push	_328
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_330
	call	_brl_blitz_NullObjectError
_330:
	fldz
	fstp	dword [ebx+8]
	push	_332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_334
	call	_brl_blitz_NullObjectError
_334:
	mov	dword [ebx+12],0
	mov	ebx,0
_109:
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
	push	_378
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_340
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_342
	call	_brl_blitz_NullObjectError
_342:
	cmp	dword [ebx+24],2
	jne	_343
	push	_344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1086324736
	push	1086324736
	call	_brl_max2d_SetScale
	add	esp,8
_343:
	push	_345
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_347
	call	_brl_blitz_NullObjectError
_347:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_349
	call	_brl_blitz_NullObjectError
_349:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_351
	call	_brl_blitz_NullObjectError
_351:
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
	push	_352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_353
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_355
	call	_brl_blitz_NullObjectError
_355:
	fld	dword [ebx+8]
	fadd	dword [_1098]
	fstp	dword [ebx+8]
	push	_357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_359
	call	_brl_blitz_NullObjectError
_359:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_362
	call	_brl_blitz_NullObjectError
_362:
	fld	dword [esi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+12],eax
	push	_363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_365
	call	_brl_blitz_NullObjectError
_365:
	fld	dword [ebx+8]
	fld	dword [_1099]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_366
	push	_367
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ExplosionList]
	cmp	ebx,_bbNullObject
	jne	_369
	call	_brl_blitz_NullObjectError
_369:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_372
	call	_brl_blitz_NullObjectError
_372:
	cmp	dword [ebx+24],2
	jne	_373
	push	_374
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_376
	call	_brl_blitz_NullObjectError
_376:
	mov	dword [ebx+20],1
_373:
_366:
	mov	ebx,0
_112:
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
	push	_380
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
_115:
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
_118:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_383
	push	eax
	call	_bbGCFree
	add	esp,4
_383:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
_381:
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
	push	_470
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
	mov	eax,dword [ebp-8]
	imul	eax,35
	sub	eax,15
	mov	dword [ebx+8],eax
	push	_388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_390
	call	_brl_blitz_NullObjectError
_390:
	mov	eax,dword [ebp-12]
	imul	eax,35
	sub	eax,48
	mov	dword [ebx+12],eax
	push	_392
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_394
	call	_brl_blitz_NullObjectError
_394:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_397
	call	_brl_blitz_NullObjectError
_397:
	mov	eax,dword [esi+8]
	mov	dword [ebx+16],eax
	push	_398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_400
	call	_brl_blitz_NullObjectError
_400:
	mov	dword [ebx+20],2
	push	_402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_404
	call	_brl_blitz_NullObjectError
_404:
	push	7000
	push	2000
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+36],eax
	push	_406
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_408
	call	_brl_blitz_NullObjectError
_408:
	call	_bbMilliSecs
	mov	dword [ebx+40],eax
	push	_410
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	cmp	eax,1
	je	_413
	cmp	eax,2
	je	_414
	cmp	eax,3
	je	_415
	cmp	eax,4
	je	_416
	jmp	_412
_413:
	push	_417
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_419
	call	_brl_blitz_NullObjectError
_419:
	mov	ebx,dword [_bb_alien1_img]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_424
	push	eax
	call	_bbGCFree
	add	esp,4
_424:
	mov	dword [esi+24],ebx
	push	_425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_427
	call	_brl_blitz_NullObjectError
_427:
	push	7000
	push	4000
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+36],eax
	jmp	_412
_414:
	push	_429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_431
	call	_brl_blitz_NullObjectError
_431:
	mov	ebx,dword [_bb_alien2_img]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_436
	push	eax
	call	_bbGCFree
	add	esp,4
_436:
	mov	dword [esi+24],ebx
	push	_437
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_439
	call	_brl_blitz_NullObjectError
_439:
	push	6000
	push	3500
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+36],eax
	jmp	_412
_415:
	push	_441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_443
	call	_brl_blitz_NullObjectError
_443:
	mov	ebx,dword [_bb_alien3_img]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_448
	push	eax
	call	_bbGCFree
	add	esp,4
_448:
	mov	dword [esi+24],ebx
	push	_449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_451
	call	_brl_blitz_NullObjectError
_451:
	push	4500
	push	2300
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+36],eax
	jmp	_412
_416:
	push	_453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_455
	call	_brl_blitz_NullObjectError
_455:
	mov	ebx,dword [_bb_alien4_img]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_460
	push	eax
	call	_bbGCFree
	add	esp,4
_460:
	mov	dword [esi+24],ebx
	push	_461
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_463
	call	_brl_blitz_NullObjectError
_463:
	push	3000
	push	1500
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+36],eax
_412:
	push	_465
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_467
	call	_brl_blitz_NullObjectError
_467:
	mov	dword [ebx+28],0
	push	_469
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [_bb_AlienList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	ebx,0
_124:
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
	push	_563
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_474
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_476
	call	_brl_blitz_NullObjectError
_476:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_478
	call	_brl_blitz_NullObjectError
_478:
	mov	eax,dword [esi+16]
	add	eax,20
	cmp	dword [ebx+8],eax
	jl	_479
	push	_480
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_482
	call	_brl_blitz_NullObjectError
_482:
	mov	dword [ebx+20],1
_479:
	push	_484
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_486
	call	_brl_blitz_NullObjectError
_486:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_488
	call	_brl_blitz_NullObjectError
_488:
	mov	eax,dword [esi+16]
	sub	eax,20
	cmp	dword [ebx+8],eax
	jg	_489
	push	_490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_492
	call	_brl_blitz_NullObjectError
_492:
	mov	dword [ebx+20],2
_489:
	push	_494
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_496
	call	_brl_blitz_NullObjectError
_496:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_498
	call	_brl_blitz_NullObjectError
_498:
	mov	edx,dword [esi+8]
	mov	eax,dword [ebx+16]
	add	eax,20
	cmp	edx,eax
	setl	al
	movzx	eax,al
	cmp	eax,0
	je	_501
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_500
	call	_brl_blitz_NullObjectError
_500:
	mov	eax,dword [ebx+20]
	cmp	eax,2
	sete	al
	movzx	eax,al
_501:
	cmp	eax,0
	je	_503
	push	_504
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_506
	call	_brl_blitz_NullObjectError
_506:
	add	dword [ebx+8],3
_503:
	push	_508
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_510
	call	_brl_blitz_NullObjectError
_510:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_512
	call	_brl_blitz_NullObjectError
_512:
	mov	edx,dword [esi+8]
	mov	eax,dword [ebx+16]
	sub	eax,20
	cmp	edx,eax
	setg	al
	movzx	eax,al
	cmp	eax,0
	je	_515
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_514
	call	_brl_blitz_NullObjectError
_514:
	mov	eax,dword [ebx+20]
	cmp	eax,1
	sete	al
	movzx	eax,al
_515:
	cmp	eax,0
	je	_517
	push	_518
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_520
	call	_brl_blitz_NullObjectError
_520:
	sub	dword [ebx+8],3
_517:
	push	_522
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_524
	call	_brl_blitz_NullObjectError
_524:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_526
	call	_brl_blitz_NullObjectError
_526:
	call	_bbMilliSecs
	mov	edx,dword [esi+40]
	add	edx,dword [ebx+36]
	cmp	eax,edx
	jle	_527
	push	_528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_fire]
	call	_brl_audio_PlaySound
	add	esp,8
	push	_529
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_531
	call	_brl_blitz_NullObjectError
_531:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	_532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_534
	call	_brl_blitz_NullObjectError
_534:
	call	_bbMilliSecs
	mov	dword [ebx+40],eax
_527:
	push	_536
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_538
	call	_brl_blitz_NullObjectError
_538:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_541
	call	_brl_blitz_NullObjectError
_541:
	fld	dword [esi+32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+28],eax
	push	_542
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-8],eax
	cmp	dword [ebp-8],_bbNullObject
	jne	_544
	call	_brl_blitz_NullObjectError
_544:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_546
	call	_brl_blitz_NullObjectError
_546:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_548
	call	_brl_blitz_NullObjectError
_548:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_550
	call	_brl_blitz_NullObjectError
_550:
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
	push	_551
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_553
	call	_brl_blitz_NullObjectError
_553:
	fld	dword [ebx+32]
	fadd	dword [_1142]
	fstp	dword [ebx+32]
	push	_555
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_557
	call	_brl_blitz_NullObjectError
_557:
	fld	dword [ebx+32]
	fld	dword [_1143]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_558
	push	_559
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_561
	call	_brl_blitz_NullObjectError
_561:
	fldz
	fstp	dword [ebx+32]
_558:
	mov	ebx,0
_127:
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
	push	_574
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_564
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TBullet
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_566
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_568
	call	_brl_blitz_NullObjectError
_568:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_571
	call	_brl_blitz_NullObjectError
_571:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_573
	call	_brl_blitz_NullObjectError
_573:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [ebp-12]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,16
	mov	ebx,0
_130:
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
	push	_590
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_AlienList]
	cmp	ebx,_bbNullObject
	jne	_579
	call	_brl_blitz_NullObjectError
_579:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TExplosion
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_582
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_584
	call	_brl_blitz_NullObjectError
_584:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_586
	call	_brl_blitz_NullObjectError
_586:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_588
	call	_brl_blitz_NullObjectError
_588:
	push	1
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,16
	push	_589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_SCORE],1
	mov	ebx,0
_133:
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
	push	_592
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
_136:
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
_139:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
_593:
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
	push	_610
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_594
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_596
	call	_brl_blitz_NullObjectError
_596:
	mov	dword [ebx+8],400
	push	_598
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_600
	call	_brl_blitz_NullObjectError
_600:
	mov	dword [ebx+12],480
	push	_602
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_604
	call	_brl_blitz_NullObjectError
_604:
	mov	dword [ebx+16],10
	push	_606
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_608
	call	_brl_blitz_NullObjectError
_608:
	mov	dword [ebx+20],1
	mov	ebx,0
_142:
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
	push	_671
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	32
	call	_brl_polledinput_KeyDown
	add	esp,4
	mov	dword [_bb_FIRE_DOWN],eax
	push	_612
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	39
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_615
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_614
	call	_brl_blitz_NullObjectError
_614:
	mov	eax,dword [ebx+8]
	cmp	eax,760
	setl	al
	movzx	eax,al
_615:
	cmp	eax,0
	je	_619
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_618
	call	_brl_blitz_NullObjectError
_618:
	mov	eax,dword [ebx+20]
	cmp	eax,1
	sete	al
	movzx	eax,al
_619:
	cmp	eax,0
	je	_621
	push	_622
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_624
	call	_brl_blitz_NullObjectError
_624:
	add	dword [ebx+8],8
_621:
	push	_626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	37
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_629
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_628
	call	_brl_blitz_NullObjectError
_628:
	mov	eax,dword [ebx+8]
	cmp	eax,0
	setg	al
	movzx	eax,al
_629:
	cmp	eax,0
	je	_633
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_632
	call	_brl_blitz_NullObjectError
_632:
	mov	eax,dword [ebx+20]
	cmp	eax,1
	sete	al
	movzx	eax,al
_633:
	cmp	eax,0
	je	_635
	push	_636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_638
	call	_brl_blitz_NullObjectError
_638:
	sub	dword [ebx+8],8
_635:
	push	_640
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	32
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_643
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_642
	call	_brl_blitz_NullObjectError
_642:
	mov	eax,dword [ebx+20]
	cmp	eax,1
	sete	al
	movzx	eax,al
_643:
	cmp	eax,0
	je	_645
	push	_646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_fire]
	call	_brl_audio_PlaySound
	add	esp,8
	push	_647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_649
	call	_brl_blitz_NullObjectError
_649:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
_645:
	push	_650
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_FIRE_DOWN]
	cmp	eax,0
	je	_653
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_652
	call	_brl_blitz_NullObjectError
_652:
	mov	eax,dword [ebx+20]
	cmp	eax,1
	sete	al
	movzx	eax,al
_653:
	cmp	eax,0
	je	_655
	fld	dword [_bb_FIRE_TIMER]
	fld	dword [_1202]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
_655:
	cmp	eax,0
	je	_657
	push	_658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_fire]
	call	_brl_audio_PlaySound
	add	esp,8
	push	_659
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_661
	call	_brl_blitz_NullObjectError
_661:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
_657:
	push	_662
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_664
	call	_brl_blitz_NullObjectError
_664:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_666
	call	_brl_blitz_NullObjectError
_666:
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
	push	_667
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_FIRE_TIMER]
	fadd	dword [_1203]
	fstp	dword [_bb_FIRE_TIMER]
	push	_668
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_FIRE_TIMER]
	fld	dword [_1204]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_669
	push	_670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [_bb_FIRE_TIMER]
_669:
	mov	ebx,0
_145:
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
	push	_681
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TBullet
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_674
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_676
	call	_brl_blitz_NullObjectError
_676:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_678
	call	_brl_blitz_NullObjectError
_678:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_680
	call	_brl_blitz_NullObjectError
_680:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	2
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,16
	mov	ebx,0
_148:
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
	push	_702
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_682
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TExplosion
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_684
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_686
	call	_brl_blitz_NullObjectError
_686:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_688
	call	_brl_blitz_NullObjectError
_688:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_690
	call	_brl_blitz_NullObjectError
_690:
	push	1
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,16
	push	_691
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_693
	call	_brl_blitz_NullObjectError
_693:
	sub	dword [ebx+16],1
	push	_695
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_697
	call	_brl_blitz_NullObjectError
_697:
	cmp	dword [ebx+16],0
	jne	_698
	push	_699
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_701
	call	_brl_blitz_NullObjectError
_701:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
_698:
	mov	ebx,0
_151:
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
	push	_728
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_703
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_705
	call	_brl_blitz_NullObjectError
_705:
	mov	dword [ebx+20],0
	push	_707
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TExplosion
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_709
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_711
	call	_brl_blitz_NullObjectError
_711:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_713
	call	_brl_blitz_NullObjectError
_713:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_715
	call	_brl_blitz_NullObjectError
_715:
	push	2
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,16
	push	_716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [_bb_LIFES],1
	push	_717
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_719
	call	_brl_blitz_NullObjectError
_719:
	mov	dword [ebx+16],10
	push	_721
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_LIFES],0
	jne	_722
	push	_723
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_725
	call	_brl_blitz_NullObjectError
_725:
	mov	dword [ebx+20],1
	push	_727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_GameOver
_722:
	mov	ebx,0
_154:
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
	push	_729
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
_157:
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
_160:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
_730:
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
	push	_770
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [_bb_BulletList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_732
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	eax,2
	je	_735
	cmp	eax,dword [ebp-20]
	je	_736
	jmp	_734
_735:
	push	_738
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_740
	call	_brl_blitz_NullObjectError
_740:
	mov	eax,dword [ebp-12]
	add	eax,20
	mov	dword [ebx+8],eax
	push	_742
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_744
	call	_brl_blitz_NullObjectError
_744:
	mov	eax,dword [ebp-16]
	add	eax,10
	mov	dword [ebx+12],eax
	push	_746
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_748
	call	_brl_blitz_NullObjectError
_748:
	mov	dword [ebx+16],1
	push	_750
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_752
	call	_brl_blitz_NullObjectError
_752:
	mov	dword [ebx+24],2
	jmp	_734
_736:
	push	_754
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_756
	call	_brl_blitz_NullObjectError
_756:
	mov	eax,dword [ebp-12]
	add	eax,12
	mov	dword [ebx+8],eax
	push	_758
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_760
	call	_brl_blitz_NullObjectError
_760:
	mov	eax,dword [ebp-16]
	add	eax,5
	mov	dword [ebx+12],eax
	push	_762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_764
	call	_brl_blitz_NullObjectError
_764:
	mov	dword [ebx+16],-1
	push	_766
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_768
	call	_brl_blitz_NullObjectError
_768:
	mov	eax,dword [ebp-20]
	mov	dword [ebx+24],eax
_734:
	mov	ebx,0
_166:
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
	push	_873
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_772
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_774
	call	_brl_blitz_NullObjectError
_774:
	cmp	dword [ebx+16],1
	jne	_775
	push	_776
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_778
	call	_brl_blitz_NullObjectError
_778:
	sub	dword [ebx+12],8
	jmp	_780
_775:
	push	_781
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_783
	call	_brl_blitz_NullObjectError
_783:
	add	dword [ebx+12],8
_780:
	push	_785
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_787
	call	_brl_blitz_NullObjectError
_787:
	cmp	dword [ebx+24],2
	jne	_788
	push	_789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_AlienList]
	mov	dword [ebp-20],eax
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_792
	call	_brl_blitz_NullObjectError
_792:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-16],eax
	jmp	_30
_32:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_797
	call	_brl_blitz_NullObjectError
_797:
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
	jnz	_801
	push	eax
	call	_bbGCFree
	add	esp,4
_801:
	mov	dword [_bb_CHECKALIEN],ebx
	cmp	dword [_bb_CHECKALIEN],_bbNullObject
	je	_30
	push	_802
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	jne	_804
	call	_brl_blitz_NullObjectError
_804:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_806
	call	_brl_blitz_NullObjectError
_806:
	mov	esi,dword [_bb_CHECKALIEN]
	cmp	esi,_bbNullObject
	jne	_808
	call	_brl_blitz_NullObjectError
_808:
	mov	ebx,dword [_bb_CHECKALIEN]
	cmp	ebx,_bbNullObject
	jne	_810
	call	_brl_blitz_NullObjectError
_810:
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
	je	_811
	push	_812
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_boom]
	call	_brl_audio_PlaySound
	add	esp,8
	push	_813
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_CHECKALIEN]
	cmp	ebx,_bbNullObject
	jne	_815
	call	_brl_blitz_NullObjectError
_815:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_816
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BulletList]
	cmp	ebx,_bbNullObject
	jne	_818
	call	_brl_blitz_NullObjectError
_818:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
_811:
_30:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_795
	call	_brl_blitz_NullObjectError
_795:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_32
_31:
_788:
	push	_819
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_821
	call	_brl_blitz_NullObjectError
_821:
	mov	eax,dword [ebp-8]
	cmp	dword [ebx+24],eax
	jne	_823
	push	_824
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_player]
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	jne	_826
	call	_brl_blitz_NullObjectError
_826:
	mov	edi,dword [_bb_player]
	cmp	edi,_bbNullObject
	jne	_828
	call	_brl_blitz_NullObjectError
_828:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_830
	call	_brl_blitz_NullObjectError
_830:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_832
	call	_brl_blitz_NullObjectError
_832:
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
	je	_833
	push	_834
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_boom]
	call	_brl_audio_PlaySound
	add	esp,8
	push	_835
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_837
	call	_brl_blitz_NullObjectError
_837:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_838
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BulletList]
	cmp	ebx,_bbNullObject
	jne	_840
	call	_brl_blitz_NullObjectError
_840:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
_833:
_823:
	push	_841
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_843
	call	_brl_blitz_NullObjectError
_843:
	cmp	dword [ebx+12],-20
	jge	_844
	push	_845
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BulletList]
	cmp	ebx,_bbNullObject
	jne	_847
	call	_brl_blitz_NullObjectError
_847:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
_844:
	push	_848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_850
	call	_brl_blitz_NullObjectError
_850:
	cmp	dword [ebx+12],610
	jle	_851
	push	_852
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BulletList]
	cmp	ebx,_bbNullObject
	jne	_854
	call	_brl_blitz_NullObjectError
_854:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_855
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_EARTHHP]
	fsub	dword [_1270]
	fstp	dword [_bb_EARTHHP]
	push	_856
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_EARTHHP]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_857
	push	_858
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_GameOver
_857:
_851:
	push	_859
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_860
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_862
	call	_brl_blitz_NullObjectError
_862:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_864
	call	_brl_blitz_NullObjectError
_864:
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
	push	_865
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1050253722
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_866
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_868
	call	_brl_blitz_NullObjectError
_868:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_870
	call	_brl_blitz_NullObjectError
_870:
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
	push	_871
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_872
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	mov	ebx,0
_169:
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
	push	_879
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_874
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
	push	_876
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
	push	_877
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	push	-16
	push	dword [ebp-8]
	call	_SetWindowLongA@12
	push	_878
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_DrawMenuBar@4
	mov	ebx,0
_172:
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
	push	_895
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_884
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
	push	_888
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],128
	push	_890
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	push	_894
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	dword [ebp-24]
	push	dword [ebp-16]
	push	dword [ebp-8]
	call	_SendMessageA@16
	mov	ebx,0
_176:
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
	push	_915
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_904
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-20]
	add	eax,dword [ebp-28]
	cmp	edx,eax
	setg	al
	movzx	eax,al
	cmp	eax,0
	jne	_905
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-12]
	cmp	eax,dword [ebp-20]
	setl	al
	movzx	eax,al
_905:
	cmp	eax,0
	je	_907
	push	_908
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_186
_907:
	push	_909
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-24]
	add	eax,dword [ebp-32]
	cmp	edx,eax
	setg	al
	movzx	eax,al
	cmp	eax,0
	jne	_910
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-16]
	cmp	eax,dword [ebp-24]
	setl	al
	movzx	eax,al
_910:
	cmp	eax,0
	je	_912
	push	_913
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_186
_912:
	push	_914
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
_186:
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
	push	_939
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_925
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-8]
	push	_927
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	push	_929
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_35:
	push	_930
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_931
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
	push	_36
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_932
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-12],2
	push	_933
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fadd	dword [_1321]
	fstp	dword [ebp-8]
	push	_934
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_AppTerminate
	cmp	eax,0
	je	_935
	push	_936
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
_935:
	push	_937
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_33:
	fld	dword [ebp-8]
	fld	dword [_1322]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_35
_34:
	push	_938
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_FlushKeys
	mov	ebx,0
_189:
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
	push	_957
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_943
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-4]
	push	_945
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	push	_947
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_39:
	push	_948
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_949
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1133903872
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	push	_40
	call	_brl_max2d_DrawText
	add	esp,12
	push	_950
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-8],2
	push	_951
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fadd	dword [_1326]
	fstp	dword [ebp-4]
	push	_952
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_AppTerminate
	cmp	eax,0
	je	_953
	push	_954
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
_953:
	push	_955
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_37:
	fld	dword [ebp-4]
	fld	dword [_1327]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_39
_38:
	push	_956
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_MainMenu
	mov	ebx,0
_191:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_MainMenu:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],0
	fldz
	fstp	dword [ebp-8]
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_1044
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_959
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_961
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-8]
	push	_963
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_LIFES],3
	push	_964
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_LEVEL],1
	push	_965
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_SCORE],0
	push	_966
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1331]
	fstp	dword [_bb_EARTHHP]
	push	_967
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BulletList]
	cmp	ebx,_bbNullObject
	jne	_969
	call	_brl_blitz_NullObjectError
_969:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_970
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_AlienList]
	cmp	ebx,_bbNullObject
	jne	_972
	call	_brl_blitz_NullObjectError
_972:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_973
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ExplosionList]
	cmp	ebx,_bbNullObject
	jne	_975
	call	_brl_blitz_NullObjectError
_975:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_976
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_260],_58
	push	_977
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	jmp	_979
_43:
	push	_980
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	dword [ebp-16],1
	jmp	_982
_46:
	push	_983
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_985
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_260]
	mov	ebx,dword [esi]
	cmp	ebx,0
	jne	_988
	call	_brl_blitz_OutOfDataError
_988:
	mov	ebx,dword [ebx]
	add	esi,4
	push	ebx
	push	esi
	call	_bbConvertToInt
	add	esp,8
	mov	dword [ebp-20],eax
	add	esi,4
	movzx	eax,byte [ebx]
	cmp	eax,100
	jne	_989
	add	esi,4
_989:
	mov	dword [_260],esi
	push	_990
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	sub	esi,1
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	esi,dword [eax+20]
	jb	_992
	call	_brl_blitz_ArrayBoundsError
_992:
	mov	ebx,dword [ebp-12]
	sub	ebx,1
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	ebx,dword [eax+24]
	jb	_994
	call	_brl_blitz_ArrayBoundsError
_994:
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edx,dword [ebp-20]
	mov	dword [eax+28],edx
	push	_996
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	sub	esi,1
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	esi,dword [eax+20]
	jb	_998
	call	_brl_blitz_ArrayBoundsError
_998:
	mov	ebx,dword [ebp-12]
	sub	ebx,1
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	ebx,dword [eax+24]
	jb	_1000
	call	_brl_blitz_ArrayBoundsError
_1000:
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	add	esi,ebx
	cmp	dword [eax+esi*4+28],0
	jle	_1001
	push	_1002
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAlien
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-24],eax
	push	_1004
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-24]
	cmp	edi,_bbNullObject
	jne	_1006
	call	_brl_blitz_NullObjectError
_1006:
	mov	eax,dword [ebp-16]
	sub	eax,1
	mov	edx,dword [_bb_ALIEN_LAYOUT]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	esi,dword [eax+20]
	jb	_1008
	call	_brl_blitz_ArrayBoundsError
_1008:
	mov	eax,dword [ebp-12]
	sub	eax,1
	mov	ebx,eax
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	ebx,dword [eax+24]
	jb	_1010
	call	_brl_blitz_ArrayBoundsError
_1010:
	mov	edx,dword [_bb_ALIEN_LAYOUT]
	mov	eax,esi
	add	eax,ebx
	push	dword [edx+eax*4+28]
	mov	eax,dword [ebp-12]
	add	eax,1
	push	eax
	mov	eax,dword [ebp-16]
	add	eax,1
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,16
_1001:
_44:
	add	dword [ebp-16],1
_982:
	cmp	dword [ebp-16],20
	jle	_46
_45:
_41:
	add	dword [ebp-12],1
_979:
	cmp	dword [ebp-12],8
	jle	_43
_42:
	push	_1011
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_49:
	push	_1012
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_1013
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	push	dword [_bb_BG]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_1014
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	1125515264
	push	1130102784
	push	dword [_bb_intro]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_1015
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_1016
	push	_1017
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	1137180672
	push	1134559232
	push	dword [_bb_press_ent]
	call	_brl_max2d_DrawImage
	add	esp,16
_1016:
	push	_1018
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	edi,dword [_bb_AlienList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1022
	call	_brl_blitz_NullObjectError
_1022:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_50
_52:
	cmp	ebx,_bbNullObject
	jne	_1027
	call	_brl_blitz_NullObjectError
_1027:
	push	_bb_TAlien
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	je	_50
	push	_1028
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_1030
	call	_brl_blitz_NullObjectError
_1030:
	call	_bbMilliSecs
	mov	dword [esi+40],eax
_50:
	cmp	ebx,_bbNullObject
	jne	_1025
	call	_brl_blitz_NullObjectError
_1025:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_52
_51:
	push	_1032
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	13
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_1033
	push	_1034
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],1
_1033:
	push	_1035
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_AppTerminate
	cmp	eax,0
	je	_1036
	push	_1037
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
_1036:
	push	_1038
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fadd	dword [_1332]
	fstp	dword [ebp-8]
	push	_1039
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fld	dword [_1333]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_1040
	push	_1041
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-8]
_1040:
	push	_1042
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_47:
	cmp	dword [ebp-4],0
	je	_49
_48:
	push	_1043
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_FlushKeys
	mov	ebx,0
_193:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Win:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	fldz
	fstp	dword [ebp-4]
	mov	dword [ebp-8],0
	push	ebp
	push	_1064
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1050
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-4]
	push	_1052
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	push	_1054
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_55:
	push	_1055
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_1056
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1133903872
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	push	_56
	call	_brl_max2d_DrawText
	add	esp,12
	push	_1057
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-8],2
	push	_1058
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fadd	dword [_1358]
	fstp	dword [ebp-4]
	push	_1059
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_AppTerminate
	cmp	eax,0
	je	_1060
	push	_1061
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
_1060:
	push	_1062
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_53:
	fld	dword [ebp-4]
	fld	dword [_1359]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_55
_54:
	push	_1063
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_MainMenu
	mov	ebx,0
_195:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_309:
	dd	0
_263:
	db	"Init",0
_264:
	db	"ReqFPS",0
_64:
	db	"i",0
	align	4
_265:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	54,48
_266:
	db	"PARENT_PLAYER",0
	align	4
_267:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	50
_268:
	db	"PARENT_ALIEN1",0
	align	4
_269:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	49
_270:
	db	"DIR_UP",0
_271:
	db	"DIR_DOWN",0
	align	4
_272:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	45,49
_273:
	db	"SUperiod",0
	align	4
_bb_SUperiod:
	dd	16
_274:
	db	"SUtime",0
	align	4
_bb_SUtime:
	dd	0
_275:
	db	"SUelapsed",0
	align	4
_bb_SUelapsed:
	dd	0
_276:
	db	"SU",0
	align	4
_bb_SU:
	dd	0
_277:
	db	"SUticks",0
	align	4
_bb_SUticks:
	dd	0
	align	4
_bb_i:
	dd	0
_278:
	db	"CHECKALIEN",0
_279:
	db	":TAlien",0
	align	4
_bb_CHECKALIEN:
	dd	_bbNullObject
_280:
	db	"CHECKBULLET",0
_281:
	db	":TBullet",0
	align	4
_bb_CHECKBULLET:
	dd	_bbNullObject
_282:
	db	"AlienList",0
_283:
	db	":brl.linkedlist.TList",0
	align	4
_bb_AlienList:
	dd	_bbNullObject
_284:
	db	"BulletList",0
	align	4
_bb_BulletList:
	dd	_bbNullObject
_285:
	db	"ExplosionList",0
	align	4
_bb_ExplosionList:
	dd	_bbNullObject
_286:
	db	"ALIEN_LAYOUT",0
_287:
	db	"[,]i",0
	align	4
_bb_ALIEN_LAYOUT:
	dd	_bbEmptyArray
_288:
	db	"FIRE_DOWN",0
	align	4
_bb_FIRE_DOWN:
	dd	0
_289:
	db	"FIRE_TIMER",0
_62:
	db	"f",0
	align	4
_bb_FIRE_TIMER:
	dd	0x0
_290:
	db	"LIFES",0
	align	4
_bb_LIFES:
	dd	3
_291:
	db	"LEVEL",0
	align	4
_bb_LEVEL:
	dd	1
_292:
	db	"SCORE",0
	align	4
_bb_SCORE:
	dd	0
_293:
	db	"EARTHHP",0
	align	4
_bb_EARTHHP:
	dd	0x42c80000
_294:
	db	"player",0
_295:
	db	":TPlayer",0
	align	4
_bb_player:
	dd	_bbNullObject
_296:
	db	"BG",0
_79:
	db	":brl.max2d.TImage",0
	align	4
_bb_BG:
	dd	_bbNullObject
_297:
	db	"intro",0
	align	4
_bb_intro:
	dd	_bbNullObject
_298:
	db	"player_img",0
	align	4
_bb_player_img:
	dd	_bbNullObject
_299:
	db	"press_ent",0
	align	4
_bb_press_ent:
	dd	_bbNullObject
_300:
	db	"alien1_img",0
	align	4
_bb_alien1_img:
	dd	_bbNullObject
_301:
	db	"alien2_img",0
	align	4
_bb_alien2_img:
	dd	_bbNullObject
_302:
	db	"alien3_img",0
	align	4
_bb_alien3_img:
	dd	_bbNullObject
_303:
	db	"alien4_img",0
	align	4
_bb_alien4_img:
	dd	_bbNullObject
_304:
	db	"explosion_img",0
	align	4
_bb_explosion_img:
	dd	_bbNullObject
_305:
	db	"fire",0
_306:
	db	":brl.audio.TSound",0
	align	4
_bb_fire:
	dd	_bbNullObject
_307:
	db	"boom",0
	align	4
_bb_boom:
	dd	_bbNullObject
_308:
	db	"bg_music",0
	align	4
_bb_bg_music:
	dd	_bbNullObject
	align	4
_262:
	dd	1
	dd	_263
	dd	1
	dd	_264
	dd	_64
	dd	_265
	dd	1
	dd	_266
	dd	_64
	dd	_267
	dd	1
	dd	_268
	dd	_64
	dd	_269
	dd	1
	dd	_270
	dd	_64
	dd	_269
	dd	1
	dd	_271
	dd	_64
	dd	_272
	dd	4
	dd	_273
	dd	_64
	dd	_bb_SUperiod
	dd	4
	dd	_274
	dd	_64
	dd	_bb_SUtime
	dd	4
	dd	_275
	dd	_64
	dd	_bb_SUelapsed
	dd	4
	dd	_276
	dd	_64
	dd	_bb_SU
	dd	4
	dd	_277
	dd	_64
	dd	_bb_SUticks
	dd	4
	dd	_64
	dd	_64
	dd	_bb_i
	dd	4
	dd	_278
	dd	_279
	dd	_bb_CHECKALIEN
	dd	4
	dd	_280
	dd	_281
	dd	_bb_CHECKBULLET
	dd	4
	dd	_282
	dd	_283
	dd	_bb_AlienList
	dd	4
	dd	_284
	dd	_283
	dd	_bb_BulletList
	dd	4
	dd	_285
	dd	_283
	dd	_bb_ExplosionList
	dd	4
	dd	_286
	dd	_287
	dd	_bb_ALIEN_LAYOUT
	dd	4
	dd	_288
	dd	_64
	dd	_bb_FIRE_DOWN
	dd	4
	dd	_289
	dd	_62
	dd	_bb_FIRE_TIMER
	dd	4
	dd	_290
	dd	_64
	dd	_bb_LIFES
	dd	4
	dd	_291
	dd	_64
	dd	_bb_LEVEL
	dd	4
	dd	_292
	dd	_64
	dd	_bb_SCORE
	dd	4
	dd	_293
	dd	_62
	dd	_bb_EARTHHP
	dd	4
	dd	_294
	dd	_295
	dd	_bb_player
	dd	4
	dd	_296
	dd	_79
	dd	_bb_BG
	dd	4
	dd	_297
	dd	_79
	dd	_bb_intro
	dd	4
	dd	_298
	dd	_79
	dd	_bb_player_img
	dd	4
	dd	_299
	dd	_79
	dd	_bb_press_ent
	dd	4
	dd	_300
	dd	_79
	dd	_bb_alien1_img
	dd	4
	dd	_301
	dd	_79
	dd	_bb_alien2_img
	dd	4
	dd	_302
	dd	_79
	dd	_bb_alien3_img
	dd	4
	dd	_303
	dd	_79
	dd	_bb_alien4_img
	dd	4
	dd	_304
	dd	_79
	dd	_bb_explosion_img
	dd	4
	dd	_305
	dd	_306
	dd	_bb_fire
	dd	4
	dd	_307
	dd	_306
	dd	_bb_boom
	dd	4
	dd	_308
	dd	_306
	dd	_bb_bg_music
	dd	0
	align	4
_261:
_58:
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
_260:
	dd	0
_60:
	db	"TExplosion",0
_61:
	db	"FrameTimer",0
_63:
	db	"Current_Frame",0
_65:
	db	"x",0
_66:
	db	"y",0
_67:
	db	"size",0
_68:
	db	"New",0
_69:
	db	"()i",0
_70:
	db	"Delete",0
_71:
	db	"Create",0
_72:
	db	"(i,i,i)i",0
_73:
	db	"Update",0
	align	4
_59:
	dd	2
	dd	_60
	dd	3
	dd	_61
	dd	_62
	dd	8
	dd	3
	dd	_63
	dd	_64
	dd	12
	dd	3
	dd	_65
	dd	_64
	dd	16
	dd	3
	dd	_66
	dd	_64
	dd	20
	dd	3
	dd	_67
	dd	_64
	dd	24
	dd	6
	dd	_68
	dd	_69
	dd	16
	dd	6
	dd	_70
	dd	_69
	dd	20
	dd	6
	dd	_71
	dd	_72
	dd	48
	dd	6
	dd	_73
	dd	_69
	dd	52
	dd	0
	align	4
_bb_TExplosion:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_59
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
_75:
	db	"TAlien",0
_76:
	db	"orgx",0
_77:
	db	"lr",0
_78:
	db	"Alien",0
_80:
	db	"IMGFrame",0
_81:
	db	"IMGFrameTimer",0
_82:
	db	"shoottimer",0
_83:
	db	"shoottime",0
_84:
	db	"Shoot",0
_85:
	db	"BlowUp",0
	align	4
_74:
	dd	2
	dd	_75
	dd	3
	dd	_65
	dd	_64
	dd	8
	dd	3
	dd	_66
	dd	_64
	dd	12
	dd	3
	dd	_76
	dd	_64
	dd	16
	dd	3
	dd	_77
	dd	_64
	dd	20
	dd	3
	dd	_78
	dd	_79
	dd	24
	dd	3
	dd	_80
	dd	_64
	dd	28
	dd	3
	dd	_81
	dd	_62
	dd	32
	dd	3
	dd	_82
	dd	_64
	dd	36
	dd	3
	dd	_83
	dd	_64
	dd	40
	dd	6
	dd	_68
	dd	_69
	dd	16
	dd	6
	dd	_70
	dd	_69
	dd	20
	dd	6
	dd	_71
	dd	_72
	dd	48
	dd	6
	dd	_73
	dd	_69
	dd	52
	dd	6
	dd	_84
	dd	_69
	dd	56
	dd	6
	dd	_85
	dd	_69
	dd	60
	dd	0
	align	4
_bb_TAlien:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_74
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
_87:
	db	"TPlayer",0
_88:
	db	"HP",0
_89:
	db	"Mobile",0
_90:
	db	"Hit",0
_91:
	db	"Die",0
	align	4
_86:
	dd	2
	dd	_87
	dd	3
	dd	_65
	dd	_64
	dd	8
	dd	3
	dd	_66
	dd	_64
	dd	12
	dd	3
	dd	_88
	dd	_64
	dd	16
	dd	3
	dd	_89
	dd	_64
	dd	20
	dd	6
	dd	_68
	dd	_69
	dd	16
	dd	6
	dd	_70
	dd	_69
	dd	20
	dd	6
	dd	_71
	dd	_69
	dd	48
	dd	6
	dd	_73
	dd	_69
	dd	52
	dd	6
	dd	_84
	dd	_69
	dd	56
	dd	6
	dd	_90
	dd	_69
	dd	60
	dd	6
	dd	_91
	dd	_69
	dd	64
	dd	0
	align	4
_bb_TPlayer:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_86
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
_93:
	db	"TBullet",0
_94:
	db	"direction",0
_95:
	db	"speed",0
_96:
	db	"par",0
	align	4
_92:
	dd	2
	dd	_93
	dd	3
	dd	_65
	dd	_64
	dd	8
	dd	3
	dd	_66
	dd	_64
	dd	12
	dd	3
	dd	_94
	dd	_64
	dd	16
	dd	3
	dd	_95
	dd	_64
	dd	20
	dd	3
	dd	_96
	dd	_64
	dd	24
	dd	6
	dd	_68
	dd	_69
	dd	16
	dd	6
	dd	_70
	dd	_69
	dd	20
	dd	6
	dd	_71
	dd	_72
	dd	48
	dd	6
	dd	_73
	dd	_69
	dd	52
	dd	0
	align	4
_bb_TBullet:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_92
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
_198:
	db	"D:/KIDS/Aarons Programs/Source/BlitzMax/SpaceInvaders/Init.bmx",0
	align	4
_197:
	dd	_198
	dd	17
	dd	1
	align	4
_199:
	dd	_198
	dd	18
	dd	1
	align	4
_200:
	dd	0
	align	4
_202:
	dd	_198
	dd	19
	dd	1
	align	4
_203:
	dd	_198
	dd	20
	dd	1
	align	4
_204:
	dd	_198
	dd	21
	dd	1
	align	4
_205:
	dd	_198
	dd	24
	dd	1
	align	4
_206:
	dd	_198
	dd	27
	dd	1
	align	4
_209:
	dd	_198
	dd	28
	dd	1
	align	4
_212:
	dd	_198
	dd	29
	dd	1
	align	4
_215:
	dd	_198
	dd	36
	dd	1
_216:
	db	"i",0
	align	4
_219:
	dd	_198
	dd	37
	dd	1
	align	4
_221:
	dd	_198
	dd	38
	dd	1
	align	4
_222:
	dd	_198
	dd	39
	dd	1
	align	4
_223:
	dd	_198
	dd	44
	dd	1
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	77,101,100,105,97,92,66,71,46,112,110,103
	align	4
_226:
	dd	_198
	dd	45
	dd	1
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	77,101,100,105,97,92,105,110,116,114,111,46,112,110,103
	align	4
_229:
	dd	_198
	dd	46
	dd	1
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	77,101,100,105,97,92,112,108,97,121,101,114,46,112,110,103
	align	4
_232:
	dd	_198
	dd	47
	dd	1
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	77,101,100,105,97,92,112,114,101,115,115,95,114,101,116,117
	dw	114,110,46,112,110,103
	align	4
_235:
	dd	_198
	dd	50
	dd	1
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	77,101,100,105,97,92,97,108,105,101,110,49,46,112,110,103
	align	4
_238:
	dd	_198
	dd	51
	dd	1
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	77,101,100,105,97,92,97,108,105,101,110,50,46,112,110,103
	align	4
_241:
	dd	_198
	dd	52
	dd	1
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	77,101,100,105,97,92,97,108,105,101,110,51,46,112,110,103
	align	4
_244:
	dd	_198
	dd	53
	dd	1
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	77,101,100,105,97,92,97,108,105,101,110,52,46,112,110,103
	align	4
_247:
	dd	_198
	dd	54
	dd	1
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	77,101,100,105,97,92,101,120,112,108,111,115,105,111,110,46
	dw	112,110,103
	align	4
_250:
	dd	_198
	dd	57
	dd	1
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	77,101,100,105,97,92,102,105,114,101,46,119,97,118
	align	4
_253:
	dd	_198
	dd	58
	dd	1
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	77,101,100,105,97,92,98,111,111,109,46,119,97,118
	align	4
_256:
	dd	_198
	dd	59
	dd	1
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	77,101,100,105,97,92,109,117,115,105,99,46,111,103,103
	align	4
_259:
	dd	_198
	dd	442
	dd	1
_312:
	db	"Self",0
_313:
	db	":TExplosion",0
	align	4
_311:
	dd	1
	dd	_68
	dd	2
	dd	_312
	dd	_313
	dd	-4
	dd	0
_337:
	db	"bx",0
_338:
	db	"by",0
_339:
	db	"bsize",0
	align	4
_336:
	dd	1
	dd	_71
	dd	2
	dd	_312
	dd	_313
	dd	-4
	dd	2
	dd	_337
	dd	_64
	dd	-8
	dd	2
	dd	_338
	dd	_64
	dd	-12
	dd	2
	dd	_339
	dd	_64
	dd	-16
	dd	0
	align	4
_315:
	dd	_198
	dd	78
	dd	3
	align	4
_316:
	dd	_198
	dd	79
	dd	3
	align	4
_320:
	dd	_198
	dd	80
	dd	3
	align	4
_324:
	dd	_198
	dd	81
	dd	3
	align	4
_328:
	dd	_198
	dd	82
	dd	3
	align	4
_332:
	dd	_198
	dd	83
	dd	3
	align	4
_378:
	dd	1
	dd	_73
	dd	2
	dd	_312
	dd	_313
	dd	-4
	dd	0
	align	4
_340:
	dd	_198
	dd	87
	dd	3
	align	4
_344:
	dd	_198
	dd	87
	dd	15
	align	4
_345:
	dd	_198
	dd	88
	dd	3
	align	4
_352:
	dd	_198
	dd	89
	dd	3
	align	4
_353:
	dd	_198
	dd	90
	dd	3
	align	4
_1098:
	dd	0x3dcccccd
	align	4
_357:
	dd	_198
	dd	91
	dd	3
	align	4
_363:
	dd	_198
	dd	92
	dd	3
	align	4
_1099:
	dd	0x40800000
	align	4
_367:
	dd	_198
	dd	93
	dd	4
	align	4
_370:
	dd	_198
	dd	94
	dd	4
	align	4
_374:
	dd	_198
	dd	94
	dd	16
	align	4
_380:
	dd	1
	dd	_68
	dd	2
	dd	_312
	dd	_279
	dd	-4
	dd	0
_471:
	db	"PX",0
_472:
	db	"PY",0
_473:
	db	"A_Type",0
	align	4
_470:
	dd	1
	dd	_71
	dd	2
	dd	_312
	dd	_279
	dd	-4
	dd	2
	dd	_471
	dd	_64
	dd	-8
	dd	2
	dd	_472
	dd	_64
	dd	-12
	dd	2
	dd	_473
	dd	_64
	dd	-16
	dd	0
	align	4
_384:
	dd	_198
	dd	106
	dd	3
	align	4
_388:
	dd	_198
	dd	107
	dd	3
	align	4
_392:
	dd	_198
	dd	108
	dd	3
	align	4
_398:
	dd	_198
	dd	109
	dd	3
	align	4
_402:
	dd	_198
	dd	110
	dd	3
	align	4
_406:
	dd	_198
	dd	111
	dd	3
	align	4
_410:
	dd	_198
	dd	112
	dd	3
	align	4
_417:
	dd	_198
	dd	114
	dd	5
	align	4
_425:
	dd	_198
	dd	115
	dd	5
	align	4
_429:
	dd	_198
	dd	117
	dd	5
	align	4
_437:
	dd	_198
	dd	118
	dd	5
	align	4
_441:
	dd	_198
	dd	120
	dd	5
	align	4
_449:
	dd	_198
	dd	121
	dd	5
	align	4
_453:
	dd	_198
	dd	123
	dd	5
	align	4
_461:
	dd	_198
	dd	124
	dd	5
	align	4
_465:
	dd	_198
	dd	126
	dd	3
	align	4
_469:
	dd	_198
	dd	127
	dd	3
	align	4
_563:
	dd	1
	dd	_73
	dd	2
	dd	_312
	dd	_279
	dd	-4
	dd	0
	align	4
_474:
	dd	_198
	dd	131
	dd	3
	align	4
_480:
	dd	_198
	dd	131
	dd	20
	align	4
_484:
	dd	_198
	dd	132
	dd	3
	align	4
_490:
	dd	_198
	dd	132
	dd	20
	align	4
_494:
	dd	_198
	dd	133
	dd	3
	align	4
_504:
	dd	_198
	dd	133
	dd	29
	align	4
_508:
	dd	_198
	dd	134
	dd	3
	align	4
_518:
	dd	_198
	dd	134
	dd	29
	align	4
_522:
	dd	_198
	dd	136
	dd	3
	align	4
_528:
	dd	_198
	dd	137
	dd	4
	align	4
_529:
	dd	_198
	dd	138
	dd	4
	align	4
_532:
	dd	_198
	dd	139
	dd	4
	align	4
_536:
	dd	_198
	dd	142
	dd	3
	align	4
_542:
	dd	_198
	dd	144
	dd	3
	align	4
_551:
	dd	_198
	dd	146
	dd	3
	align	4
_1142:
	dd	0x3d4ccccd
	align	4
_555:
	dd	_198
	dd	147
	dd	3
	align	4
_1143:
	dd	0x40400000
	align	4
_559:
	dd	_198
	dd	147
	dd	24
_575:
	db	"bullet",0
_576:
	db	"PARENT_ALIEN",0
	align	4
_574:
	dd	1
	dd	_84
	dd	2
	dd	_312
	dd	_279
	dd	-4
	dd	2
	dd	_575
	dd	_281
	dd	-8
	dd	2
	dd	_576
	dd	_64
	dd	-12
	dd	0
	align	4
_564:
	dd	_198
	dd	151
	dd	3
	align	4
_566:
	dd	_198
	dd	152
	dd	3
_591:
	db	"exp1",0
	align	4
_590:
	dd	1
	dd	_85
	dd	2
	dd	_312
	dd	_279
	dd	-4
	dd	2
	dd	_591
	dd	_313
	dd	-8
	dd	0
	align	4
_577:
	dd	_198
	dd	157
	dd	3
	align	4
_580:
	dd	_198
	dd	158
	dd	3
	align	4
_582:
	dd	_198
	dd	159
	dd	3
	align	4
_589:
	dd	_198
	dd	160
	dd	3
	align	4
_592:
	dd	1
	dd	_68
	dd	2
	dd	_312
	dd	_295
	dd	-4
	dd	0
	align	4
_610:
	dd	1
	dd	_71
	dd	2
	dd	_312
	dd	_295
	dd	-4
	dd	0
	align	4
_594:
	dd	_198
	dd	170
	dd	3
	align	4
_598:
	dd	_198
	dd	171
	dd	3
	align	4
_602:
	dd	_198
	dd	172
	dd	3
	align	4
_606:
	dd	_198
	dd	173
	dd	3
	align	4
_671:
	dd	1
	dd	_73
	dd	2
	dd	_312
	dd	_295
	dd	-4
	dd	0
	align	4
_611:
	dd	_198
	dd	178
	dd	3
	align	4
_612:
	dd	_198
	dd	180
	dd	3
	align	4
_622:
	dd	_198
	dd	180
	dd	55
	align	4
_626:
	dd	_198
	dd	181
	dd	3
	align	4
_636:
	dd	_198
	dd	181
	dd	52
	align	4
_640:
	dd	_198
	dd	182
	dd	3
	align	4
_646:
	dd	_198
	dd	182
	dd	42
	align	4
_647:
	dd	_198
	dd	182
	dd	57
	align	4
_650:
	dd	_198
	dd	183
	dd	3
	align	4
_1202:
	dd	0x40000000
	align	4
_658:
	dd	_198
	dd	183
	dd	54
	align	4
_659:
	dd	_198
	dd	183
	dd	69
	align	4
_662:
	dd	_198
	dd	186
	dd	3
	align	4
_667:
	dd	_198
	dd	188
	dd	3
	align	4
_1203:
	dd	0x3dcccccd
	align	4
_668:
	dd	_198
	dd	189
	dd	3
	align	4
_1204:
	dd	0x40066666
	align	4
_670:
	dd	_198
	dd	189
	dd	23
	align	4
_681:
	dd	1
	dd	_84
	dd	2
	dd	_312
	dd	_295
	dd	-4
	dd	2
	dd	_575
	dd	_281
	dd	-8
	dd	0
	align	4
_672:
	dd	_198
	dd	193
	dd	3
	align	4
_674:
	dd	_198
	dd	194
	dd	3
	align	4
_702:
	dd	1
	dd	_90
	dd	2
	dd	_312
	dd	_295
	dd	-4
	dd	2
	dd	_591
	dd	_313
	dd	-8
	dd	0
	align	4
_682:
	dd	_198
	dd	198
	dd	3
	align	4
_684:
	dd	_198
	dd	199
	dd	3
	align	4
_691:
	dd	_198
	dd	200
	dd	3
	align	4
_695:
	dd	_198
	dd	201
	dd	3
	align	4
_699:
	dd	_198
	dd	202
	dd	4
	align	4
_728:
	dd	1
	dd	_91
	dd	2
	dd	_312
	dd	_295
	dd	-4
	dd	2
	dd	_591
	dd	_313
	dd	-8
	dd	0
	align	4
_703:
	dd	_198
	dd	207
	dd	3
	align	4
_707:
	dd	_198
	dd	208
	dd	3
	align	4
_709:
	dd	_198
	dd	209
	dd	3
	align	4
_716:
	dd	_198
	dd	210
	dd	3
	align	4
_717:
	dd	_198
	dd	211
	dd	3
	align	4
_721:
	dd	_198
	dd	212
	dd	3
	align	4
_723:
	dd	_198
	dd	213
	dd	4
	align	4
_727:
	dd	_198
	dd	214
	dd	4
	align	4
_729:
	dd	1
	dd	_68
	dd	2
	dd	_312
	dd	_281
	dd	-4
	dd	0
_771:
	db	"parent",0
	align	4
_770:
	dd	1
	dd	_71
	dd	2
	dd	_312
	dd	_281
	dd	-4
	dd	2
	dd	_771
	dd	_64
	dd	-8
	dd	2
	dd	_471
	dd	_64
	dd	-12
	dd	2
	dd	_472
	dd	_64
	dd	-16
	dd	2
	dd	_576
	dd	_64
	dd	-20
	dd	0
	align	4
_731:
	dd	_198
	dd	227
	dd	3
	align	4
_732:
	dd	_198
	dd	228
	dd	3
	align	4
_738:
	dd	_198
	dd	230
	dd	5
	align	4
_742:
	dd	_198
	dd	231
	dd	5
	align	4
_746:
	dd	_198
	dd	232
	dd	5
	align	4
_750:
	dd	_198
	dd	233
	dd	5
	align	4
_754:
	dd	_198
	dd	235
	dd	5
	align	4
_758:
	dd	_198
	dd	236
	dd	5
	align	4
_762:
	dd	_198
	dd	237
	dd	5
	align	4
_766:
	dd	_198
	dd	238
	dd	5
	align	4
_873:
	dd	1
	dd	_73
	dd	2
	dd	_312
	dd	_281
	dd	-4
	dd	2
	dd	_576
	dd	_64
	dd	-8
	dd	0
	align	4
_772:
	dd	_198
	dd	245
	dd	3
	align	4
_776:
	dd	_198
	dd	246
	dd	4
	align	4
_781:
	dd	_198
	dd	248
	dd	4
	align	4
_785:
	dd	_198
	dd	251
	dd	3
	align	4
_789:
	dd	_198
	dd	252
	dd	4
	align	4
_802:
	dd	_198
	dd	253
	dd	5
	align	4
_812:
	dd	_198
	dd	254
	dd	6
	align	4
_813:
	dd	_198
	dd	255
	dd	6
	align	4
_816:
	dd	_198
	dd	257
	dd	6
	align	4
_819:
	dd	_198
	dd	262
	dd	3
	align	4
_824:
	dd	_198
	dd	263
	dd	4
	align	4
_834:
	dd	_198
	dd	264
	dd	5
	align	4
_835:
	dd	_198
	dd	265
	dd	5
	align	4
_838:
	dd	_198
	dd	266
	dd	5
	align	4
_841:
	dd	_198
	dd	270
	dd	3
	align	4
_845:
	dd	_198
	dd	271
	dd	4
	align	4
_848:
	dd	_198
	dd	273
	dd	3
	align	4
_852:
	dd	_198
	dd	274
	dd	4
	align	4
_855:
	dd	_198
	dd	275
	dd	4
	align	4
_1270:
	dd	0x3dcccccd
	align	4
_856:
	dd	_198
	dd	276
	dd	4
	align	4
_858:
	dd	_198
	dd	277
	dd	5
	align	4
_859:
	dd	_198
	dd	281
	dd	3
	align	4
_860:
	dd	_198
	dd	282
	dd	3
	align	4
_865:
	dd	_198
	dd	283
	dd	3
	align	4
_866:
	dd	_198
	dd	284
	dd	3
	align	4
_871:
	dd	_198
	dd	285
	dd	3
	align	4
_872:
	dd	_198
	dd	286
	dd	3
_880:
	db	"enableMinimize",0
_881:
	db	"hWnd",0
_882:
	db	"l",0
_883:
	db	"tmp",0
	align	4
_879:
	dd	1
	dd	_880
	dd	2
	dd	_881
	dd	_882
	dd	-8
	dd	2
	dd	_883
	dd	_882
	dd	-16
	dd	0
	align	4
_874:
	dd	_198
	dd	313
	dd	2
	align	4
_876:
	dd	_198
	dd	314
	dd	2
	align	4
_877:
	dd	_198
	dd	315
	dd	2
	align	4
_878:
	dd	_198
	dd	316
	dd	2
_896:
	db	"SetIcon",0
_897:
	db	"iconname",0
_898:
	db	"$",0
_899:
	db	"TheWindow",0
_900:
	db	"icon",0
_901:
	db	"WM_SETICON",0
_902:
	db	"ICON_SMALL",0
_903:
	db	"ICON_BIG",0
	align	4
_895:
	dd	1
	dd	_896
	dd	2
	dd	_897
	dd	_898
	dd	-4
	dd	2
	dd	_899
	dd	_64
	dd	-8
	dd	2
	dd	_900
	dd	_64
	dd	-12
	dd	2
	dd	_901
	dd	_64
	dd	-16
	dd	2
	dd	_902
	dd	_64
	dd	-20
	dd	2
	dd	_903
	dd	_64
	dd	-24
	dd	0
	align	4
_884:
	dd	_198
	dd	322
	dd	2
	align	4
_888:
	dd	_198
	dd	323
	dd	2
	align	4
_890:
	dd	_198
	dd	324
	dd	2
	align	4
_892:
	dd	_198
	dd	325
	dd	2
	align	4
_894:
	dd	_198
	dd	326
	dd	2
_916:
	db	"RectsOverlap",0
_917:
	db	"x0",0
_918:
	db	"y0",0
_919:
	db	"w0",0
_920:
	db	"h0",0
_921:
	db	"x2",0
_922:
	db	"y2",0
_923:
	db	"w2",0
_924:
	db	"h2",0
	align	4
_915:
	dd	1
	dd	_916
	dd	2
	dd	_917
	dd	_64
	dd	-4
	dd	2
	dd	_918
	dd	_64
	dd	-8
	dd	2
	dd	_919
	dd	_64
	dd	-12
	dd	2
	dd	_920
	dd	_64
	dd	-16
	dd	2
	dd	_921
	dd	_64
	dd	-20
	dd	2
	dd	_922
	dd	_64
	dd	-24
	dd	2
	dd	_923
	dd	_64
	dd	-28
	dd	2
	dd	_924
	dd	_64
	dd	-32
	dd	0
	align	4
_904:
	dd	_198
	dd	332
	dd	2
	align	4
_908:
	dd	_198
	dd	332
	dd	43
	align	4
_909:
	dd	_198
	dd	333
	dd	2
	align	4
_913:
	dd	_198
	dd	333
	dd	43
	align	4
_914:
	dd	_198
	dd	334
	dd	2
_940:
	db	"ShowLevelUp",0
_941:
	db	"lv",0
_942:
	db	"timer",0
	align	4
_939:
	dd	1
	dd	_940
	dd	2
	dd	_941
	dd	_64
	dd	-4
	dd	2
	dd	_942
	dd	_62
	dd	-8
	dd	2
	dd	_65
	dd	_64
	dd	-12
	dd	0
	align	4
_925:
	dd	_198
	dd	339
	dd	1
	align	4
_927:
	dd	_198
	dd	340
	dd	1
	align	4
_929:
	dd	_198
	dd	350
	dd	2
	align	4
_930:
	dd	_198
	dd	342
	dd	3
	align	4
_931:
	dd	_198
	dd	344
	dd	3
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	76,101,118,101,108,32
	align	4
_932:
	dd	_198
	dd	346
	dd	3
	align	4
_933:
	dd	_198
	dd	347
	dd	3
	align	4
_1321:
	dd	0x3f000000
	align	4
_934:
	dd	_198
	dd	348
	dd	3
	align	4
_936:
	dd	_198
	dd	348
	dd	21
	align	4
_937:
	dd	_198
	dd	349
	dd	3
	align	4
_1322:
	dd	0x43480000
	align	4
_938:
	dd	_198
	dd	351
	dd	2
_958:
	db	"GameOver",0
	align	4
_957:
	dd	1
	dd	_958
	dd	2
	dd	_942
	dd	_62
	dd	-4
	dd	2
	dd	_65
	dd	_64
	dd	-8
	dd	0
	align	4
_943:
	dd	_198
	dd	356
	dd	1
	align	4
_945:
	dd	_198
	dd	357
	dd	1
	align	4
_947:
	dd	_198
	dd	368
	dd	2
	align	4
_948:
	dd	_198
	dd	359
	dd	3
	align	4
_949:
	dd	_198
	dd	362
	dd	3
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	71,97,109,101,32,79,118,101,114,46,46,46
	align	4
_950:
	dd	_198
	dd	364
	dd	3
	align	4
_951:
	dd	_198
	dd	365
	dd	3
	align	4
_1326:
	dd	0x3f000000
	align	4
_952:
	dd	_198
	dd	366
	dd	3
	align	4
_954:
	dd	_198
	dd	366
	dd	21
	align	4
_955:
	dd	_198
	dd	367
	dd	3
	align	4
_1327:
	dd	0x43480000
	align	4
_956:
	dd	_198
	dd	370
	dd	1
_1045:
	db	"MainMenu",0
_1046:
	db	"play",0
_1047:
	db	"flasher",0
_1048:
	db	"Datastorage",0
_1049:
	db	"AA",0
	align	4
_1044:
	dd	1
	dd	_1045
	dd	2
	dd	_1046
	dd	_64
	dd	-4
	dd	2
	dd	_1047
	dd	_62
	dd	-8
	dd	2
	dd	_66
	dd	_64
	dd	-12
	dd	2
	dd	_65
	dd	_64
	dd	-16
	dd	2
	dd	_1048
	dd	_64
	dd	-20
	dd	2
	dd	_78
	dd	_279
	dd	-24
	dd	2
	dd	_1049
	dd	_279
	dd	-28
	dd	0
	align	4
_959:
	dd	_198
	dd	375
	dd	1
	align	4
_961:
	dd	_198
	dd	376
	dd	1
	align	4
_963:
	dd	_198
	dd	378
	dd	2
	align	4
_964:
	dd	_198
	dd	379
	dd	2
	align	4
_965:
	dd	_198
	dd	380
	dd	2
	align	4
_966:
	dd	_198
	dd	381
	dd	2
	align	4
_1331:
	dd	0x42c80000
	align	4
_967:
	dd	_198
	dd	382
	dd	2
	align	4
_970:
	dd	_198
	dd	383
	dd	2
	align	4
_973:
	dd	_198
	dd	384
	dd	2
	align	4
_976:
	dd	_198
	dd	385
	dd	2
	align	4
_977:
	dd	_198
	dd	386
	dd	2
	align	4
_980:
	dd	_198
	dd	387
	dd	3
	align	4
_983:
	dd	_198
	dd	388
	dd	4
	align	4
_985:
	dd	_198
	dd	389
	dd	4
	align	4
_990:
	dd	_198
	dd	390
	dd	4
	align	4
_996:
	dd	_198
	dd	391
	dd	4
	align	4
_1002:
	dd	_198
	dd	392
	dd	5
	align	4
_1004:
	dd	_198
	dd	393
	dd	5
	align	4
_1011:
	dd	_198
	dd	418
	dd	2
	align	4
_1012:
	dd	_198
	dd	399
	dd	3
	align	4
_1013:
	dd	_198
	dd	400
	dd	3
	align	4
_1014:
	dd	_198
	dd	401
	dd	3
	align	4
_1015:
	dd	_198
	dd	402
	dd	3
	align	4
_1017:
	dd	_198
	dd	403
	dd	4
	align	4
_1018:
	dd	_198
	dd	407
	dd	3
	align	4
_1028:
	dd	_198
	dd	408
	dd	4
	align	4
_1032:
	dd	_198
	dd	411
	dd	3
	align	4
_1034:
	dd	_198
	dd	411
	dd	24
	align	4
_1035:
	dd	_198
	dd	413
	dd	3
	align	4
_1037:
	dd	_198
	dd	413
	dd	21
	align	4
_1038:
	dd	_198
	dd	415
	dd	3
	align	4
_1332:
	dd	0x3cf5c28f
	align	4
_1039:
	dd	_198
	dd	416
	dd	3
	align	4
_1333:
	dd	0x40000000
	align	4
_1041:
	dd	_198
	dd	416
	dd	18
	align	4
_1042:
	dd	_198
	dd	417
	dd	3
	align	4
_1043:
	dd	_198
	dd	419
	dd	2
_1065:
	db	"Win",0
	align	4
_1064:
	dd	1
	dd	_1065
	dd	2
	dd	_942
	dd	_62
	dd	-4
	dd	2
	dd	_65
	dd	_64
	dd	-8
	dd	0
	align	4
_1050:
	dd	_198
	dd	424
	dd	2
	align	4
_1052:
	dd	_198
	dd	425
	dd	2
	align	4
_1054:
	dd	_198
	dd	436
	dd	2
	align	4
_1055:
	dd	_198
	dd	427
	dd	3
	align	4
_1056:
	dd	_198
	dd	430
	dd	3
	align	4
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	26
	dw	69,97,114,116,104,32,105,115,32,115,97,118,101,100,33,32
	dw	71,114,101,97,116,32,106,111,98,33
	align	4
_1057:
	dd	_198
	dd	432
	dd	3
	align	4
_1058:
	dd	_198
	dd	433
	dd	3
	align	4
_1358:
	dd	0x3f000000
	align	4
_1059:
	dd	_198
	dd	434
	dd	3
	align	4
_1061:
	dd	_198
	dd	434
	dd	21
	align	4
_1062:
	dd	_198
	dd	435
	dd	3
	align	4
_1359:
	dd	0x43480000
	align	4
_1063:
	dd	_198
	dd	438
	dd	2
