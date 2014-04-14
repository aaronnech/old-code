	format	MS COFF
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
	extrn	_bbCos
	extrn	_bbEmptyString
	extrn	_bbFloatAbs
	extrn	_bbFloatToInt
	extrn	_bbGCFree
	extrn	_bbHandleToObject
	extrn	_bbIntAbs
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
	extrn	_bbSin
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_linkedlist_ListAddLast
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawRect
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d_SetRotation
	extrn	_brl_max2d_TImage
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_polledinput_MouseDown
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_brl_random_Rand
	extrn	_brl_random_Rnd
	public	__bb_TBall_CreateBall
	public	__bb_TBall_Delete
	public	__bb_TBall_New
	public	__bb_TBall_Update
	public	__bb_TBall_UpdateBalls
	public	__bb_TButton_CreateButton
	public	__bb_TButton_Delete
	public	__bb_TButton_New
	public	__bb_TButton_Update
	public	__bb_TButton_UpdateButtons
	public	__bb_TEnemyPaddle_Delete
	public	__bb_TEnemyPaddle_New
	public	__bb_TEnemyPaddle_Update
	public	__bb_TEntity_Delete
	public	__bb_TEntity_New
	public	__bb_TEventFire_Delete
	public	__bb_TEventFire_New
	public	__bb_TEventFire_NewEvent
	public	__bb_TPartical_Create
	public	__bb_TPartical_Delete
	public	__bb_TPartical_Destroy
	public	__bb_TPartical_DistanceTraveled
	public	__bb_TPartical_New
	public	__bb_TPartical_ParticalList
	public	__bb_TPartical_SetPAlpha
	public	__bb_TPartical_SetPRotation
	public	__bb_TPartical_SetX
	public	__bb_TPartical_SetY
	public	__bb_TPartical_Update
	public	__bb_TPartical_UpdateAllParticles
	public	__bb_TPlayerPaddle_Delete
	public	__bb_TPlayerPaddle_New
	public	__bb_TPlayerPaddle_Update
	public	__bb_TRandomNumbers_Delete
	public	__bb_TRandomNumbers_New
	public	__bb_TRandomNumbers_RandomNumberList
	public	__bb_TRandomNumbers_UpdateAll
	public	__bb_main
	public	_bb_BallList
	public	_bb_ButtonList
	public	_bb_DrawBG
	public	_bb_Enemy
	public	_bb_EventList
	public	_bb_ParticalExplosion
	public	_bb_RectsOverlap
	public	_bb_TBall
	public	_bb_TButton
	public	_bb_TEnemyPaddle
	public	_bb_TEntity
	public	_bb_TEventFire
	public	_bb_TPartical
	public	_bb_TPlayerPaddle
	public	_bb_TRandomNumbers
	public	_bb_UpdateTimers
	public	_bb_player
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_269],0
	je	_270
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_270:
	mov	dword [_269],1
	push	ebp
	push	_259
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
	push	_bb_TEntity
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TPlayerPaddle
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TEnemyPaddle
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TBall
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TButton
	call	_bbObjectRegisterType
	add	esp,4
	push	_240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_243]
	and	eax,1
	cmp	eax,0
	jne	_244
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [__bb_TPartical_ParticalList],eax
	or	dword [_243],1
_244:
	push	_bb_TPartical
	call	_bbObjectRegisterType
	add	esp,4
	push	_245
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_243]
	and	eax,2
	cmp	eax,0
	jne	_247
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [__bb_TRandomNumbers_RandomNumberList],eax
	or	dword [_243],2
_247:
	push	_bb_TRandomNumbers
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TEventFire
	call	_bbObjectRegisterType
	add	esp,4
	push	_248
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_243]
	and	eax,4
	cmp	eax,0
	jne	_250
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_EventList],eax
	or	dword [_243],4
_250:
	push	_251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_243]
	and	eax,8
	cmp	eax,0
	jne	_253
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_ButtonList],eax
	or	dword [_243],8
_253:
	push	_254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_243]
	and	eax,16
	cmp	eax,0
	jne	_256
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_BallList],eax
	or	dword [_243],16
_256:
	push	_257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_258
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_102
_102:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TEntity_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_271
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TEntity
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	ebx,0
	jmp	_105
_105:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TEntity_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_108:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_274
_274:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPlayerPaddle_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_279
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TEntity_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TPlayerPaddle
	push	_275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_277
	call	_brl_blitz_NullObjectError
_277:
	fld	dword [_931]
	fstp	dword [ebx+12]
	mov	ebx,0
	jmp	_111
_111:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPlayerPaddle_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_114:
	mov	dword [eax],_bb_TEntity
	push	eax
	call	__bb_TEntity_Delete
	add	esp,4
	mov	eax,0
	jmp	_280
_280:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPlayerPaddle_Update:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	push	ebp
	push	_294
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_281
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_283
	call	_brl_blitz_NullObjectError
_283:
	call	_brl_polledinput_MouseX
	sub	eax,60
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fstp	dword [ebx+8]
	push	_285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	32
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_286
	push	_287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TBall+48]
_286:
	push	_288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_291
	call	_brl_blitz_NullObjectError
_291:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_293
	call	_brl_blitz_NullObjectError
_293:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	_brl_max2d_TImage
	push	dword [ebp-8]
	call	_bbHandleToObject
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	call	_brl_max2d_DrawImage
	add	esp,16
	mov	ebx,0
	jmp	_117
_117:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TEnemyPaddle_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_308
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TEntity_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TEnemyPaddle
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	push	_296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_298
	call	_brl_blitz_NullObjectError
_298:
	fld	dword [_943]
	fstp	dword [ebx+12]
	push	_300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_302
	call	_brl_blitz_NullObjectError
_302:
	fld	dword [_944]
	fstp	dword [ebx+8]
	push	_304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_306
	call	_brl_blitz_NullObjectError
_306:
	fld	dword [_945]
	fstp	dword [ebx+16]
	mov	ebx,0
	jmp	_120
_120:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TEnemyPaddle_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_123:
	mov	dword [eax],_bb_TEntity
	push	eax
	call	__bb_TEntity_Delete
	add	esp,4
	mov	eax,0
	jmp	_309
_309:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TEnemyPaddle_Update:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fldz
	fstp	dword [ebp-8]
	fldz
	fstp	dword [ebp-12]
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	mov	eax,ebp
	push	eax
	push	_366
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_310
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_953]
	fstp	dword [ebp-8]
	push	_312
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-12]
	push	_314
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	edi,dword [_bb_BallList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_318
	call	_brl_blitz_NullObjectError
_318:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_18
_20:
	cmp	ebx,_bbNullObject
	jne	_323
	call	_brl_blitz_NullObjectError
_323:
	push	_bb_TBall
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_18
	push	_324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_326
	call	_brl_blitz_NullObjectError
_326:
	fld	dword [esi+12]
	fld	dword [ebp-8]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_327
	push	_328
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_330
	call	_brl_blitz_NullObjectError
_330:
	fld	dword [esi+12]
	fstp	dword [ebp-8]
	push	_331
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_333
	call	_brl_blitz_NullObjectError
_333:
	fld	dword [esi+8]
	fstp	dword [ebp-12]
_327:
_18:
	cmp	ebx,_bbNullObject
	jne	_321
	call	_brl_blitz_NullObjectError
_321:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_20
_19:
	push	_334
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-20],eax
	push	_336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_338
	call	_brl_blitz_NullObjectError
_338:
	fld	dword [ebx+8]
	fadd	dword [_954]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-24],eax
	push	_340
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fld	dword [_955]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	jne	_341
	push	_342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	sub	eax,dword [ebp-20]
	push	eax
	call	_bbIntAbs
	add	esp,4
	cmp	eax,10
	jle	_343
	push	_344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	cmp	dword [ebp-24],eax
	jge	_345
	push	_346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_348
	call	_brl_blitz_NullObjectError
_348:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_351
	call	_brl_blitz_NullObjectError
