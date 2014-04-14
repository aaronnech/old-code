	format	MS COFF
	extrn	_ExtractIconA@12
	extrn	_SendMessageA@16
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
	extrn	_bbEmptyString
	extrn	_bbEnd
	extrn	_bbFloatToInt
	extrn	_bbGCFree
	extrn	_bbIntTypeTag
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
	extrn	_brl_filesystem_CloseFile
	extrn	_brl_filesystem_OpenFile
	extrn	_brl_filesystem_ReadFile
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_GraphicsHeight
	extrn	_brl_graphics_GraphicsWidth
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_linkedlist_ListAddLast
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_ImageHeight
	extrn	_brl_max2d_ImageWidth
	extrn	_brl_max2d_ImagesCollide
	extrn	_brl_max2d_LoadImage
	extrn	_brl_polledinput_AppTerminate
	extrn	_brl_polledinput_KeyDown
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_standardio_Print
	extrn	_brl_stream_Eof
	extrn	_brl_stream_ReadInt
	extrn	_brl_stream_ReadString
	extrn	_brl_stream_WriteInt
	extrn	_brl_stream_WriteString
	extrn	_brl_system_Confirm
	public	__bb_TBrick_Create
	public	__bb_TBrick_Delete
	public	__bb_TBrick_New
	public	__bb_TBrick_Update
	public	__bb_THSdata_Create
	public	__bb_THSdata_Delete
	public	__bb_THSdata_New
	public	__bb_main
	public	_bb_AddToHS
	public	_bb_BrickList
	public	_bb_HSdataList
	public	_bb_LEVEL
	public	_bb_LIVES
	public	_bb_Lost
	public	_bb_MainMenu
	public	_bb_POINTS
	public	_bb_PhraseHS
	public	_bb_PhraseLevel
	public	_bb_QUIT
	public	_bb_RectsOverlap
	public	_bb_RemoveFromHS
	public	_bb_ResetGame
	public	_bb_SetIcon
	public	_bb_TBrick
	public	_bb_THSdata
	public	_bb_UpdateBall
	public	_bb_UpdateBricks
	public	_bb_UpdateLives
	public	_bb_UpdatePlayer
	public	_bb_Won
	public	_bb_ball
	public	_bb_ball_go
	public	_bb_ballspeed
	public	_bb_ballx
	public	_bb_ballx_dir
	public	_bb_bally
	public	_bb_bally_dir
	public	_bb_bgmusic
	public	_bb_bounce
	public	_bb_brick_1
	public	_bb_brick_2
	public	_bb_brick_3
	public	_bb_brick_4
	public	_bb_brick_coll
	public	_bb_brickxy
	public	_bb_paddle
	public	_bb_play_bg
	public	_bb_playerspeed
	public	_bb_playerx
	public	_bb_playery
	public	_bb_title_img
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	cmp	dword [_342],0
	je	_343
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_343:
	mov	dword [_342],1
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_304
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	mov	dword [_283],_284
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
	push	_bb_TBrick
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_THSdata
	call	_bbObjectRegisterType
	add	esp,4
	push	_198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_200
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_205]
	and	eax,1
	cmp	eax,0
	jne	_206
	push	-1
	push	_18
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_title_img],eax
	or	dword [_205],1
_206:
	push	_207
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_205]
	and	eax,2
	cmp	eax,0
	jne	_209
	push	-1
	push	_19
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_play_bg],eax
	or	dword [_205],2
_209:
	push	_210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_205]
	and	eax,4
	cmp	eax,0
	jne	_212
	push	-1
	push	_20
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_paddle],eax
	or	dword [_205],4
_212:
	push	_213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_205]
	and	eax,8
	cmp	eax,0
	jne	_219
	push	-1
	push	_21
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_brick_1],eax
	or	dword [_205],8
_219:
	push	_220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_205]
	and	eax,16
	cmp	eax,0
	jne	_222
	push	-1
	push	_22
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_brick_2],eax
	or	dword [_205],16
_222:
	push	_223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_205]
	and	eax,32
	cmp	eax,0
	jne	_225
	push	-1
	push	_23
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_brick_3],eax
	or	dword [_205],32
_225:
	push	_226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_205]
	and	eax,64
	cmp	eax,0
	jne	_228
	push	-1
	push	_24
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_brick_4],eax
	or	dword [_205],64
_228:
	push	_229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_205]
	and	eax,128
	cmp	eax,0
	jne	_232
	push	6
	push	7
	push	2
	push	_230
	call	_bbArrayNew
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_brickxy],eax
	or	dword [_205],128
_232:
	push	_233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_205]
	and	eax,256
	cmp	eax,0
	jne	_235
	push	-1
	push	_25
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_ball],eax
	or	dword [_205],256
_235:
	push	_236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_205]
	and	eax,512
	cmp	eax,0
	jne	_245
	push	0
	push	_26
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_bounce],eax
	or	dword [_205],512
_245:
	push	_246
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_205]
	and	eax,1024
	cmp	eax,0
	jne	_248
	push	1
	push	_27
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_bgmusic],eax
	or	dword [_205],1024
_248:
	push	_249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_205]
	and	eax,2048
	cmp	eax,0
	jne	_251
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_BrickList],eax
	or	dword [_205],2048
_251:
	push	_252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_205]
	and	eax,4096
	cmp	eax,0
	jne	_254
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_HSdataList],eax
	or	dword [_205],4096
_254:
	push	_255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	43
	push	_28
	call	_bb_AddToHS
	add	esp,8
	push	_256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	34
	push	_29
	call	_bb_AddToHS
	add	esp,8
	push	_257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	22
	push	_30
	call	_bb_AddToHS
	add	esp,8
	push	_258
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_31
	call	_brl_filesystem_ReadFile
	add	esp,4
	mov	dword [ebp-4],eax
	push	_260
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_32
_34:
	push	_261
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_THSdata
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_263
	call	_brl_blitz_NullObjectError
_263:
	push	dword [ebp-4]
	call	_brl_stream_ReadInt
	add	esp,4
	push	eax
	push	3
	push	dword [ebp-4]
	call	_brl_stream_ReadString
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,12
	mov	dword [ebp-8],eax
_32:
	push	dword [ebp-4]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_34
_33:
	push	_265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_brl_filesystem_CloseFile
	add	esp,4
	push	_266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	edi,dword [_bb_HSdataList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_270
	call	_brl_blitz_NullObjectError
_270:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_35
_37:
	cmp	ebx,_bbNullObject
	jne	_275
	call	_brl_blitz_NullObjectError
_275:
	push	_bb_THSdata
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	je	_35
	push	_276
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_278
	call	_brl_blitz_NullObjectError
_278:
	push	dword [esi+12]
	call	_brl_standardio_Print
	add	esp,4
	push	_279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_281
	call	_brl_blitz_NullObjectError
_281:
	push	dword [esi+8]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_standardio_Print
	add	esp,4
_35:
	cmp	ebx,_bbNullObject
	jne	_273
	call	_brl_blitz_NullObjectError
_273:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_37
_36:
	push	_282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_69:
	push	_285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_71:
	push	_286
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_73:
	push	_287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_75:
	push	_288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_77:
	push	_289
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_79:
	push	_290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_81:
	push	_291
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_83:
	push	_292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_85:
	push	_293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_87:
	push	_294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_89:
	push	_295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_91:
	push	_296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_93:
	push	_297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_95:
	push	_298
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_97:
	push	_299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_99:
	push	_300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_101:
	push	_301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_103:
	push	_302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_105:
	push	_303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_107:
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
__bb_TBrick_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_345
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TBrick
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	mov	ebx,0
_133:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBrick_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_136:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_350
	push	eax
	call	_bbGCFree
	add	esp,4
_350:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
_348:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBrick_Create:
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
	push	_405
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [_bb_BrickList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_354
	call	_brl_blitz_NullObjectError
_354:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+8],eax
	push	_356
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_358
	call	_brl_blitz_NullObjectError
_358:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+12],eax
	push	_360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_362
	call	_brl_blitz_NullObjectError
_362:
	mov	eax,dword [ebp-16]
	mov	dword [ebx+20],eax
	push	_364
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_366
	call	_brl_blitz_NullObjectError
_366:
	mov	eax,dword [ebx+20]
	cmp	eax,1
	je	_369
	cmp	eax,2
	je	_370
	cmp	eax,3
	je	_371
	cmp	eax,4
	je	_372
	jmp	_368
_369:
	push	_373
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_375
	call	_brl_blitz_NullObjectError