_351:
	fld	dword [ebx+8]
	fadd	dword [esi+16]
	fstp	dword [ebx+8]
_345:
	push	_352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	cmp	dword [ebp-24],eax
	jle	_353
	push	_354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_356
	call	_brl_blitz_NullObjectError
_356:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_359
	call	_brl_blitz_NullObjectError
_359:
	fld	dword [ebx+8]
	fsub	dword [esi+16]
	fstp	dword [ebx+8]
_353:
_343:
_341:
	push	_360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_363
	call	_brl_blitz_NullObjectError
_363:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_365
	call	_brl_blitz_NullObjectError
_365:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	_brl_max2d_TImage
	push	dword [ebp-28]
	call	_bbHandleToObject
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	call	_brl_max2d_DrawImage
	add	esp,16
	mov	ebx,0
	jmp	_126
_126:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBall_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_372
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TEntity_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TBall
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+20]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+24]
	mov	ebx,0
	jmp	_129
_129:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBall_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_132:
	mov	dword [eax],_bb_TEntity
	push	eax
	call	__bb_TEntity_Delete
	add	esp,4
	mov	eax,0
	jmp	_373
_373:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBall_CreateBall:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	dword [ebp-4],_bbNullObject
	push	ebp
	push	_395
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_374
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TBall
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	push	_376
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_378
	call	_brl_blitz_NullObjectError
_378:
	mov	esi,dword [_bb_player]
	cmp	esi,_bbNullObject
	jne	_381
	call	_brl_blitz_NullObjectError
_381:
	fld	dword [esi+8]
	fadd	dword [_981]
	fstp	dword [ebx+8]
	push	_382
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_384
	call	_brl_blitz_NullObjectError
_384:
	fld	dword [_982]
	fstp	dword [ebx+12]
	push	_386
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_388
	call	_brl_blitz_NullObjectError
_388:
	fld	dword [_983]
	fstp	dword [ebx+20]
	push	_390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_392
	call	_brl_blitz_NullObjectError
_392:
	fld	dword [_984]
	fstp	dword [ebx+24]
	push	_394
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [_bb_BallList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	ebx,0
	jmp	_134
_134:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBall_UpdateBalls:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_410
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	edi,dword [_bb_BallList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_401
	call	_brl_blitz_NullObjectError
_401:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_21
_23:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_406
	call	_brl_blitz_NullObjectError
_406:
	push	_bb_TBall
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_21
	push	_407
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_409
	call	_brl_blitz_NullObjectError
_409:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
_21:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_404
	call	_brl_blitz_NullObjectError
_404:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_23
_22:
	mov	ebx,0
	jmp	_136
_136:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBall_Update:
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
	push	_507
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_411
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_413
	call	_brl_blitz_NullObjectError
_413:
	mov	esi,ebx
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_416
	call	_brl_blitz_NullObjectError
_416:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_418
	call	_brl_blitz_NullObjectError
_418:
	fld	dword [esi+8]
	fld	dword [edi+16]
	fmul	dword [ebx+24]
	faddp	st1,st0
	fstp	dword [esi+8]
	push	_419
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_421
	call	_brl_blitz_NullObjectError
_421:
	mov	esi,ebx
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_424
	call	_brl_blitz_NullObjectError
_424:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_426
	call	_brl_blitz_NullObjectError
_426:
	fld	dword [esi+12]
	fld	dword [edi+20]
	fmul	dword [ebx+24]
	faddp	st1,st0
	fstp	dword [esi+12]
	push	_427
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_429
	call	_brl_blitz_NullObjectError
_429:
	fld	dword [ebx+12]
	fld	dword [_999]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_430
	push	_431
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BallList]
	cmp	ebx,_bbNullObject
	jne	_433
	call	_brl_blitz_NullObjectError
_433:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
_430:
	push	_434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_436
	call	_brl_blitz_NullObjectError
_436:
	fld	dword [ebx+12]
	fld	dword [_1000]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_437
	push	_438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BallList]
	cmp	ebx,_bbNullObject
	jne	_440
	call	_brl_blitz_NullObjectError
_440:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
_437:
	push	_441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_443
	call	_brl_blitz_NullObjectError
_443:
	fld	dword [ebx+8]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_444
	push	_445
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_447
	call	_brl_blitz_NullObjectError
_447:
	fld1
	fstp	dword [ebx+16]
_444:
	push	_449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_451
	call	_brl_blitz_NullObjectError
_451:
	fld	dword [ebx+8]
	fld	dword [_1001]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_452
	push	_453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_455
	call	_brl_blitz_NullObjectError
_455:
	fld	dword [_1002]
	fstp	dword [ebx+16]
_452:
	push	_457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	jne	_459
	call	_brl_blitz_NullObjectError
_459:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_461
	call	_brl_blitz_NullObjectError
_461:
	mov	esi,dword [_bb_player]
	cmp	esi,_bbNullObject
	jne	_463
	call	_brl_blitz_NullObjectError
_463:
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_465
	call	_brl_blitz_NullObjectError
_465:
	push	10
	push	120
	push	dword [ebx+12]
	push	dword [esi+8]
	push	20
	push	20
	push	dword [edi+12]
	mov	eax,dword [ebp-12]
	push	dword [eax+8]
	call	_bb_RectsOverlap
	add	esp,32
	cmp	eax,0
	je	_466
	push	_467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_469
	call	_brl_blitz_NullObjectError
_469:
	fld	dword [_1003]
	fstp	dword [ebx+20]
	push	_471
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_473
	call	_brl_blitz_NullObjectError
_473:
	mov	edi,ebx
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_476
	call	_brl_blitz_NullObjectError
_476:
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_478
	call	_brl_blitz_NullObjectError
_478:
	fld	dword [esi+8]
	fadd	dword [_1004]
	fsub	dword [ebx+8]
	fadd	dword [_1005]
	fdiv	dword [_1006]
	fsub	dword [_1007]
	fstp	dword [edi+16]
_466:
	push	_479
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	jne	_481
	call	_brl_blitz_NullObjectError
_481:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_483
	call	_brl_blitz_NullObjectError
_483:
	mov	esi,dword [_bb_Enemy]
	cmp	esi,_bbNullObject
	jne	_485
	call	_brl_blitz_NullObjectError
_485:
	mov	ebx,dword [_bb_Enemy]
	cmp	ebx,_bbNullObject
	jne	_487
	call	_brl_blitz_NullObjectError
_487:
	push	10
	push	120
	push	dword [ebx+12]
	push	dword [esi+8]
	push	20
	push	20
	push	dword [edi+12]
	mov	eax,dword [ebp-16]
	push	dword [eax+8]
	call	_bb_RectsOverlap
	add	esp,32
	cmp	eax,0
	je	_488
	push	_489
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_491
	call	_brl_blitz_NullObjectError
_491:
	fld1
	fstp	dword [ebx+20]
	push	_493
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_495
	call	_brl_blitz_NullObjectError
_495:
	mov	edi,ebx
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_498
	call	_brl_blitz_NullObjectError
_498:
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_500
	call	_brl_blitz_NullObjectError
_500:
	fld	dword [esi+8]
	fadd	dword [_1008]
	fsub	dword [ebx+8]
	fadd	dword [_1009]
	fdiv	dword [_1010]
	fsub	dword [_1011]
	fstp	dword [edi+16]
_488:
	push	_501
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_504
	call	_brl_blitz_NullObjectError
_504:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_506
	call	_brl_blitz_NullObjectError
_506:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	_brl_max2d_TImage
	push	dword [ebp-8]
	call	_bbHandleToObject
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	call	_brl_max2d_DrawImage
	add	esp,16
	mov	ebx,0
	jmp	_139
_139:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TButton_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_512
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TEntity_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TButton
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	mov	eax,dword [ebp-4]
	mov	byte [eax+20],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],edx
	mov	ebx,0
	jmp	_142
_142:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TButton_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_145:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_516
	push	eax
	call	_bbGCFree
	add	esp,4
_516:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_518
	push	eax
	call	_bbGCFree
	add	esp,4
_518:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_520
	push	eax
	call	_bbGCFree
	add	esp,4
_520:
	mov	dword [ebx],_bb_TEntity
	push	ebx
	call	__bb_TEntity_Delete
	add	esp,4
	mov	eax,0
	jmp	_514
_514:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TButton_CreateButton:
	push	ebp
	mov	ebp,esp
	sub	esp,28
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
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	dword [ebp-24],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_556
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TButton
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-24],eax
	push	_523
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_525
	call	_brl_blitz_NullObjectError
_525:
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fstp	dword [ebx+8]
	push	_527
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_529
	call	_brl_blitz_NullObjectError
_529:
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fstp	dword [ebx+12]
	push	_531
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_533
	call	_brl_blitz_NullObjectError
_533:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_538
	push	eax
	call	_bbGCFree
	add	esp,4
_538:
	mov	dword [esi+16],ebx
	push	_539
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_541
	call	_brl_blitz_NullObjectError
_541:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_546
	push	eax
	call	_bbGCFree
	add	esp,4
_546:
	mov	dword [esi+24],ebx
	push	_547
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_549
	call	_brl_blitz_NullObjectError
_549:
	mov	ebx,dword [ebp-20]
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_554
	push	eax
	call	_bbGCFree
	add	esp,4
_554:
	mov	dword [esi+28],ebx
	push	_555
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	push	dword [_bb_ButtonList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	ebx,0
	jmp	_152
_152:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TButton_UpdateButtons:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_576
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_563
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	edi,dword [_bb_ButtonList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_567
	call	_brl_blitz_NullObjectError
_567:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_24
_26:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_572
	call	_brl_blitz_NullObjectError
_572:
	push	_bb_TButton
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_24
	push	_573
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_575
	call	_brl_blitz_NullObjectError
_575:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
_24:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_570
	call	_brl_blitz_NullObjectError
_570:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_26
_25:
	mov	ebx,0
	jmp	_154
_154:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TButton_Update:
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
	push	_626
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_579
	call	_brl_blitz_NullObjectError
_579:
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fld	dword [ebx+8]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	je	_582
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_581
	call	_brl_blitz_NullObjectError
_581:
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fld	dword [ebx+8]
	fadd	dword [_1070]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_582:
	cmp	eax,0
	je	_586
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_585
	call	_brl_blitz_NullObjectError
_585:
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fld	dword [ebx+12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_586:
	cmp	eax,0
	je	_590
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_589
	call	_brl_blitz_NullObjectError
_589:
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fld	dword [ebx+12]
	fadd	dword [_1071]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_590:
	cmp	eax,0
	je	_592
	push	_593
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_595
	call	_brl_blitz_NullObjectError
_595:
	mov	byte [ebx+20],1
	push	_597
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseDown
	add	esp,4
	cmp	eax,0
	je	_598
	push	_599
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_601
	call	_brl_blitz_NullObjectError
_601:
	push	dword [ebx+16]
	call	dword [_bb_TEventFire+48]
	add	esp,4
_598:
	jmp	_602
_592:
	push	_603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_605
	call	_brl_blitz_NullObjectError
_605:
	mov	byte [ebx+20],0
_602:
	push	_607
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_609
	call	_brl_blitz_NullObjectError
_609:
	movzx	eax,byte [ebx+20]
	cmp	eax,0
	je	_610
	push	_611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_613
	call	_brl_blitz_NullObjectError
_613:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_615
	call	_brl_blitz_NullObjectError
_615:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_617
	call	_brl_blitz_NullObjectError
_617:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [edi+28]
	call	_brl_max2d_DrawImage
	add	esp,16
	jmp	_618
_610:
	push	_619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_621
	call	_brl_blitz_NullObjectError
_621:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_623
	call	_brl_blitz_NullObjectError
_623:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_625
	call	_brl_blitz_NullObjectError
_625:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [edi+24]
	call	_brl_max2d_DrawImage
	add	esp,16
_618:
	mov	ebx,0
	jmp	_157
_157:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPartical_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_628
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TEntity_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TPartical
	mov	eax,dword [ebp-4]
	fld1
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],edx
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+36]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+40]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+44]
	mov	eax,dword [ebp-4]
	mov	dword [eax+48],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+52],0
	mov	ebx,0
	jmp	_160
_160:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPartical_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_163:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_632
	push	eax
	call	_bbGCFree
	add	esp,4
_632:
	mov	dword [ebx],_bb_TEntity
	push	ebx
	call	__bb_TEntity_Delete
	add	esp,4
	mov	eax,0
	jmp	_630
_630:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPartical_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,36
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
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	fld	dword [ebp+28]
	fstp	dword [ebp-24]
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp+36]
	mov	dword [ebp-32],eax
	push	ebp
	push	_680
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_633
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [__bb_TPartical_ParticalList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_634
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_636
	call	_brl_blitz_NullObjectError
_636:
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fstp	dword [ebx+8]
	push	_638
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_640
	call	_brl_blitz_NullObjectError
_640:
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fstp	dword [ebx+12]
	push	_642
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_644
	call	_brl_blitz_NullObjectError
_644:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+24],eax
	push	_646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_648
	call	_brl_blitz_NullObjectError
_648:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+28],eax
	push	_650
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_652
	call	_brl_blitz_NullObjectError
_652:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+32]
	dec	dword [eax+4]
	jnz	_657
	push	eax
	call	_bbGCFree
	add	esp,4
_657:
	mov	dword [esi+32],ebx
	push	_658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_660
	call	_brl_blitz_NullObjectError
_660:
	mov	eax,dword [ebp-20]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-24]
	fmulp	st1,st0
	fstp	dword [ebx+36]
	push	_662
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_664
	call	_brl_blitz_NullObjectError
_664:
	mov	eax,dword [ebp-20]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-24]
	fmulp	st1,st0
	fstp	dword [ebx+40]
	push	_666
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_668
	call	_brl_blitz_NullObjectError
_668:
	fld	dword [_1098]
	mov	eax,dword [ebp-28]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fdivp	st1,st0
	fstp	dword [ebx+44]
	push	_670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_672
	call	_brl_blitz_NullObjectError
_672:
	mov	eax,dword [ebp-28]
	mov	dword [ebx+48],eax
	push	_674
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-32],0
	je	_675
	push	_676
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_678
	call	_brl_blitz_NullObjectError
_678:
	mov	dword [ebx+52],1
_675:
	mov	ebx,_bbNullObject
	jmp	_173
_173:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPartical_Update:
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
	push	_734
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_686
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_688
	call	_brl_blitz_NullObjectError
_688:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_691
	call	_brl_blitz_NullObjectError
_691:
	fld	dword [ebx+8]
	fadd	dword [esi+36]
	fstp	dword [ebx+8]
	push	_692
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_694
	call	_brl_blitz_NullObjectError
_694:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_697
	call	_brl_blitz_NullObjectError
_697:
	fld	dword [ebx+12]
	fadd	dword [esi+40]
	fstp	dword [ebx+12]
	push	_698
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_700
	call	_brl_blitz_NullObjectError
_700:
	cmp	dword [ebx+52],0
	je	_701
	push	_702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_704
	call	_brl_blitz_NullObjectError
_704:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_707
	call	_brl_blitz_NullObjectError
_707:
	fld	dword [ebx+16]
	fsub	dword [esi+44]
	fstp	dword [ebx+16]
_701:
	push	_708
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_710
	call	_brl_blitz_NullObjectError
_710:
	mov	eax,dword [ebx+20]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_711
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_713
	call	_brl_blitz_NullObjectError
_713:
	push	dword [ebx+16]
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_714
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_716
	call	_brl_blitz_NullObjectError
_716:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_718
	call	_brl_blitz_NullObjectError
_718:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_720
	call	_brl_blitz_NullObjectError