_375:
	mov	ebx,dword [_bb_brick_1]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_380
	push	eax
	call	_bbGCFree
	add	esp,4
_380:
	mov	dword [esi+16],ebx
	jmp	_368
_370:
	push	_381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_383
	call	_brl_blitz_NullObjectError
_383:
	mov	ebx,dword [_bb_brick_2]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_388
	push	eax
	call	_bbGCFree
	add	esp,4
_388:
	mov	dword [esi+16],ebx
	jmp	_368
_371:
	push	_389
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_391
	call	_brl_blitz_NullObjectError
_391:
	mov	ebx,dword [_bb_brick_3]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_396
	push	eax
	call	_bbGCFree
	add	esp,4
_396:
	mov	dword [esi+16],ebx
	jmp	_368
_372:
	push	_397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_399
	call	_brl_blitz_NullObjectError
_399:
	mov	ebx,dword [_bb_brick_4]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_404
	push	eax
	call	_bbGCFree
	add	esp,4
_404:
	mov	dword [esi+16],ebx
_368:
	mov	ebx,_bbNullObject
_142:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBrick_Update:
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
	push	_416
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_409
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_411
	call	_brl_blitz_NullObjectError
_411:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_413
	call	_brl_blitz_NullObjectError
_413:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_415
	call	_brl_blitz_NullObjectError
_415:
	push	0
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [esi+8]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	push	dword [edi+16]
	call	_brl_max2d_DrawImage
	add	esp,16
	mov	ebx,0
_145:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_THSdata_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_418
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_THSdata
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	ebx,0
_148:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_THSdata_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_151:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_421
	push	eax
	call	_bbGCFree
	add	esp,4
_421:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
_419:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_THSdata_Create:
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
	push	_423
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_422
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [_bb_HSdataList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	ebx,_bbNullObject
_156:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_AddToHS:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	push	ebp
	push	_431
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_426
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	1
	push	_31
	call	_brl_filesystem_OpenFile
	add	esp,12
	mov	dword [ebp-12],eax
	push	_428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [ebp-12]
	call	_brl_stream_WriteString
	add	esp,8
	push	_429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	push	dword [ebp-12]
	call	_brl_stream_WriteInt
	add	esp,8
	push	_430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_filesystem_CloseFile
	add	esp,4
	mov	ebx,0
_160:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_RemoveFromHS:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_434
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	mov	ebx,0
_163:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_PhraseHS:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	dword [ebp-4],0
	mov	dword [ebp-8],_bbEmptyString
	mov	dword [ebp-12],_bbNullObject
	push	ebp
	push	_445
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_436
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	mov	dword [ebp-8],_bbEmptyString
	push	_439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_31
	call	_brl_filesystem_ReadFile
	add	esp,4
	mov	dword [ebp-12],eax
	push	_441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_38
_40:
	push	_442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	push	dword [ebp-12]
	call	_brl_stream_ReadString
	add	esp,8
	mov	dword [ebp-8],eax
	push	_443
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_stream_ReadInt
	add	esp,4
	mov	dword [ebp-4],eax
_38:
	push	dword [ebp-12]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_40
_39:
	push	_444
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_filesystem_CloseFile
	add	esp,4
	mov	ebx,0
_165:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_UpdateLives:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	dword [ebp-4],0
	push	ebp
	push	_456
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_LIVES],0
	jne	_448
	push	_449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Lost
	jmp	_450
_448:
	push	_451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	mov	dword [ebp-4],1
	mov	ebx,dword [_bb_LIVES]
	jmp	_453
_43:
	push	_455
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	1106247680
	mov	eax,dword [ebp-4]
	imul	eax,25
	add	eax,620
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_ball]
	call	_brl_max2d_DrawImage
	add	esp,16
_41:
	add	dword [ebp-4],1
_453:
	cmp	dword [ebp-4],ebx
	jle	_43
_42:
_450:
	mov	ebx,0
_167:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Won:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	push	ebp
	push	_487
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_458
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-4],eax
	push	_460
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	push	_462
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_LEVEL],1
	push	_463
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_LEVEL],21
	jge	_464
	push	_465
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_44
_46:
	push	_466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_AppTerminate
	cmp	eax,0
	je	_468
	push	_469
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	_47
	call	_brl_system_Confirm
	add	esp,8
	mov	dword [ebp-8],eax
	push	_470
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],0
	je	_471
	push	_472
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
_471:
_468:
	push	_473
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_graphics_GraphicsHeight
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_graphics_GraphicsWidth
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	sub	eax,100
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_LEVEL]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_48
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_474
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_44:
	call	_bbMilliSecs
	mov	edx,dword [ebp-4]
	add	edx,3000
	cmp	eax,edx
	jl	_46
_45:
	jmp	_475
_464:
	push	_476
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_49
_51:
	push	_477
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_AppTerminate
	cmp	eax,0
	je	_479
	push	_480
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	_47
	call	_brl_system_Confirm
	add	esp,8
	mov	dword [ebp-8],eax
	push	_481
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],0
	je	_482
	push	_483
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
_482:
_479:
	push	_484
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_graphics_GraphicsHeight
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_graphics_GraphicsWidth
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	sub	eax,100
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	push	_52
	call	_brl_max2d_DrawText
	add	esp,12
	push	_485
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_49:
	call	_bbMilliSecs
	mov	edx,dword [ebp-4]
	add	edx,3000
	cmp	eax,edx
	jl	_51
_50:
_475:
	push	_486
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_bb_ResetGame
	add	esp,4
	mov	ebx,0
_169:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Lost:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	dword [ebp-4],0
	push	ebp
	push	_498
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_491
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-4],eax
	push	_493
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_53
_55:
	push	_494
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_495
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_graphics_GraphicsHeight
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_graphics_GraphicsWidth
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	sub	eax,100
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	push	_56
	call	_brl_max2d_DrawText
	add	esp,12
	push	_496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_53:
	call	_bbMilliSecs
	mov	edx,dword [ebp-4]
	add	edx,3000
	cmp	eax,edx
	jl	_55
_54:
	push	_497
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_MainMenu],1
	mov	ebx,0
_171:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	push	_511
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_500
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-20]
	add	eax,dword [ebp-28]
	cmp	edx,eax
	setg	al
	movzx	eax,al
	cmp	eax,0
	jne	_501
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-12]
	cmp	eax,dword [ebp-20]
	setl	al
	movzx	eax,al
_501:
	cmp	eax,0
	je	_503
	push	_504
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_181
_503:
	push	_505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-24]
	add	eax,dword [ebp-32]
	cmp	edx,eax
	setg	al
	movzx	eax,al
	cmp	eax,0
	jne	_506
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-16]
	cmp	eax,dword [ebp-24]
	setl	al
	movzx	eax,al
_506:
	cmp	eax,0
	je	_508
	push	_509
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_181
_508:
	push	_510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
_181:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_UpdateBricks:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_534
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	edi,dword [_bb_BrickList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_525
	call	_brl_blitz_NullObjectError
_525:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_57
_59:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_530
	call	_brl_blitz_NullObjectError
_530:
	push	_bb_TBrick
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
	push	_531
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_533
	call	_brl_blitz_NullObjectError
_533:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
_57:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_528
	call	_brl_blitz_NullObjectError
_528:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_59
_58:
	mov	ebx,0
_183:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_PhraseLevel:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	dword [ebp-4],0
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	eax,ebp
	push	eax
	push	_627
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_537
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BrickList]
	cmp	ebx,_bbNullObject
	jne	_539
	call	_brl_blitz_NullObjectError
_539:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_540
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_542
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	push	_544
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_LEVEL]
	cmp	eax,1
	je	_547
	cmp	eax,2
	je	_548
	cmp	eax,3
	je	_549
	cmp	eax,4
	je	_550
	cmp	eax,5
	je	_551
	cmp	eax,6
	je	_552
	cmp	eax,7
	je	_553
	cmp	eax,8
	je	_554
	cmp	eax,9
	je	_555
	cmp	eax,10
	je	_556
	cmp	eax,11
	je	_557
	cmp	eax,12
	je	_558
	cmp	eax,13
	je	_559
	cmp	eax,14
	je	_560
	cmp	eax,15
	je	_561
	cmp	eax,16
	je	_562
	cmp	eax,17
	je	_563
	cmp	eax,18
	je	_564
	cmp	eax,19
	je	_565
	cmp	eax,20
	je	_566
	jmp	_546
_547:
	push	_567
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_70
	jmp	_546
_548:
	push	_568
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_72
	jmp	_546
_549:
	push	_569
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_74
	jmp	_546
_550:
	push	_570
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_76
	jmp	_546
_551:
	push	_571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_78
	jmp	_546
_552:
	push	_572
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_80
	jmp	_546
_553:
	push	_573
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_82
	jmp	_546
_554:
	push	_574
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_84
	jmp	_546
_555:
	push	_575
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_86
	jmp	_546
_556:
	push	_576
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_88
	jmp	_546
_557:
	push	_577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_90
	jmp	_546
_558:
	push	_578
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_92
	jmp	_546
_559:
	push	_579
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_94
	jmp	_546
_560:
	push	_580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_96
	jmp	_546
_561:
	push	_581
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_98
	jmp	_546
_562:
	push	_582
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_100
	jmp	_546
_563:
	push	_583
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_102
	jmp	_546
_564:
	push	_584
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_104
	jmp	_546
_565:
	push	_585
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_106
	jmp	_546
_566:
	push	_586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_283],_108
_546:
	push	_587
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	jmp	_589
_62:
	push	_590
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	dword [ebp-16],1
	jmp	_592
_65:
	push	_593
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_283]
	mov	ebx,dword [esi]
	cmp	ebx,0
	jne	_596
	call	_brl_blitz_OutOfDataError
_596:
	mov	ebx,dword [ebx]
	add	esi,4
	push	ebx
	push	esi
	call	_bbConvertToInt
	add	esp,8
	mov	dword [ebp-4],eax
	add	esi,4
	movzx	eax,byte [ebx]
	cmp	eax,100
	jne	_597
	add	esi,4
_597:
	mov	dword [_283],esi
	push	_598
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	sub	esi,1
	mov	eax,dword [_bb_brickxy]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_brickxy]
	cmp	esi,dword [eax+20]
	jb	_600
	call	_brl_blitz_ArrayBoundsError
_600:
	mov	ebx,dword [ebp-12]
	sub	ebx,1
	mov	eax,dword [_bb_brickxy]
	cmp	ebx,dword [eax+24]
	jb	_602
	call	_brl_blitz_ArrayBoundsError
_602:
	mov	eax,dword [_bb_brickxy]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edx,dword [ebp-4]
	mov	dword [eax+28],edx
	push	_604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	sub	esi,1
	mov	eax,dword [_bb_brickxy]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_brickxy]
	cmp	esi,dword [eax+20]
	jb	_606
	call	_brl_blitz_ArrayBoundsError
_606:
	mov	ebx,dword [ebp-12]
	sub	ebx,1
	mov	eax,dword [_bb_brickxy]
	cmp	ebx,dword [eax+24]
	jb	_608
	call	_brl_blitz_ArrayBoundsError
_608:
	mov	eax,dword [_bb_brickxy]
	add	esi,ebx
	mov	eax,dword [eax+esi*4+28]
	cmp	eax,1
	je	_611
	cmp	eax,2
	je	_612
	cmp	eax,3
	je	_613
	cmp	eax,4
	je	_614
	jmp	_610
_611:
	push	_615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TBrick
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_617
	call	_brl_blitz_NullObjectError
_617:
	push	1
	mov	eax,dword [ebp-12]
	imul	eax,30
	add	eax,45
	push	eax
	mov	eax,dword [ebp-16]
	imul	eax,90
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,16
	mov	dword [ebp-8],eax
	jmp	_610
_612:
	push	_618
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TBrick
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_620
	call	_brl_blitz_NullObjectError
_620:
	push	2
	mov	eax,dword [ebp-12]
	imul	eax,30
	add	eax,45
	push	eax
	mov	eax,dword [ebp-16]
	imul	eax,90
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,16
	mov	dword [ebp-8],eax
	jmp	_610
_613:
	push	_621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TBrick
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_623
	call	_brl_blitz_NullObjectError
_623:
	push	3
	mov	eax,dword [ebp-12]
	imul	eax,30
	add	eax,45
	push	eax
	mov	eax,dword [ebp-16]
	imul	eax,90
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,16
	mov	dword [ebp-8],eax
	jmp	_610
_614:
	push	_624
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TBrick
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_626
	call	_brl_blitz_NullObjectError
_626:
	push	4
	mov	eax,dword [ebp-12]
	imul	eax,30
	add	eax,45
	push	eax
	mov	eax,dword [ebp-16]
	imul	eax,90
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,16
	mov	dword [ebp-8],eax
_610:
_63:
	add	dword [ebp-16],1
_592:
	cmp	dword [ebp-16],7
	jle	_65
_64:
_60:
	add	dword [ebp-12],1
_589:
	cmp	dword [ebp-12],6
	jle	_62
_61:
	mov	ebx,0
_185:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_UpdatePlayer:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	ebp
	push	_649
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_631
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	39
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_632
	fld	dword [_bb_playerx]
	fstp	dword [ebp-4]
	mov	ebx,800
	push	dword [_bb_paddle]
	call	_brl_max2d_ImageWidth
	add	esp,4
	sub	ebx,eax
	mov	dword [ebp+-8],ebx
	fild	dword [ebp+-8]
	fld	dword [ebp-4]
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_632:
	cmp	eax,0
	je	_634
	push	_635
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_playerx]
	fadd	dword [_bb_playerspeed]
	fstp	dword [_bb_playerx]
_634:
	push	_636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	37
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_637
	fld	dword [_bb_playerx]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_637:
	cmp	eax,0
	je	_639
	push	_640
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_playerx]
	fsub	dword [_bb_playerspeed]
	fstp	dword [_bb_playerx]
_639:
	push	_641
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	32
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_642
	mov	eax,dword [_bb_ball_go]
	cmp	eax,0
	sete	al
	movzx	eax,al
_642:
	cmp	eax,0
	je	_644
	push	_645
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_ball_go],1
	push	_646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_941]
	fstp	dword [_bb_bally_dir]
	push	_647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [_bb_ballx_dir]
_644:
	push	_648
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [_bb_playery]
	push	dword [_bb_playerx]
	push	dword [_bb_paddle]
	call	_brl_max2d_DrawImage
	add	esp,16
	mov	ebx,0
_187:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_UpdateBall:
	push	ebp
	mov	ebp,esp
	sub	esp,40
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_781
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_651
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_brick_coll],0
	push	_652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_ball_go],0
	je	_653
	push	_654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_ballx]
	fld	dword [_bb_ballx_dir]
	fmul	dword [_bb_ballspeed]
	faddp	st1,st0
	fstp	dword [_bb_ballx]
	push	_655
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_bally]
	fld	dword [_bb_bally_dir]
	fmul	dword [_bb_ballspeed]
	faddp	st1,st0
	fstp	dword [_bb_bally]
	push	_656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_bally]
	fld	dword [_950]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_657
	push	_658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [_bb_bally_dir]
	push	_659
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_bounce]
	call	_brl_audio_PlaySound
	add	esp,8
_657:
	push	_660
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_bally]
	fstp	dword [ebp-24]
	mov	ebx,600
	push	dword [_bb_ball]
	call	_brl_max2d_ImageHeight
	add	esp,4
	sub	ebx,eax
	mov	dword [ebp+-40],ebx
	fild	dword [ebp+-40]
	fld	dword [ebp-24]
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_661
	push	_662
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_ball_go],0
	push	_663
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [_bb_LIVES],1
_661:
	push	_664
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_ballx]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_665
	push	_666
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [_bb_ballx_dir]
	push	_667
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_bounce]
	call	_brl_audio_PlaySound
	add	esp,8
_665:
	push	_668
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_ballx]
	fstp	dword [ebp-28]
	mov	ebx,800
	push	dword [_bb_ball]
	call	_brl_max2d_ImageWidth
	add	esp,4
	sub	ebx,eax
	mov	dword [ebp+-40],ebx
	fild	dword [ebp+-40]
	fld	dword [ebp-28]
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
	fld	dword [_951]
	fstp	dword [_bb_ballx_dir]
	push	_671
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_bounce]
	call	_brl_audio_PlaySound
	add	esp,8
_669:
	push	_672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	fld	dword [_bb_playery]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [_bb_playerx]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	dword [_bb_paddle]
	push	0
	fld	dword [_bb_bally]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [_bb_ballx]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	dword [_bb_ball]
	call	_brl_max2d_ImagesCollide
	add	esp,32
	cmp	eax,0
	je	_673
	push	_674
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_952]
	fstp	dword [_bb_bally_dir]
	push	_675
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_ballx]
	fadd	dword [_953]
	fsub	dword [_bb_playerx]
	fadd	dword [_954]
	fdiv	dword [_955]
	fsub	dword [_956]
	fstp	dword [_bb_ballx_dir]
	push	_676
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_bounce]
	call	_brl_audio_PlaySound
	add	esp,8