_720:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [edi+32]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_721
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_722
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_723
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_725
	call	_brl_blitz_NullObjectError
_725:
	sub	dword [ebx+48],1
	push	_727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_729
	call	_brl_blitz_NullObjectError
_729:
	cmp	dword [ebx+48],0
	jne	_730
	push	_731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_733
	call	_brl_blitz_NullObjectError
_733:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
_730:
	mov	ebx,_bbNullObject
	jmp	_176
_176:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPartical_SetPAlpha:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	push	ebp
	push	_739
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_735
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_737
	call	_brl_blitz_NullObjectError
_737:
	fld	dword [ebp-8]
	fstp	dword [ebx+16]
	mov	ebx,0
	jmp	_180
_180:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPartical_SetPRotation:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_745
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_741
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_743
	call	_brl_blitz_NullObjectError
_743:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+20],eax
	mov	ebx,0
	jmp	_184
_184:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPartical_Destroy:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_750
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_747
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TPartical_ParticalList]
	cmp	ebx,_bbNullObject
	jne	_749
	call	_brl_blitz_NullObjectError
_749:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	mov	ebx,0
	jmp	_187
_187:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPartical_SetX:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_755
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_751
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_753
	call	_brl_blitz_NullObjectError
_753:
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fstp	dword [ebx+8]
	mov	ebx,0
	jmp	_191
_191:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPartical_SetY:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_760
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_756
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_758
	call	_brl_blitz_NullObjectError
_758:
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fstp	dword [ebx+12]
	mov	ebx,0
	jmp	_195
_195:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPartical_DistanceTraveled:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fldz
	fstp	dword [ebp-8]
	fldz
	fstp	dword [ebp-12]
	push	ebp
	push	_774
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_761
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_763
	call	_brl_blitz_NullObjectError
_763:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_765
	call	_brl_blitz_NullObjectError
_765:
	mov	eax,dword [esi+24]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatAbs
	add	esp,8
	fstp	dword [ebp-8]
	push	_767
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_769
	call	_brl_blitz_NullObjectError
_769:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_771
	call	_brl_blitz_NullObjectError
_771:
	mov	eax,dword [esi+28]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatAbs
	add	esp,8
	fstp	dword [ebp-12]
	push	_773
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fadd	dword [ebp-12]
	fstp	dword [ebp-16]
	jmp	_198
_198:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-16]
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPartical_UpdateAllParticles:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_790
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	edi,dword [__bb_TPartical_ParticalList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_781
	call	_brl_blitz_NullObjectError
_781:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_27
_29:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_786
	call	_brl_blitz_NullObjectError
_786:
	push	_bb_TPartical
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_27
	push	_787
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_789
	call	_brl_blitz_NullObjectError
_789:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
_27:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_784
	call	_brl_blitz_NullObjectError
_784:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_29
_28:
	mov	ebx,0
	jmp	_200
_200:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRandomNumbers_New:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_801
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TEntity_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TRandomNumbers
	push	_792
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_794
	call	_brl_blitz_NullObjectError
_794:
	fld	dword [_1161]
	fstp	dword [ebx+8]
	push	_796
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_798
	call	_brl_blitz_NullObjectError
_798:
	push	700
	push	70
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fstp	dword [ebx+12]
	push	_800
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [__bb_TRandomNumbers_RandomNumberList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	ebx,0
	jmp	_203
_203:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRandomNumbers_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_206:
	mov	dword [eax],_bb_TEntity
	push	eax
	call	__bb_TEntity_Delete
	add	esp,4
	mov	eax,0
	jmp	_803
_803:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRandomNumbers_UpdateAll:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	eax,ebp
	push	eax
	push	_829
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_804
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	edi,dword [__bb_TRandomNumbers_RandomNumberList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_808
	call	_brl_blitz_NullObjectError
_808:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_30
_32:
	cmp	ebx,_bbNullObject
	jne	_813
	call	_brl_blitz_NullObjectError
_813:
	push	_bb_TRandomNumbers
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_30
	push	_814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_816
	call	_brl_blitz_NullObjectError
_816:
	fld	dword [esi+8]
	fld	dword [_1168]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_817
	push	_818
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TRandomNumbers_RandomNumberList]
	cmp	esi,_bbNullObject
	jne	_820
	call	_brl_blitz_NullObjectError
_820:
	push	dword [ebp-4]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+116]
	add	esp,8
_817:
	push	_821
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_823
	call	_brl_blitz_NullObjectError
_823:
	mov	eax,esi
	fld	dword [eax+8]
	fadd	dword [_1169]
	fstp	dword [eax+8]
	push	_825
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	mov	eax,dword [ebp-16]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	sub	esp,4
	fstp	dword [esp]
	push	_brl_max2d_TImage
	push	dword [ebp-8]
	call	_bbHandleToObject
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	call	_brl_max2d_DrawImage
	add	esp,16
_30:
	cmp	ebx,_bbNullObject
	jne	_811
	call	_brl_blitz_NullObjectError
_811:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_32
_31:
	mov	ebx,0
	jmp	_208
_208:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TEventFire_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_832
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TEventFire
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	ebx,0
	jmp	_211
_211:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TEventFire_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_214:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_836
	push	eax
	call	_bbGCFree
	add	esp,4
_836:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_834
_834:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TEventFire_NewEvent:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	push	ebp
	push	_848
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_837
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TEventFire
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_839
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_841
	call	_brl_blitz_NullObjectError
_841:
	mov	ebx,dword [ebp-4]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_846
	push	eax
	call	_bbGCFree
	add	esp,4
_846:
	mov	dword [esi+8],ebx
	push	_847
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	push	dword [_bb_EventList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	ebx,0
	jmp	_217
_217:
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
	sub	esp,40
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	fld	dword [ebp+24]
	fstp	dword [ebp-20]
	fld	dword [ebp+28]
	fstp	dword [ebp-24]
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp+36]
	mov	dword [ebp-32],eax
	push	ebp
	push	_861
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_850
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fld	dword [ebp-20]
	mov	eax,dword [ebp-28]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_851
	fld	dword [ebp-4]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	faddp	st1,st0
	fld	dword [ebp-20]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_851:
	cmp	eax,0
	je	_853
	push	_854
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-36],0
	jmp	_227
_853:
	push	_855
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fld	dword [ebp-24]
	mov	eax,dword [ebp-32]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_856
	fld	dword [ebp-8]
	mov	eax,dword [ebp-16]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	faddp	st1,st0
	fld	dword [ebp-24]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_856:
	cmp	eax,0
	je	_858
	push	_859
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-36],0
	jmp	_227
_858:
	push	_860
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-36],1
	jmp	_227
_227:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-36]
	mov	esp,ebp
	pop	ebp
	ret
_bb_DrawBG:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],_bbNullObject
	push	ebp
	push	_891
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_871
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	200
	push	30
	call	_brl_random_Rand
	add	esp,8
	cmp	dword [ebp-4],eax
	jle	_873
	push	_874
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_875
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	40
	push	5
	push	_brl_max2d_TImage
	push	dword [ebp-8]
	call	_bbHandleToObject
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	730
	push	30
	call	_brl_random_Rand
	add	esp,8
	push	eax
	push	970
	push	30
	call	_brl_random_Rand
	add	esp,8
	push	eax
	call	_bb_ParticalExplosion
	add	esp,20
	push	_877
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	40
	push	5
	push	_brl_max2d_TImage
	push	dword [ebp-8]
	call	_bbHandleToObject
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	730
	push	30
	call	_brl_random_Rand
	add	esp,8
	push	eax
	push	970
	push	30
	call	_brl_random_Rand
	add	esp,8
	push	eax
	call	_bb_ParticalExplosion
	add	esp,20