_673:
	push	_677
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	eax,dword [_bb_BrickList]
	mov	dword [ebp-32],eax
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_681
	call	_brl_blitz_NullObjectError
_681:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-36],eax
	jmp	_66
_68:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_686
	call	_brl_blitz_NullObjectError
_686:
	push	_bb_TBrick
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_66
	push	_687
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_brick_coll],0
	jne	_688
	push	_689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_691
	call	_brl_blitz_NullObjectError
_691:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_693
	call	_brl_blitz_NullObjectError
_693:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_695
	call	_brl_blitz_NullObjectError
_695:
	push	dword [ebx+16]
	call	_brl_max2d_ImageHeight
	add	esp,4
	push	eax
	push	8
	push	dword [esi+12]
	push	dword [edi+8]
	push	20
	push	20
	fld	dword [_bb_bally]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [_bb_ballx]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_bb_RectsOverlap
	add	esp,32
	cmp	eax,0
	je	_696
	push	_697
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_957]
	fstp	dword [_bb_ballx_dir]
	push	_698
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BrickList]
	cmp	ebx,_bbNullObject
	jne	_700
	call	_brl_blitz_NullObjectError
_700:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_brick_coll],1
	push	_702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_bounce]
	call	_brl_audio_PlaySound
	add	esp,8
_696:
	push	_703
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	jne	_705
	call	_brl_blitz_NullObjectError
_705:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_707
	call	_brl_blitz_NullObjectError
_707:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_709
	call	_brl_blitz_NullObjectError
_709:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_711
	call	_brl_blitz_NullObjectError
_711:
	push	dword [ebx+16]
	call	_brl_max2d_ImageHeight
	add	esp,4
	push	eax
	push	8
	push	dword [esi+12]
	mov	eax,dword [ebp-16]
	mov	ebx,dword [eax+8]
	push	dword [edi+16]
	call	_brl_max2d_ImageWidth
	add	esp,4
	add	ebx,eax
	sub	ebx,8
	push	ebx
	push	20
	push	20
	fld	dword [_bb_bally]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [_bb_ballx]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_bb_RectsOverlap
	add	esp,32
	cmp	eax,0
	je	_712
	push	_713
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [_bb_ballx_dir]
	push	_714
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BrickList]
	cmp	ebx,_bbNullObject
	jne	_716
	call	_brl_blitz_NullObjectError
_716:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_717
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_brick_coll],1
	push	_718
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_bounce]
	call	_brl_audio_PlaySound
	add	esp,8
_712:
	push	_719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_721
	call	_brl_blitz_NullObjectError
_721:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_723
	call	_brl_blitz_NullObjectError
_723:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_725
	call	_brl_blitz_NullObjectError
_725:
	push	8
	push	dword [ebx+16]
	call	_brl_max2d_ImageWidth
	add	esp,4
	push	eax
	push	dword [esi+12]
	push	dword [edi+8]
	push	20
	push	20
	fld	dword [_bb_bally]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [_bb_ballx]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_bb_RectsOverlap
	add	esp,32
	cmp	eax,0
	je	_726
	push	_727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_958]
	fstp	dword [_bb_bally_dir]
	push	_728
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BrickList]
	cmp	ebx,_bbNullObject
	jne	_730
	call	_brl_blitz_NullObjectError
_730:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_brick_coll],1
	push	_732
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_bounce]
	call	_brl_audio_PlaySound
	add	esp,8
_726:
	push	_733
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-20],eax
	cmp	dword [ebp-20],_bbNullObject
	jne	_735
	call	_brl_blitz_NullObjectError
_735:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_737
	call	_brl_blitz_NullObjectError
_737:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_739
	call	_brl_blitz_NullObjectError
_739:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_741
	call	_brl_blitz_NullObjectError
_741:
	push	8
	push	dword [ebx+16]
	call	_brl_max2d_ImageWidth
	add	esp,4
	push	eax
	mov	ebx,dword [edi+12]
	push	dword [esi+16]
	call	_brl_max2d_ImageHeight
	add	esp,4
	add	ebx,eax
	sub	ebx,8
	push	ebx
	mov	eax,dword [ebp-20]
	push	dword [eax+8]
	push	20
	push	20
	fld	dword [_bb_bally]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [_bb_ballx]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_bb_RectsOverlap
	add	esp,32
	cmp	eax,0
	je	_742
	push	_743
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [_bb_bally_dir]
	push	_744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BrickList]
	cmp	ebx,_bbNullObject
	jne	_746
	call	_brl_blitz_NullObjectError
_746:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_747
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_brick_coll],1
	push	_748
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_bounce]
	call	_brl_audio_PlaySound
	add	esp,8
_742:
	push	_749
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_brick_coll],0
	je	_750
	push	_751
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_753
	call	_brl_blitz_NullObjectError
_753:
	mov	eax,dword [ebx+20]
	shl	eax,1
	add	dword [_bb_POINTS],eax
	push	_754
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_756
	call	_brl_blitz_NullObjectError
_756:
	mov	eax,dword [ebx+20]
	cmp	eax,2
	je	_759
	cmp	eax,3
	je	_760
	cmp	eax,4
	je	_761
	jmp	_758
_759:
	push	_762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_ballspeed]
	fld	dword [_959]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_763
	push	_764
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_960]
	fstp	dword [_bb_ballspeed]
_763:
	jmp	_758
_760:
	push	_765
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_ballspeed]
	fld	dword [_961]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_766
	push	_767
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_962]
	fstp	dword [_bb_ballspeed]
_766:
	jmp	_758
_761:
	push	_768
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_ballspeed]
	fld	dword [_963]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_769
	push	_770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_964]
	fstp	dword [_bb_ballspeed]
_769:
_758:
_750:
_688:
_66:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_684
	call	_brl_blitz_NullObjectError
_684:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_68
_67:
	jmp	_771
_653:
	push	_772
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_playerx]
	fstp	dword [ebp-8]
	push	dword [_bb_paddle]
	call	_brl_max2d_ImageWidth
	add	esp,4
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	fld	dword [ebp-8]
	faddp	st1,st0
	fstp	dword [ebp-8]
	fld	dword [ebp-8]
	fstp	dword [ebp-12]
	push	dword [_bb_ball]
	call	_brl_max2d_ImageWidth
	add	esp,4
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	fld	dword [ebp-12]
	fsubrp	st1,st0
	fstp	dword [ebp-12]
	fld	dword [ebp-12]
	fstp	dword [_bb_ballx]
	push	_773
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_965]
	fstp	dword [_bb_bally]
	push	_774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_bally_dir]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	jne	_775
	push	_776
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [_bb_bally_dir]
_775:
	push	_777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_ballx_dir]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	jne	_778
	push	_779
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [_bb_ballx_dir]
_778:
_771:
	push	_780
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [_bb_bally]
	push	dword [_bb_ballx]
	push	dword [_bb_ball]
	call	_brl_max2d_DrawImage
	add	esp,16
	mov	ebx,0
_189:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ResetGame:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_798
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_783
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1012]
	fstp	dword [_bb_playerx]
	push	_784
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1013]
	fstp	dword [_bb_playery]
	push	_785
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1014]
	fstp	dword [_bb_playerspeed]
	push	_786
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1015]
	fstp	dword [_bb_bally]
	push	_787
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_playerx]
	fstp	dword [ebp-8]
	push	dword [_bb_paddle]
	call	_brl_max2d_ImageWidth
	add	esp,4
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	fld	dword [ebp-8]
	faddp	st1,st0
	fstp	dword [ebp-8]
	fld	dword [ebp-8]
	fstp	dword [ebp-12]
	push	dword [_bb_ball]
	call	_brl_max2d_ImageWidth
	add	esp,4
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	fld	dword [ebp-12]
	fsubrp	st1,st0
	fstp	dword [ebp-12]
	fld	dword [ebp-12]
	fstp	dword [_bb_ballx]
	push	_788
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [_bb_bally_dir]
	push	_789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [_bb_ballx_dir]
	push	_790
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1016]
	fstp	dword [_bb_ballspeed]
	push	_791
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_ball_go],0
	push	_792
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],0
	je	_793
	push	_794
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_LEVEL],1
	push	_795
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_LIVES],5
	push	_796
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_POINTS],0
_793:
	push	_797
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_PhraseLevel
	mov	ebx,0
_192:
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
	push	_812
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_801
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
	push	_805
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],128
	push	_807
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_809
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	push	_811
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	dword [ebp-24]
	push	dword [ebp-16]
	push	dword [ebp-8]
	call	_SendMessageA@16
	mov	ebx,0
_196:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_342:
	dd	0
_305:
	db	"init",0
_306:
	db	"QUIT",0
_112:
	db	"i",0
	align	4
_bb_QUIT:
	dd	0
_307:
	db	"MainMenu",0
	align	4
_bb_MainMenu:
	dd	1
_308:
	db	"LEVEL",0
	align	4
_bb_LEVEL:
	dd	0
_309:
	db	"POINTS",0
	align	4
_bb_POINTS:
	dd	0
_310:
	db	"title_img",0
_115:
	db	":brl.max2d.TImage",0
	align	4
_bb_title_img:
	dd	_bbNullObject
_311:
	db	"play_bg",0
	align	4
_bb_play_bg:
	dd	_bbNullObject
_312:
	db	"paddle",0
	align	4
_bb_paddle:
	dd	_bbNullObject
_313:
	db	"playerx",0
_314:
	db	"f",0
	align	4
_bb_playerx:
	dd	0x0
_315:
	db	"playery",0
	align	4
_bb_playery:
	dd	0x0
_316:
	db	"playerspeed",0
	align	4
_bb_playerspeed:
	dd	0x0
_317:
	db	"LIVES",0
	align	4
_bb_LIVES:
	dd	0
_318:
	db	"brick_1",0
	align	4
_bb_brick_1:
	dd	_bbNullObject
_319:
	db	"brick_2",0
	align	4
_bb_brick_2:
	dd	_bbNullObject
_320:
	db	"brick_3",0
	align	4
_bb_brick_3:
	dd	_bbNullObject
_321:
	db	"brick_4",0
	align	4
_bb_brick_4:
	dd	_bbNullObject
_322:
	db	"brickxy",0
_323:
	db	"[,]i",0
	align	4
_bb_brickxy:
	dd	_bbEmptyArray
_324:
	db	"ball",0
	align	4
_bb_ball:
	dd	_bbNullObject
_325:
	db	"bally",0
	align	4
_bb_bally:
	dd	0x0
_326:
	db	"ballx",0
	align	4
_bb_ballx:
	dd	0x0
_327:
	db	"bally_dir",0
	align	4
_bb_bally_dir:
	dd	0x0
_328:
	db	"ballx_dir",0
	align	4
_bb_ballx_dir:
	dd	0x0
_329:
	db	"ballspeed",0
	align	4
_bb_ballspeed:
	dd	0x0
_330:
	db	"ball_go",0
	align	4
_bb_ball_go:
	dd	0
_331:
	db	"brick_coll",0
	align	4
_bb_brick_coll:
	dd	0
_332:
	db	"bounce",0
_333:
	db	":brl.audio.TSound",0
	align	4
_bb_bounce:
	dd	_bbNullObject
_334:
	db	"bgmusic",0
	align	4
_bb_bgmusic:
	dd	_bbNullObject
_335:
	db	"BrickList",0
_336:
	db	":brl.linkedlist.TList",0
	align	4
_bb_BrickList:
	dd	_bbNullObject
_337:
	db	"HSdataList",0
	align	4
_bb_HSdataList:
	dd	_bbNullObject
_338:
	db	"test",0
_339:
	db	":brl.stream.TStream",0
_340:
	db	"test2",0
_341:
	db	":THSdata",0
	align	4
_304:
	dd	1
	dd	_305
	dd	4
	dd	_306
	dd	_112
	dd	_bb_QUIT
	dd	4
	dd	_307
	dd	_112
	dd	_bb_MainMenu
	dd	4
	dd	_308
	dd	_112
	dd	_bb_LEVEL
	dd	4
	dd	_309
	dd	_112
	dd	_bb_POINTS
	dd	4
	dd	_310
	dd	_115
	dd	_bb_title_img
	dd	4
	dd	_311
	dd	_115
	dd	_bb_play_bg
	dd	4
	dd	_312
	dd	_115
	dd	_bb_paddle
	dd	4
	dd	_313
	dd	_314
	dd	_bb_playerx
	dd	4
	dd	_315
	dd	_314
	dd	_bb_playery
	dd	4
	dd	_316
	dd	_314
	dd	_bb_playerspeed
	dd	4
	dd	_317
	dd	_112
	dd	_bb_LIVES
	dd	4
	dd	_318
	dd	_115
	dd	_bb_brick_1
	dd	4
	dd	_319
	dd	_115
	dd	_bb_brick_2
	dd	4
	dd	_320
	dd	_115
	dd	_bb_brick_3
	dd	4
	dd	_321
	dd	_115
	dd	_bb_brick_4
	dd	4
	dd	_322
	dd	_323
	dd	_bb_brickxy
	dd	4
	dd	_324
	dd	_115
	dd	_bb_ball
	dd	4
	dd	_325
	dd	_314
	dd	_bb_bally
	dd	4
	dd	_326
	dd	_314
	dd	_bb_ballx
	dd	4
	dd	_327
	dd	_314
	dd	_bb_bally_dir
	dd	4
	dd	_328
	dd	_314
	dd	_bb_ballx_dir
	dd	4
	dd	_329
	dd	_314
	dd	_bb_ballspeed
	dd	4
	dd	_330
	dd	_112
	dd	_bb_ball_go
	dd	4
	dd	_331
	dd	_112
	dd	_bb_brick_coll
	dd	4
	dd	_332
	dd	_333
	dd	_bb_bounce
	dd	4
	dd	_334
	dd	_333
	dd	_bb_bgmusic
	dd	4
	dd	_335
	dd	_336
	dd	_bb_BrickList
	dd	4
	dd	_337
	dd	_336
	dd	_bb_HSdataList
	dd	2
	dd	_338
	dd	_339
	dd	-4
	dd	2
	dd	_340
	dd	_341
	dd	-8
	dd	2
	dd	_112
	dd	_341
	dd	-12
	dd	0
	align	4
_284:
_70:
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
	dd	1
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
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
_72:
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
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
	dd	1
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
_74:
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
_76:
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
_78:
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
_80:
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
_82:
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
_84:
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
_86:
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
_88:
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
_90:
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
_92:
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
_94:
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
_96:
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
_98:
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
_100:
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
_102:
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
_104:
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
_106:
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
_108:
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
_283:
	dd	0
_110:
	db	"TBrick",0
_111:
	db	"x",0
_113:
	db	"y",0
_114:
	db	"img",0
_116:
	db	"t",0
_117:
	db	"hp",0
_118:
	db	"New",0
_119:
	db	"()i",0
_120:
	db	"Delete",0
_121:
	db	"Create",0
_122:
	db	"(i,i,i):TBrick",0
_123:
	db	"Update",0
	align	4
_109:
	dd	2
	dd	_110
	dd	3
	dd	_111
	dd	_112
	dd	8
	dd	3
	dd	_113
	dd	_112
	dd	12
	dd	3
	dd	_114
	dd	_115
	dd	16
	dd	3
	dd	_116
	dd	_112
	dd	20
	dd	3
	dd	_117
	dd	_112
	dd	24
	dd	6
	dd	_118
	dd	_119
	dd	16
	dd	6
	dd	_120
	dd	_119
	dd	20
	dd	6
	dd	_121
	dd	_122
	dd	48
	dd	6
	dd	_123
	dd	_119
	dd	52
	dd	0
	align	4
_bb_TBrick:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_109
	dd	28
	dd	__bb_TBrick_New
	dd	__bb_TBrick_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TBrick_Create
	dd	__bb_TBrick_Update
_125:
	db	"THSdata",0
_126:
	db	"points",0
_127:
	db	"name",0
_128:
	db	"$",0
_129:
	db	"($,i):THSdata",0
	align	4
_124:
	dd	2
	dd	_125
	dd	3
	dd	_126
	dd	_112
	dd	8
	dd	3
	dd	_127
	dd	_128
	dd	12
	dd	6
	dd	_118
	dd	_119
	dd	16
	dd	6
	dd	_120
	dd	_119
	dd	20
	dd	6
	dd	_121
	dd	_129
	dd	48
	dd	0
	align	4
_bb_THSdata:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_124
	dd	16
	dd	__bb_THSdata_New
	dd	__bb_THSdata_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_THSdata_Create
_199:
	db	"D:/KIDS/Aarons Programs/Source/BlitzMax/Breakout2/init.bmx",0
	align	4