_873:
	push	_878
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	10
	push	5
	call	_brl_random_Rand
	add	esp,8
	cmp	dword [ebp-12],eax
	jle	_880
	push	_881
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	push	_882
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRandomNumbers
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-16],eax
_880:
	push	_884
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	255
	push	102
	call	_brl_max2d_SetColor
	add	esp,12
	push	_885
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1077936128
	push	1149239296
	push	1144995840
	push	0
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_886
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1145044992
	push	1077936128
	push	0
	push	0
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1077936128
	push	1149239296
	push	0
	push	0
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_888
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1145044992
	push	1077936128
	push	0
	push	1149190144
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_889
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_890
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TRandomNumbers+48]
	mov	ebx,0
	jmp	_229
_229:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ParticalExplosion:
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
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	fldz
	fstp	dword [ebp-32]
	mov	dword [ebp-36],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_907
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_895
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	mov	dword [ebp-24],1
	mov	edi,dword [ebp-16]
	jmp	_897
_35:
	push	_899
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	359
	push	0
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebp-28],eax
	push	_901
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_1198]
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_1199]
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	fstp	dword [ebp-32]
	push	_903
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TPartical
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_905
	call	_brl_blitz_NullObjectError
_905:
	push	1
	mov	eax,dword [ebp-20]
	sub	eax,10
	mov	ebx,eax
	push	1
	push	20
	call	_brl_random_Rand
	add	esp,8
	add	ebx,eax
	push	ebx
	push	dword [ebp-32]
	push	dword [ebp-28]
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [ebp-4]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,32
	mov	dword [ebp-36],eax
_33:
	add	dword [ebp-24],1
_897:
	cmp	dword [ebp-24],edi
	jle	_35
_34:
	mov	ebx,0
	jmp	_236
_236:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_UpdateTimers:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	push	ebp
	push	_917
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_913
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-4],1
	push	_915
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-8],1
	mov	ebx,0
	jmp	_238
_238:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_269:
	dd	0
_260:
	db	"inc.engine",0
_261:
	db	"EventList",0
_262:
	db	":brl.linkedlist.TList",0
	align	4
_bb_EventList:
	dd	_bbNullObject
_263:
	db	"ButtonList",0
	align	4
_bb_ButtonList:
	dd	_bbNullObject
_264:
	db	"BallList",0
	align	4
_bb_BallList:
	dd	_bbNullObject
_265:
	db	"player",0
_266:
	db	":TPlayerPaddle",0
	align	4
_bb_player:
	dd	_bbNullObject
_267:
	db	"Enemy",0
_268:
	db	":TEnemyPaddle",0
	align	4
_bb_Enemy:
	dd	_bbNullObject
	align	4
_259:
	dd	1
	dd	_260
	dd	4
	dd	_261
	dd	_262
	dd	_bb_EventList
	dd	4
	dd	_263
	dd	_262
	dd	_bb_ButtonList
	dd	4
	dd	_264
	dd	_262
	dd	_bb_BallList
	dd	4
	dd	_265
	dd	_266
	dd	_bb_player
	dd	4
	dd	_267
	dd	_268
	dd	_bb_Enemy
	dd	0
_37:
	db	"TEntity",0
_38:
	db	"x",0
_39:
	db	"f",0
_40:
	db	"y",0
_41:
	db	"New",0
_42:
	db	"()i",0
_43:
	db	"Delete",0
	align	4
_36:
	dd	2
	dd	_37
	dd	3
	dd	_38
	dd	_39
	dd	8
	dd	3
	dd	_40
	dd	_39
	dd	12
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_TEntity:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_36
	dd	16
	dd	__bb_TEntity_New
	dd	__bb_TEntity_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_45:
	db	"TPlayerPaddle",0
_46:
	db	"Update",0
	align	4
_44:
	dd	2
	dd	_45
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	6
	dd	_46
	dd	_42
	dd	48
	dd	0
	align	4
_bb_TPlayerPaddle:
	dd	_bb_TEntity
	dd	_bbObjectFree
	dd	_44
	dd	16
	dd	__bb_TPlayerPaddle_New
	dd	__bb_TPlayerPaddle_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TPlayerPaddle_Update
_48:
	db	"TEnemyPaddle",0
_49:
	db	"speed",0
	align	4
_47:
	dd	2
	dd	_48
	dd	3
	dd	_49
	dd	_39
	dd	16
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	6
	dd	_46
	dd	_42
	dd	48
	dd	0
	align	4
_bb_TEnemyPaddle:
	dd	_bb_TEntity
	dd	_bbObjectFree
	dd	_47
	dd	20
	dd	__bb_TEnemyPaddle_New
	dd	__bb_TEnemyPaddle_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TEnemyPaddle_Update
_51:
	db	"TBall",0
_52:
	db	"xdir",0
_53:
	db	"ydir",0
_54:
	db	"CreateBall",0
_55:
	db	"UpdateBalls",0
	align	4
_50:
	dd	2
	dd	_51
	dd	3
	dd	_52
	dd	_39
	dd	16
	dd	3
	dd	_53
	dd	_39
	dd	20
	dd	3
	dd	_49
	dd	_39
	dd	24
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	7
	dd	_54
	dd	_42
	dd	48
	dd	7
	dd	_55
	dd	_42
	dd	52
	dd	6
	dd	_46
	dd	_42
	dd	56
	dd	0
	align	4
_bb_TBall:
	dd	_bb_TEntity
	dd	_bbObjectFree
	dd	_50
	dd	28
	dd	__bb_TBall_New
	dd	__bb_TBall_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TBall_CreateBall
	dd	__bb_TBall_UpdateBalls
	dd	__bb_TBall_Update
_57:
	db	"TButton",0
_58:
	db	"ID",0
_59:
	db	"$",0
_60:
	db	"Highlight",0
_61:
	db	"b",0
_62:
	db	"Nimage",0
_63:
	db	":brl.max2d.TImage",0
_64:
	db	"HLimage",0
_65:
	db	"CreateButton",0
_66:
	db	"(i,i,$,:brl.max2d.TImage,:brl.max2d.TImage)i",0
_67:
	db	"UpdateButtons",0
	align	4
_56:
	dd	2
	dd	_57
	dd	3
	dd	_58
	dd	_59
	dd	16
	dd	3
	dd	_60
	dd	_61
	dd	20
	dd	3
	dd	_62
	dd	_63
	dd	24
	dd	3
	dd	_64
	dd	_63
	dd	28
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	7
	dd	_65
	dd	_66
	dd	48
	dd	7
	dd	_67
	dd	_42
	dd	52
	dd	6
	dd	_46
	dd	_42
	dd	56
	dd	0
	align	4
_bb_TButton:
	dd	_bb_TEntity
	dd	_bbObjectFree
	dd	_56
	dd	32
	dd	__bb_TButton_New
	dd	__bb_TButton_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TButton_CreateButton
	dd	__bb_TButton_UpdateButtons
	dd	__bb_TButton_Update
_241:
	db	"D:/Programming And Webdesign/Binary Source/BlitzMax/AstroPong/inc.engine.bmx",0
	align	4
_240:
	dd	_241
	dd	148
	dd	2
	align	4
_243:
	dd	0
	align	4
__bb_TPartical_ParticalList:
	dd	_bbNullObject
_69:
	db	"TPartical",0
_70:
	db	"a",0
_71:
	db	"r",0
_72:
	db	"i",0
_73:
	db	"ox",0
_74:
	db	"oy",0
_75:
	db	"img",0
_76:
	db	"dx",0
_77:
	db	"dy",0
_78:
	db	"da",0
_79:
	db	"maxdistance",0
_80:
	db	"fade",0
_81:
	db	"Create",0
_82:
	db	"(i,i,:brl.max2d.TImage,i,f,i,i):TPartical",0
_83:
	db	"():TPartical",0
_84:
	db	"SetPAlpha",0
_85:
	db	"(f)i",0
_86:
	db	"SetPRotation",0
_87:
	db	"(i)i",0
_88:
	db	"Destroy",0
_89:
	db	"SetX",0
_90:
	db	"SetY",0
_91:
	db	"DistanceTraveled",0
_92:
	db	"()f",0