_198:
	dd	_199
	dd	11
	dd	1
	align	4
_200:
	dd	_199
	dd	12
	dd	1
	align	4
_201:
	dd	_199
	dd	14
	dd	1
	align	4
_202:
	dd	_199
	dd	15
	dd	1
	align	4
_203:
	dd	_199
	dd	17
	dd	1
	align	4
_205:
	dd	0
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	105,110,99,98,105,110,58,58,77,101,100,105,97,47,116,105
	dw	116,108,101,46,112,110,103
	align	4
_207:
	dd	_199
	dd	18
	dd	1
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	105,110,99,98,105,110,58,58,77,101,100,105,97,47,112,108
	dw	97,121,95,98,103,46,112,110,103
	align	4
_210:
	dd	_199
	dd	20
	dd	1
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	105,110,99,98,105,110,58,58,77,101,100,105,97,47,112,97
	dw	100,100,108,101,46,112,110,103
	align	4
_213:
	dd	_199
	dd	21
	dd	1
	align	4
_214:
	dd	_199
	dd	22
	dd	1
	align	4
_215:
	dd	_199
	dd	23
	dd	1
	align	4
_216:
	dd	_199
	dd	24
	dd	1
	align	4
_217:
	dd	_199
	dd	26
	dd	1
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	105,110,99,98,105,110,58,58,77,101,100,105,97,47,98,114
	dw	105,99,107,95,49,46,112,110,103
	align	4
_220:
	dd	_199
	dd	27
	dd	1
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	105,110,99,98,105,110,58,58,77,101,100,105,97,47,98,114
	dw	105,99,107,95,50,46,112,110,103
	align	4
_223:
	dd	_199
	dd	28
	dd	1
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	105,110,99,98,105,110,58,58,77,101,100,105,97,47,98,114
	dw	105,99,107,95,51,46,112,110,103
	align	4
_226:
	dd	_199
	dd	29
	dd	1
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	105,110,99,98,105,110,58,58,77,101,100,105,97,47,98,114
	dw	105,99,107,95,52,46,112,110,103
	align	4
_229:
	dd	_199
	dd	30
	dd	1
_230:
	db	"i",0
	align	4
_233:
	dd	_199
	dd	32
	dd	1
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	105,110,99,98,105,110,58,58,77,101,100,105,97,47,98,97
	dw	108,108,46,112,110,103
	align	4
_236:
	dd	_199
	dd	33
	dd	1
	align	4
_237:
	dd	_199
	dd	34
	dd	1
	align	4
_238:
	dd	_199
	dd	35
	dd	1
	align	4
_239:
	dd	_199
	dd	36
	dd	1
	align	4
_240:
	dd	_199
	dd	37
	dd	1
	align	4
_241:
	dd	_199
	dd	38
	dd	1
	align	4
_242:
	dd	_199
	dd	39
	dd	1
	align	4
_243:
	dd	_199
	dd	41
	dd	1
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	77,101,100,105,97,47,98,111,117,110,99,101,46,119,97,118
	align	4
_246:
	dd	_199
	dd	42
	dd	1
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	77,101,100,105,97,47,98,103,109,117,115,105,99,46,111,103
	dw	103
	align	4
_249:
	dd	_199
	dd	66
	dd	1
	align	4
_252:
	dd	_199
	dd	67
	dd	1
	align	4
_255:
	dd	_199
	dd	118
	dd	1
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	98,101,104
	align	4
_256:
	dd	_199
	dd	119
	dd	1
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	68,101,104
	align	4
_257:
	dd	_199
	dd	120
	dd	1
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	116,101,104
	align	4
_258:
	dd	_199
	dd	122
	dd	1
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	104,115,46,100,97,116,97
	align	4
_260:
	dd	_199
	dd	123
	dd	2
	align	4
_261:
	dd	_199
	dd	124
	dd	3
	align	4
_265:
	dd	_199
	dd	126
	dd	1
	align	4
_266:
	dd	_199
	dd	128
	dd	1
	align	4
_276:
	dd	_199
	dd	129
	dd	2
	align	4
_279:
	dd	_199
	dd	130
	dd	2
	align	4
_282:
	dd	_199
	dd	472
	dd	1
	align	4
_285:
	dd	_199
	dd	480
	dd	1
	align	4
_286:
	dd	_199
	dd	488
	dd	1
	align	4
_287:
	dd	_199
	dd	496
	dd	1
	align	4
_288:
	dd	_199
	dd	504
	dd	1
	align	4
_289:
	dd	_199
	dd	512
	dd	1
	align	4
_290:
	dd	_199
	dd	520
	dd	1
	align	4
_291:
	dd	_199
	dd	528
	dd	1
	align	4
_292:
	dd	_199
	dd	536
	dd	1
	align	4
_293:
	dd	_199
	dd	544
	dd	1
	align	4
_294:
	dd	_199
	dd	552
	dd	1
	align	4
_295:
	dd	_199
	dd	560
	dd	1
	align	4
_296:
	dd	_199
	dd	568
	dd	1
	align	4
_297:
	dd	_199
	dd	576
	dd	1
	align	4
_298:
	dd	_199
	dd	584
	dd	1
	align	4
_299:
	dd	_199
	dd	592
	dd	1
	align	4
_300:
	dd	_199
	dd	600
	dd	1
	align	4
_301:
	dd	_199
	dd	608
	dd	1
	align	4
_302:
	dd	_199
	dd	616
	dd	1
	align	4
_303:
	dd	_199
	dd	624
	dd	1
_346:
	db	"Self",0
_347:
	db	":TBrick",0
	align	4
_345:
	dd	1
	dd	_118
	dd	2
	dd	_346
	dd	_347
	dd	-4
	dd	0
_406:
	db	"_x",0
_407:
	db	"_y",0
_408:
	db	"_t",0
	align	4
_405:
	dd	1
	dd	_121
	dd	2
	dd	_346
	dd	_347
	dd	-4
	dd	2
	dd	_406
	dd	_112
	dd	-8
	dd	2
	dd	_407
	dd	_112
	dd	-12
	dd	2
	dd	_408
	dd	_112
	dd	-16
	dd	0
	align	4
_351:
	dd	_199
	dd	75
	dd	3
	align	4
_352:
	dd	_199
	dd	76
	dd	3
	align	4
_356:
	dd	_199
	dd	77
	dd	3
	align	4
_360:
	dd	_199
	dd	78
	dd	3
	align	4
_364:
	dd	_199
	dd	80
	dd	3
	align	4
_373:
	dd	_199
	dd	82
	dd	5
	align	4
_381:
	dd	_199
	dd	84
	dd	5
	align	4
_389:
	dd	_199
	dd	86
	dd	5
	align	4
_397:
	dd	_199
	dd	88
	dd	5
	align	4
_416:
	dd	1
	dd	_123
	dd	2
	dd	_346
	dd	_347
	dd	-4
	dd	0
	align	4
_409:
	dd	_199
	dd	93
	dd	3
	align	4
_418:
	dd	1
	dd	_118
	dd	2
	dd	_346
	dd	_341
	dd	-4
	dd	0
_424:
	db	"n",0
_425:
	db	"p",0
	align	4
_423:
	dd	1
	dd	_121
	dd	2
	dd	_346
	dd	_341
	dd	-4
	dd	2
	dd	_424
	dd	_128
	dd	-8
	dd	2
	dd	_425
	dd	_112
	dd	-12
	dd	0
	align	4
_422:
	dd	_199
	dd	103
	dd	3
_432:
	db	"AddToHS",0
_433:
	db	"file",0
	align	4
_431:
	dd	1
	dd	_432
	dd	2
	dd	_127
	dd	_128
	dd	-4
	dd	2
	dd	_126
	dd	_112
	dd	-8
	dd	2
	dd	_433
	dd	_339
	dd	-12
	dd	0
	align	4
_426:
	dd	_199
	dd	134
	dd	2
	align	4
_428:
	dd	_199
	dd	136
	dd	3
	align	4
_429:
	dd	_199
	dd	137
	dd	3
	align	4
_430:
	dd	_199
	dd	139
	dd	2
_435:
	db	"RemoveFromHS",0
	align	4
_434:
	dd	1
	dd	_435
	dd	2
	dd	_127
	dd	_128
	dd	-4
	dd	0
_446:
	db	"PhraseHS",0
	align	4
_445:
	dd	1
	dd	_446
	dd	2
	dd	_126
	dd	_112
	dd	-4
	dd	2
	dd	_127
	dd	_128
	dd	-8
	dd	2
	dd	_433
	dd	_339
	dd	-12
	dd	0
	align	4
_436:
	dd	_199
	dd	151
	dd	2
	align	4
_439:
	dd	_199
	dd	152
	dd	2
	align	4
_441:
	dd	_199
	dd	153
	dd	2
	align	4
_442:
	dd	_199
	dd	155
	dd	3
	align	4
_443:
	dd	_199
	dd	156
	dd	3
	align	4
_444:
	dd	_199
	dd	159
	dd	2
_457:
	db	"UpdateLives",0
	align	4
_456:
	dd	1
	dd	_457
	dd	2
	dd	_112
	dd	_112
	dd	-4
	dd	0
	align	4
_447:
	dd	_199
	dd	164
	dd	2
	align	4
_449:
	dd	_199
	dd	165
	dd	3
	align	4
_451:
	dd	_199
	dd	167
	dd	3
	align	4
_455:
	dd	_199
	dd	168
	dd	4
_488:
	db	"Won",0
_489:
	db	"timer",0
_490:
	db	"leave",0
	align	4
_487:
	dd	1
	dd	_488
	dd	2
	dd	_489
	dd	_112
	dd	-4
	dd	2
	dd	_490
	dd	_112
	dd	-8
	dd	0
	align	4
_458:
	dd	_199
	dd	176
	dd	2
	align	4
_460:
	dd	_199
	dd	177
	dd	2
	align	4
_462:
	dd	_199
	dd	178
	dd	2
	align	4
_463:
	dd	_199
	dd	180
	dd	2
	align	4
_465:
	dd	_199
	dd	181
	dd	3
	align	4
_466:
	dd	_199
	dd	182
	dd	4
	align	4
_467:
	dd	_199
	dd	183
	dd	4
	align	4
_469:
	dd	_199
	dd	184
	dd	5
	align	4
_47:
	dd	_bbStringClass
	dd	2147483647
	dd	30
	dw	65,114,101,32,121,111,117,32,115,117,114,101,32,121,111,117
	dw	32,119,97,110,116,32,84,111,32,113,117,105,116,63
	align	4
_470:
	dd	_199
	dd	185
	dd	5
	align	4
_472:
	dd	_199
	dd	185
	dd	14
	align	4
_473:
	dd	_199
	dd	187
	dd	4
	align	4
_48:
	dd	_bbStringClass
	dd	2147483647
	dd	32
	dw	76,101,118,101,108,32,99,108,101,97,114,101,100,33,32,80
	dw	114,111,99,101,101,100,32,116,111,32,76,101,118,101,108,32
	align	4
_474:
	dd	_199
	dd	188
	dd	4
	align	4
_476:
	dd	_199
	dd	191
	dd	3
	align	4
_477:
	dd	_199
	dd	192
	dd	4
	align	4
_478:
	dd	_199
	dd	193
	dd	4
	align	4
_480:
	dd	_199
	dd	194
	dd	5
	align	4
_481:
	dd	_199
	dd	195
	dd	5
	align	4
_483:
	dd	_199
	dd	195
	dd	14
	align	4
_484:
	dd	_199
	dd	197
	dd	4
	align	4
_52:
	dd	_bbStringClass
	dd	2147483647
	dd	40
	dw	89,111,117,32,98,101,97,116,32,116,104,101,32,103,97,109
	dw	101,33,32,82,101,116,117,114,110,105,110,103,32,116,111,32
	dw	77,97,105,110,77,101,110,117
	align	4
_485:
	dd	_199
	dd	198
	dd	4
	align	4
_486:
	dd	_199
	dd	201
	dd	2
_499:
	db	"Lost",0
	align	4
_498:
	dd	1
	dd	_499
	dd	2
	dd	_489
	dd	_112
	dd	-4
	dd	0
	align	4
_491:
	dd	_199
	dd	206
	dd	2
	align	4
_493:
	dd	_199
	dd	207
	dd	2
	align	4
_494:
	dd	_199
	dd	208
	dd	3
	align	4
_495:
	dd	_199
	dd	209
	dd	3
	align	4
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	33
	dw	89,111,117,32,108,111,115,116,33,32,66,101,116,116,101,114
	dw	32,108,117,99,107,32,110,101,120,116,32,116,105,109,101,33
	dw	32
	align	4
_496:
	dd	_199
	dd	210
	dd	3
	align	4
_497:
	dd	_199
	dd	212
	dd	2
_512:
	db	"RectsOverlap",0
_513:
	db	"x0",0
_514:
	db	"y0",0
_515:
	db	"w0",0
_516:
	db	"h0",0
_517:
	db	"x2",0
_518:
	db	"y2",0
_519:
	db	"w2",0
_520:
	db	"h2",0
	align	4
_511:
	dd	1
	dd	_512
	dd	2
	dd	_513
	dd	_112
	dd	-4
	dd	2
	dd	_514
	dd	_112
	dd	-8
	dd	2
	dd	_515
	dd	_112
	dd	-12
	dd	2
	dd	_516
	dd	_112
	dd	-16
	dd	2
	dd	_517
	dd	_112
	dd	-20
	dd	2
	dd	_518
	dd	_112
	dd	-24
	dd	2
	dd	_519
	dd	_112
	dd	-28
	dd	2
	dd	_520
	dd	_112
	dd	-32
	dd	0
	align	4
_500:
	dd	_199
	dd	217
	dd	2
	align	4
_504:
	dd	_199
	dd	217
	dd	43
	align	4
_505:
	dd	_199
	dd	218
	dd	2
	align	4
_509:
	dd	_199
	dd	218
	dd	43
	align	4
_510:
	dd	_199
	dd	219
	dd	2
_535:
	db	"UpdateBricks",0
_536:
	db	"bricks",0
	align	4
_534:
	dd	1
	dd	_535
	dd	2
	dd	_536
	dd	_347
	dd	-4
	dd	0
	align	4
_521:
	dd	_199
	dd	224
	dd	2
	align	4
_531:
	dd	_199
	dd	225
	dd	3
_628:
	db	"PhraseLevel",0
_629:
	db	"Datastorage",0
_630:
	db	"newbrick",0
	align	4
_627:
	dd	1
	dd	_628
	dd	2
	dd	_629
	dd	_112
	dd	-4
	dd	2
	dd	_630
	dd	_347
	dd	-8
	dd	2
	dd	_113
	dd	_112
	dd	-12
	dd	2
	dd	_111
	dd	_112
	dd	-16
	dd	0
	align	4
_537:
	dd	_199
	dd	231
	dd	2
	align	4
_540:
	dd	_199
	dd	232
	dd	2
	align	4
_542:
	dd	_199
	dd	233
	dd	2
	align	4
_544:
	dd	_199
	dd	234
	dd	2
	align	4
_567:
	dd	_199
	dd	236
	dd	4
	align	4
_568:
	dd	_199
	dd	238
	dd	4
	align	4
_569:
	dd	_199
	dd	240
	dd	4
	align	4
_570:
	dd	_199
	dd	242
	dd	4
	align	4
_571:
	dd	_199
	dd	244
	dd	4
	align	4
_572:
	dd	_199
	dd	246
	dd	4
	align	4
_573:
	dd	_199
	dd	248
	dd	4
	align	4
_574:
	dd	_199
	dd	250
	dd	4
	align	4
_575:
	dd	_199
	dd	252
	dd	4
	align	4
_576:
	dd	_199
	dd	254
	dd	4
	align	4
_577:
	dd	_199
	dd	256
	dd	4
	align	4
_578:
	dd	_199
	dd	258
	dd	4
	align	4
_579:
	dd	_199
	dd	260
	dd	4
	align	4
_580:
	dd	_199
	dd	262
	dd	4
	align	4
_581:
	dd	_199
	dd	264
	dd	4
	align	4
_582:
	dd	_199
	dd	266
	dd	4
	align	4
_583:
	dd	_199
	dd	268
	dd	4
	align	4
_584:
	dd	_199
	dd	270
	dd	4
	align	4
_585:
	dd	_199
	dd	272
	dd	4
	align	4
_586:
	dd	_199
	dd	274
	dd	4
	align	4
_587:
	dd	_199
	dd	278
	dd	2
	align	4
_590:
	dd	_199
	dd	279
	dd	3
	align	4
_593:
	dd	_199
	dd	280
	dd	4
	align	4
_598:
	dd	_199
	dd	281
	dd	4
	align	4
_604:
	dd	_199
	dd	282
	dd	4
	align	4
_615:
	dd	_199
	dd	284
	dd	6
	align	4