_93:
	db	"UpdateAllParticles",0
	align	4
_68:
	dd	2
	dd	_69
	dd	3
	dd	_70
	dd	_39
	dd	16
	dd	3
	dd	_71
	dd	_72
	dd	20
	dd	3
	dd	_73
	dd	_72
	dd	24
	dd	3
	dd	_74
	dd	_72
	dd	28
	dd	3
	dd	_75
	dd	_63
	dd	32
	dd	3
	dd	_76
	dd	_39
	dd	36
	dd	3
	dd	_77
	dd	_39
	dd	40
	dd	3
	dd	_78
	dd	_39
	dd	44
	dd	3
	dd	_79
	dd	_72
	dd	48
	dd	3
	dd	_80
	dd	_72
	dd	52
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	6
	dd	_81
	dd	_82
	dd	48
	dd	6
	dd	_46
	dd	_83
	dd	52
	dd	6
	dd	_84
	dd	_85
	dd	56
	dd	6
	dd	_86
	dd	_87
	dd	60
	dd	6
	dd	_88
	dd	_42
	dd	64
	dd	6
	dd	_89
	dd	_87
	dd	68
	dd	6
	dd	_90
	dd	_87
	dd	72
	dd	6
	dd	_91
	dd	_92
	dd	76
	dd	7
	dd	_93
	dd	_42
	dd	80
	dd	0
	align	4
_bb_TPartical:
	dd	_bb_TEntity
	dd	_bbObjectFree
	dd	_68
	dd	56
	dd	__bb_TPartical_New
	dd	__bb_TPartical_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TPartical_Create
	dd	__bb_TPartical_Update
	dd	__bb_TPartical_SetPAlpha
	dd	__bb_TPartical_SetPRotation
	dd	__bb_TPartical_Destroy
	dd	__bb_TPartical_SetX
	dd	__bb_TPartical_SetY
	dd	__bb_TPartical_DistanceTraveled
	dd	__bb_TPartical_UpdateAllParticles
	align	4
_245:
	dd	_241
	dd	225
	dd	2
	align	4
__bb_TRandomNumbers_RandomNumberList:
	dd	_bbNullObject
_95:
	db	"TRandomNumbers",0
_96:
	db	"UpdateAll",0
	align	4
_94:
	dd	2
	dd	_95
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	7
	dd	_96
	dd	_42
	dd	48
	dd	0
	align	4
_bb_TRandomNumbers:
	dd	_bb_TEntity
	dd	_bbObjectFree
	dd	_94
	dd	16
	dd	__bb_TRandomNumbers_New
	dd	__bb_TRandomNumbers_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TRandomNumbers_UpdateAll
_98:
	db	"TEventFire",0
_99:
	db	"Message",0
_100:
	db	"NewEvent",0
_101:
	db	"($)i",0
	align	4
_97:
	dd	2
	dd	_98
	dd	3
	dd	_99
	dd	_59
	dd	8
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	7
	dd	_100
	dd	_101
	dd	48
	dd	0
	align	4
_bb_TEventFire:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_97
	dd	12
	dd	__bb_TEventFire_New
	dd	__bb_TEventFire_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TEventFire_NewEvent
	align	4
_248:
	dd	_241
	dd	1
	dd	1
	align	4
_251:
	dd	_241
	dd	2
	dd	1
	align	4
_254:
	dd	_241
	dd	3
	dd	1
	align	4
_257:
	dd	_241
	dd	4
	dd	1
	align	4
_258:
	dd	_241
	dd	5
	dd	1
_272:
	db	"Self",0
_273:
	db	":TEntity",0
	align	4
_271:
	dd	1
	dd	_41
	dd	2
	dd	_272
	dd	_273
	dd	-4
	dd	0
	align	4
_279:
	dd	1
	dd	_41
	dd	2
	dd	_272
	dd	_266
	dd	-4
	dd	0
	align	4
_275:
	dd	_241
	dd	15
	dd	3
	align	4
_931:
	dd	0x44338000
_295:
	db	"Paddleimg",0
	align	4
_294:
	dd	1
	dd	_46
	dd	2
	dd	_272
	dd	_266
	dd	-4
	dd	2
	dd	_295
	dd	_72
	dd	-8
	dd	0
	align	4
_281:
	dd	_241
	dd	18
	dd	3
	align	4
_285:
	dd	_241
	dd	19
	dd	3
	align	4
_287:
	dd	_241
	dd	20
	dd	4
	align	4
_288:
	dd	_241
	dd	22
	dd	3
	align	4
_308:
	dd	1
	dd	_41
	dd	2
	dd	_272
	dd	_268
	dd	-4
	dd	0
	align	4
_296:
	dd	_241
	dd	30
	dd	3
	align	4
_943:
	dd	0x42480000
	align	4
_300:
	dd	_241
	dd	31
	dd	3
	align	4
_944:
	dd	0x43e20000
	align	4
_304:
	dd	_241
	dd	32
	dd	3
	align	4
_945:
	dd	0x41600000
_367:
	db	"closestsofary",0
_368:
	db	"closestsofarx",0
_369:
	db	":TBall",0
_370:
	db	"bx",0
_371:
	db	"padc",0
	align	4
_366:
	dd	1
	dd	_46
	dd	2
	dd	_272
	dd	_268
	dd	-4
	dd	2
	dd	_367
	dd	_39
	dd	-8
	dd	2
	dd	_368
	dd	_39
	dd	-12
	dd	2
	dd	_72
	dd	_369
	dd	-16
	dd	2
	dd	_370
	dd	_72
	dd	-20
	dd	2
	dd	_371
	dd	_72
	dd	-24
	dd	2
	dd	_295
	dd	_72
	dd	-28
	dd	0
	align	4
_310:
	dd	_241
	dd	35
	dd	3
	align	4
_953:
	dd	0x44fa0000
	align	4
_312:
	dd	_241
	dd	36
	dd	3
	align	4
_314:
	dd	_241
	dd	38
	dd	3
	align	4
_324:
	dd	_241
	dd	39
	dd	4
	align	4
_328:
	dd	_241
	dd	40
	dd	5
	align	4
_331:
	dd	_241
	dd	41
	dd	5
	align	4
_334:
	dd	_241
	dd	45
	dd	3
	align	4
_336:
	dd	_241
	dd	46
	dd	3
	align	4
_954:
	dd	0x42700000
	align	4
_340:
	dd	_241
	dd	47
	dd	3
	align	4
_955:
	dd	0x44fa0000
	align	4
_342:
	dd	_241
	dd	48
	dd	4
	align	4
_344:
	dd	_241
	dd	49
	dd	5
	align	4
_346:
	dd	_241
	dd	49
	dd	18
	align	4
_352:
	dd	_241
	dd	50
	dd	5
	align	4
_354:
	dd	_241
	dd	50
	dd	18
	align	4
_360:
	dd	_241
	dd	53
	dd	3
	align	4
_372:
	dd	1
	dd	_41
	dd	2
	dd	_272
	dd	_369
	dd	-4
	dd	0
_396:
	db	"NewBall",0
	align	4
_395:
	dd	1
	dd	_54
	dd	2
	dd	_396
	dd	_369
	dd	-4
	dd	0
	align	4
_374:
	dd	_241
	dd	63
	dd	3
	align	4
_376:
	dd	_241
	dd	64
	dd	3
	align	4
_981:
	dd	0x42480000
	align	4
_382:
	dd	_241
	dd	65
	dd	3
	align	4
_982:
	dd	0x442e8000
	align	4
_386:
	dd	_241
	dd	66
	dd	3
	align	4
_983:
	dd	0xbf800000
	align	4
_390:
	dd	_241
	dd	67
	dd	3
	align	4
_984:
	dd	0x40c00000
	align	4
_394:
	dd	_241
	dd	68
	dd	3
	align	4
_410:
	dd	1
	dd	_55
	dd	2
	dd	_72
	dd	_369
	dd	-4
	dd	0
	align	4