_618:
	dd	_199
	dd	286
	dd	6
	align	4
_621:
	dd	_199
	dd	288
	dd	6
	align	4
_624:
	dd	_199
	dd	290
	dd	6
_650:
	db	"UpdatePlayer",0
	align	4
_649:
	dd	1
	dd	_650
	dd	0
	align	4
_631:
	dd	_199
	dd	297
	dd	2
	align	4
_635:
	dd	_199
	dd	297
	dd	61
	align	4
_636:
	dd	_199
	dd	298
	dd	2
	align	4
_640:
	dd	_199
	dd	298
	dd	39
	align	4
_641:
	dd	_199
	dd	299
	dd	2
	align	4
_645:
	dd	_199
	dd	300
	dd	3
	align	4
_646:
	dd	_199
	dd	301
	dd	3
	align	4
_941:
	dd	0xbf800000
	align	4
_647:
	dd	_199
	dd	302
	dd	3
	align	4
_648:
	dd	_199
	dd	305
	dd	2
_782:
	db	"UpdateBall",0
	align	4
_781:
	dd	1
	dd	_782
	dd	2
	dd	_536
	dd	_347
	dd	-4
	dd	0
	align	4
_651:
	dd	_199
	dd	309
	dd	2
	align	4
_652:
	dd	_199
	dd	310
	dd	2
	align	4
_654:
	dd	_199
	dd	311
	dd	3
	align	4
_655:
	dd	_199
	dd	312
	dd	3
	align	4
_656:
	dd	_199
	dd	314
	dd	3
	align	4
_950:
	dd	0x428c0000
	align	4
_658:
	dd	_199
	dd	314
	dd	17
	align	4
_659:
	dd	_199
	dd	314
	dd	31
	align	4
_660:
	dd	_199
	dd	315
	dd	3
	align	4
_662:
	dd	_199
	dd	316
	dd	4
	align	4
_663:
	dd	_199
	dd	317
	dd	4
	align	4
_664:
	dd	_199
	dd	319
	dd	3
	align	4
_666:
	dd	_199
	dd	319
	dd	16
	align	4
_667:
	dd	_199
	dd	319
	dd	30
	align	4
_668:
	dd	_199
	dd	320
	dd	3
	align	4
_670:
	dd	_199
	dd	320
	dd	37
	align	4
_951:
	dd	0xbf800000
	align	4
_671:
	dd	_199
	dd	320
	dd	52
	align	4
_672:
	dd	_199
	dd	322
	dd	3
	align	4
_674:
	dd	_199
	dd	323
	dd	4
	align	4
_952:
	dd	0xbf800000
	align	4
_675:
	dd	_199
	dd	324
	dd	4
	align	4
_953:
	dd	0x41200000
	align	4
_954:
	dd	0x42700000
	align	4
_955:
	dd	0x42700000
	align	4
_956:
	dd	0x40000000
	align	4
_676:
	dd	_199
	dd	325
	dd	4
	align	4
_677:
	dd	_199
	dd	328
	dd	3
	align	4
_687:
	dd	_199
	dd	329
	dd	4
	align	4
_689:
	dd	_199
	dd	331
	dd	5
	align	4
_697:
	dd	_199
	dd	332
	dd	6
	align	4
_957:
	dd	0xbf800000
	align	4
_698:
	dd	_199
	dd	333
	dd	6
	align	4
_701:
	dd	_199
	dd	334
	dd	6
	align	4
_702:
	dd	_199
	dd	335
	dd	6
	align	4
_703:
	dd	_199
	dd	338
	dd	5
	align	4
_713:
	dd	_199
	dd	339
	dd	6
	align	4
_714:
	dd	_199
	dd	340
	dd	6
	align	4
_717:
	dd	_199
	dd	341
	dd	6
	align	4
_718:
	dd	_199
	dd	342
	dd	6
	align	4
_719:
	dd	_199
	dd	345
	dd	5
	align	4
_727:
	dd	_199
	dd	346
	dd	6
	align	4
_958:
	dd	0xbf800000
	align	4
_728:
	dd	_199
	dd	347
	dd	6
	align	4
_731:
	dd	_199
	dd	348
	dd	6
	align	4
_732:
	dd	_199
	dd	349
	dd	6
	align	4
_733:
	dd	_199
	dd	352
	dd	5
	align	4
_743:
	dd	_199
	dd	353
	dd	6
	align	4
_744:
	dd	_199
	dd	354
	dd	6
	align	4
_747:
	dd	_199
	dd	355
	dd	6
	align	4
_748:
	dd	_199
	dd	356
	dd	6
	align	4
_749:
	dd	_199
	dd	359
	dd	5
	align	4
_751:
	dd	_199
	dd	360
	dd	6
	align	4
_754:
	dd	_199
	dd	361
	dd	6
	align	4
_762:
	dd	_199
	dd	363
	dd	8
	align	4
_959:
	dd	0x41000000
	align	4
_764:
	dd	_199
	dd	363
	dd	25
	align	4
_960:
	dd	0x41000000
	align	4
_765:
	dd	_199
	dd	365
	dd	8
	align	4
_961:
	dd	0x41200000
	align	4
_767:
	dd	_199
	dd	365
	dd	26
	align	4
_962:
	dd	0x41200000
	align	4
_768:
	dd	_199
	dd	367
	dd	8
	align	4
_963:
	dd	0x41400000
	align	4
_770:
	dd	_199
	dd	367
	dd	26
	align	4
_964:
	dd	0x41400000
	align	4
_772:
	dd	_199
	dd	374
	dd	3
	align	4
_773:
	dd	_199
	dd	375
	dd	3
	align	4
_965:
	dd	0x44020000
	align	4
_774:
	dd	_199
	dd	376
	dd	3
	align	4
_776:
	dd	_199
	dd	376
	dd	21
	align	4
_777:
	dd	_199
	dd	377
	dd	3
	align	4
_779:
	dd	_199
	dd	377
	dd	21
	align	4
_780:
	dd	_199
	dd	380
	dd	2
_799:
	db	"ResetGame",0
_800:
	db	"all",0
	align	4
_798:
	dd	1
	dd	_799
	dd	2
	dd	_800
	dd	_112
	dd	-4
	dd	0
	align	4
_783:
	dd	_199
	dd	388
	dd	2
	align	4
_1012:
	dd	0x43af0000
	align	4
_784:
	dd	_199
	dd	389
	dd	2
	align	4
_1013:
	dd	0x44098000
	align	4
_785:
	dd	_199
	dd	390
	dd	2
	align	4
_1014:
	dd	0x41200000
	align	4
_786:
	dd	_199
	dd	392
	dd	2
	align	4
_1015:
	dd	0x44020000
	align	4
_787:
	dd	_199
	dd	393
	dd	2
	align	4
_788:
	dd	_199
	dd	394
	dd	2
	align	4
_789:
	dd	_199
	dd	395
	dd	2
	align	4
_790:
	dd	_199
	dd	396
	dd	2
	align	4
_1016:
	dd	0x40c00000
	align	4
_791:
	dd	_199
	dd	397
	dd	2
	align	4
_792:
	dd	_199
	dd	399
	dd	2
	align	4
_794:
	dd	_199
	dd	400
	dd	3
	align	4
_795:
	dd	_199
	dd	401
	dd	3
	align	4
_796:
	dd	_199
	dd	402
	dd	3
	align	4
_797:
	dd	_199
	dd	405
	dd	2
_813:
	db	"SetIcon",0
_814:
	db	"iconname",0
_815:
	db	"TheWindow",0
_816:
	db	"icon",0
_817:
	db	"WM_SETICON",0
_818:
	db	"ICON_SMALL",0
_819:
	db	"ICON_BIG",0
	align	4
_812:
	dd	1
	dd	_813
	dd	2
	dd	_814
	dd	_128
	dd	-4
	dd	2
	dd	_815
	dd	_112
	dd	-8
	dd	2
	dd	_816
	dd	_112
	dd	-12
	dd	2
	dd	_817
	dd	_112
	dd	-16
	dd	2
	dd	_818
	dd	_112
	dd	-20
	dd	2
	dd	_819
	dd	_112
	dd	-24
	dd	0
	align	4
_801:
	dd	_199
	dd	419
	dd	2
	align	4
_805:
	dd	_199
	dd	420
	dd	2
	align	4
_807:
	dd	_199
	dd	421
	dd	2
	align	4
_809:
	dd	_199
	dd	422
	dd	2
	align	4
_811:
	dd	_199
	dd	423
	dd	2