_397:
	dd	_241
	dd	72
	dd	3
	align	4
_407:
	dd	_241
	dd	73
	dd	4
_508:
	db	"BallImg",0
	align	4
_507:
	dd	1
	dd	_46
	dd	2
	dd	_272
	dd	_369
	dd	-4
	dd	2
	dd	_508
	dd	_72
	dd	-8
	dd	0
	align	4
_411:
	dd	_241
	dd	78
	dd	3
	align	4
_419:
	dd	_241
	dd	79
	dd	3
	align	4
_427:
	dd	_241
	dd	82
	dd	3
	align	4
_999:
	dd	0xc1a00000
	align	4
_431:
	dd	_241
	dd	83
	dd	4
	align	4
_434:
	dd	_241
	dd	85
	dd	3
	align	4
_1000:
	dd	0x44400000
	align	4
_438:
	dd	_241
	dd	86
	dd	4
	align	4
_441:
	dd	_241
	dd	88
	dd	3
	align	4
_445:
	dd	_241
	dd	89
	dd	4
	align	4
_449:
	dd	_241
	dd	91
	dd	3
	align	4
_1001:
	dd	0x447b0000
	align	4
_453:
	dd	_241
	dd	92
	dd	4
	align	4
_1002:
	dd	0xbf800000
	align	4
_457:
	dd	_241
	dd	95
	dd	3
	align	4
_467:
	dd	_241
	dd	96
	dd	4
	align	4
_1003:
	dd	0xbf800000
	align	4
_471:
	dd	_241
	dd	97
	dd	4
	align	4
_1004:
	dd	0x41200000
	align	4
_1005:
	dd	0x42700000
	align	4
_1006:
	dd	0x42700000
	align	4
_1007:
	dd	0x40000000
	align	4
_479:
	dd	_241
	dd	100
	dd	3
	align	4
_489:
	dd	_241
	dd	101
	dd	4
	align	4
_493:
	dd	_241
	dd	102
	dd	4
	align	4
_1008:
	dd	0x41200000
	align	4
_1009:
	dd	0x42700000
	align	4
_1010:
	dd	0x42700000
	align	4
_1011:
	dd	0x40000000
	align	4
_501:
	dd	_241
	dd	104
	dd	3
_513:
	db	":TButton",0
	align	4
_512:
	dd	1
	dd	_41
	dd	2
	dd	_272
	dd	_513
	dd	-4
	dd	0
_557:
	db	"_x",0
_558:
	db	"_y",0
_559:
	db	"_id",0
_560:
	db	"NI",0
_561:
	db	"HI",0
_562:
	db	"NewButton",0
	align	4
_556:
	dd	1
	dd	_65
	dd	2
	dd	_557
	dd	_72
	dd	-4
	dd	2
	dd	_558
	dd	_72
	dd	-8
	dd	2
	dd	_559
	dd	_59
	dd	-12
	dd	2
	dd	_560
	dd	_63
	dd	-16
	dd	2
	dd	_561
	dd	_63
	dd	-20
	dd	2
	dd	_562
	dd	_513
	dd	-24
	dd	0
	align	4
_521:
	dd	_241
	dd	115
	dd	3
	align	4
_523:
	dd	_241
	dd	116
	dd	3
	align	4
_527:
	dd	_241
	dd	117
	dd	3
	align	4
_531:
	dd	_241
	dd	118
	dd	3
	align	4
_539:
	dd	_241
	dd	119
	dd	3
	align	4
_547:
	dd	_241
	dd	120
	dd	3
	align	4
_555:
	dd	_241
	dd	121
	dd	3
	align	4
_576:
	dd	1
	dd	_67
	dd	2
	dd	_72
	dd	_513
	dd	-4
	dd	0
	align	4
_563:
	dd	_241
	dd	125
	dd	3
	align	4
_573:
	dd	_241
	dd	126
	dd	4
	align	4
_626:
	dd	1
	dd	_46
	dd	2
	dd	_272
	dd	_513
	dd	-4
	dd	0
	align	4
_577:
	dd	_241
	dd	131
	dd	3
	align	4
_1070:
	dd	0x43160000
	align	4
_1071:
	dd	0x42200000
	align	4
_593:
	dd	_241
	dd	132
	dd	4
	align	4
_597:
	dd	_241
	dd	133
	dd	4
	align	4
_599:
	dd	_241
	dd	134
	dd	5
	align	4
_603:
	dd	_241
	dd	137
	dd	4
	align	4
_607:
	dd	_241
	dd	139
	dd	3
	align	4
_611:
	dd	_241
	dd	140
	dd	4
	align	4
_619:
	dd	_241
	dd	142
	dd	4
_629:
	db	":TPartical",0
	align	4
_628:
	dd	1
	dd	_41
	dd	2
	dd	_272
	dd	_629
	dd	-4
	dd	0
_681:
	db	"_img",0
_682:
	db	"_dir",0
_683:
	db	"_speed",0
_684:
	db	"frames",0
_685:
	db	"_fade",0
	align	4
_680:
	dd	1
	dd	_81
	dd	2
	dd	_272
	dd	_629
	dd	-4
	dd	2
	dd	_557
	dd	_72
	dd	-8
	dd	2
	dd	_558
	dd	_72
	dd	-12
	dd	2
	dd	_681
	dd	_63
	dd	-16
	dd	2
	dd	_682
	dd	_72
	dd	-20
	dd	2
	dd	_683
	dd	_39
	dd	-24
	dd	2
	dd	_684
	dd	_72
	dd	-28
	dd	2
	dd	_685
	dd	_72
	dd	-32
	dd	0
	align	4
_633:
	dd	_241
	dd	159
	dd	3
	align	4
_634:
	dd	_241
	dd	160
	dd	3
	align	4
_638:
	dd	_241
	dd	161
	dd	3
	align	4
_642:
	dd	_241
	dd	162
	dd	3
	align	4
_646:
	dd	_241
	dd	163
	dd	3
	align	4
_650:
	dd	_241
	dd	164
	dd	3
	align	4
_658:
	dd	_241
	dd	165
	dd	3
	align	4
_662:
	dd	_241
	dd	166
	dd	3
	align	4
_666:
	dd	_241
	dd	167
	dd	3
	align	4
_1098:
	dd	0x3f800000
	align	4
_670:
	dd	_241
	dd	168
	dd	3
	align	4
_674:
	dd	_241
	dd	170
	dd	3
	align	4
_676:
	dd	_241
	dd	171
	dd	4
	align	4
_734:
	dd	1
	dd	_46
	dd	2
	dd	_272
	dd	_629
	dd	-4
	dd	0
	align	4
_686:
	dd	_241
	dd	176
	dd	3
	align	4
_692:
	dd	_241
	dd	177
	dd	3
	align	4
_698:
	dd	_241
	dd	178
	dd	3
	align	4
_702:
	dd	_241
	dd	178
	dd	11
	align	4
_708:
	dd	_241
	dd	179
	dd	3
	align	4
_711:
	dd	_241
	dd	180
	dd	3
	align	4
_714:
	dd	_241
	dd	181
	dd	3
	align	4
_721:
	dd	_241
	dd	182
	dd	3
	align	4
_722:
	dd	_241
	dd	183
	dd	3
	align	4
_723:
	dd	_241
	dd	185
	dd	3
	align	4
_727:
	dd	_241
	dd	186
	dd	3
	align	4
_731:
	dd	_241
	dd	187
	dd	4
_740:
	db	"alpha",0
	align	4
_739:
	dd	1
	dd	_84
	dd	2
	dd	_272
	dd	_629
	dd	-4
	dd	2
	dd	_740
	dd	_39
	dd	-8
	dd	0
	align	4
_735:
	dd	_241
	dd	193
	dd	3
_746:
	db	"rot",0
	align	4
_745:
	dd	1
	dd	_86
	dd	2
	dd	_272
	dd	_629
	dd	-4
	dd	2
	dd	_746
	dd	_72
	dd	-8
	dd	0
	align	4
_741:
	dd	_241
	dd	197
	dd	3
	align	4
_750:
	dd	1
	dd	_88
	dd	2
	dd	_272
	dd	_629
	dd	-4
	dd	0
	align	4
_747:
	dd	_241
	dd	201
	dd	3
	align	4
_755:
	dd	1
	dd	_89
	dd	2
	dd	_272
	dd	_629
	dd	-4
	dd	2
	dd	_557
	dd	_72
	dd	-8
	dd	0
	align	4
_751:
	dd	_241
	dd	205
	dd	3
	align	4
_760:
	dd	1
	dd	_90
	dd	2
	dd	_272
	dd	_629
	dd	-4
	dd	2
	dd	_558
	dd	_72
	dd	-8
	dd	0
	align	4
_756:
	dd	_241
	dd	209
	dd	3
_775:
	db	"returnx",0
_776:
	db	"returny",0
	align	4
_774:
	dd	1
	dd	_91
	dd	2
	dd	_272
	dd	_629
	dd	-4
	dd	2
	dd	_775
	dd	_39
	dd	-8
	dd	2
	dd	_776
	dd	_39
	dd	-12
	dd	0
	align	4
_761:
	dd	_241
	dd	213
	dd	3
	align	4
_767:
	dd	_241
	dd	214
	dd	3
	align	4
_773:
	dd	_241
	dd	215
	dd	3
_791:
	db	"UpdateParticals",0
	align	4
_790:
	dd	1
	dd	_93
	dd	2
	dd	_791
	dd	_629
	dd	-4
	dd	0
	align	4
_777:
	dd	_241
	dd	218
	dd	3
	align	4
_787:
	dd	_241
	dd	219
	dd	4
_802:
	db	":TRandomNumbers",0
	align	4
_801:
	dd	1
	dd	_41
	dd	2
	dd	_272
	dd	_802
	dd	-4
	dd	0
	align	4
_792:
	dd	_241
	dd	227
	dd	3
	align	4
_1161:
	dd	0xc1a00000
	align	4
_796:
	dd	_241
	dd	228
	dd	3
	align	4
_800:
	dd	_241
	dd	229
	dd	3
_830:
	db	"biparticle",0
	align	4
_829:
	dd	1
	dd	_96
	dd	2
	dd	_72
	dd	_802
	dd	-4
	dd	2
	dd	_830
	dd	_72
	dd	-8
	dd	2
	dd	_38
	dd	_72
	dd	-12
	dd	2
	dd	_40
	dd	_72
	dd	-16
	dd	0
	align	4
_804:
	dd	_241
	dd	233
	dd	3
	align	4
_814:
	dd	_241
	dd	234
	dd	4
	align	4
_1168:
	dd	0x44820000
	align	4
_818:
	dd	_241
	dd	234
	dd	18
	align	4
_821:
	dd	_241
	dd	235
	dd	4
	align	4
_1169:
	dd	0x41000000
	align	4
_825:
	dd	_241
	dd	236
	dd	4
_833:
	db	":TEventFire",0
	align	4
_832:
	dd	1
	dd	_41
	dd	2
	dd	_272
	dd	_833
	dd	-4
	dd	0
_849:
	db	"msg",0
	align	4
_848:
	dd	1
	dd	_100
	dd	2
	dd	_849
	dd	_59
	dd	-4
	dd	2
	dd	_100
	dd	_833
	dd	-8
	dd	0
	align	4
_837:
	dd	_241
	dd	245
	dd	3
	align	4
_839:
	dd	_241
	dd	246
	dd	3
	align	4
_847:
	dd	_241
	dd	247
	dd	3
_862:
	db	"RectsOverlap",0
_863:
	db	"x0",0
_864:
	db	"y0",0
_865:
	db	"w0",0
_866:
	db	"h0",0
_867:
	db	"x2",0
_868:
	db	"y2",0
_869:
	db	"w2",0
_870:
	db	"h2",0
	align	4
_861:
	dd	1
	dd	_862
	dd	2
	dd	_863
	dd	_39
	dd	-4
	dd	2
	dd	_864
	dd	_39
	dd	-8
	dd	2
	dd	_865
	dd	_72
	dd	-12
	dd	2
	dd	_866
	dd	_72
	dd	-16
	dd	2
	dd	_867
	dd	_39
	dd	-20
	dd	2
	dd	_868
	dd	_39
	dd	-24
	dd	2
	dd	_869
	dd	_72
	dd	-28
	dd	2
	dd	_870
	dd	_72
	dd	-32
	dd	0
	align	4
_850:
	dd	_241
	dd	254
	dd	2
	align	4
_854:
	dd	_241
	dd	254
	dd	43
	align	4
_855:
	dd	_241
	dd	255
	dd	2
	align	4
_859:
	dd	_241
	dd	255
	dd	43
	align	4
_860:
	dd	_241
	dd	256
	dd	2
_892:
	db	"DrawBG",0
_893:
	db	"bitimer",0
_894:
	db	"bitimer2",0
	align	4
_891:
	dd	1
	dd	_892
	dd	2
	dd	_893
	dd	_72
	dd	-4
	dd	2
	dd	_830
	dd	_72
	dd	-8
	dd	2
	dd	_894
	dd	_72
	dd	-12
	dd	2
	dd	_72
	dd	_802
	dd	-16
	dd	0
	align	4
_871:
	dd	_241
	dd	261
	dd	2
	align	4
_874:
	dd	_241
	dd	262
	dd	3
	align	4
_875:
	dd	_241
	dd	263
	dd	3
	align	4
_877:
	dd	_241
	dd	264
	dd	3
	align	4
_878:
	dd	_241
	dd	267
	dd	2
	align	4
_881:
	dd	_241
	dd	268
	dd	3
	align	4
_882:
	dd	_241
	dd	269
	dd	3
	align	4
_884:
	dd	_241
	dd	273
	dd	2
	align	4
_885:
	dd	_241
	dd	274
	dd	2
	align	4
_886:
	dd	_241
	dd	275
	dd	2
	align	4
_887:
	dd	_241
	dd	276
	dd	2
	align	4
_888:
	dd	_241
	dd	277
	dd	2
	align	4
_889:
	dd	_241
	dd	278
	dd	2
	align	4
_890:
	dd	_241
	dd	280
	dd	2
_908:
	db	"ParticalExplosion",0
_909:
	db	"image",0
_910:
	db	"n",0
_911:
	db	"dir",0
_912:
	db	"part",0
	align	4
_907:
	dd	1
	dd	_908
	dd	2
	dd	_557
	dd	_72
	dd	-4
	dd	2
	dd	_558
	dd	_72
	dd	-8
	dd	2
	dd	_909
	dd	_63
	dd	-12
	dd	2
	dd	_910
	dd	_72
	dd	-16
	dd	2
	dd	_684
	dd	_72
	dd	-20
	dd	2
	dd	_72
	dd	_72
	dd	-24
	dd	2
	dd	_911
	dd	_72
	dd	-28
	dd	2
	dd	_49
	dd	_39
	dd	-32
	dd	2
	dd	_912
	dd	_629
	dd	-36
	dd	0
	align	4
_895:
	dd	_241
	dd	287
	dd	2
	align	4
_899:
	dd	_241
	dd	288
	dd	3
	align	4
_901:
	dd	_241
	dd	289
	dd	3
	align	8
_1198:
	dd	0x0,0x3ff80000
	align	8
_1199:
	dd	0x40000000,0x3fb47ae1
	align	4
_903:
	dd	_241
	dd	290
	dd	3
_918:
	db	"UpdateTimers",0
	align	4
_917:
	dd	1
	dd	_918
	dd	2
	dd	_893
	dd	_72
	dd	-4
	dd	2
	dd	_894
	dd	_72
	dd	-8
	dd	0
	align	4
_913:
	dd	_241
	dd	296
	dd	2
	align	4
_915:
	dd	_241
	dd	297
	dd	2
