	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_bank_bank
	extrn	___bb_bankstream_bankstream
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
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
	extrn	_bbCos
	extrn	_bbEmptyString
	extrn	_bbGCFree
	extrn	_bbHandleToObject
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
	extrn	_brl_max2d_ImageHeight
	extrn	_brl_max2d_ImageWidth
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetRotation
	extrn	_brl_max2d_TImage
	extrn	_brl_polledinput_FlushKeys
	extrn	_brl_polledinput_FlushMouse
	extrn	_brl_polledinput_KeyDown
	extrn	_brl_polledinput_MouseHit
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_brl_random_Rand
	public	__bb_TButton_CreateButton
	public	__bb_TButton_Delete
	public	__bb_TButton_New
	public	__bb_TButton_Update
	public	__bb_TButton_UpdateButtons
	public	__bb_TEntity_Delete
	public	__bb_TEntity_New
	public	__bb_TEventFire_Delete
	public	__bb_TEventFire_New
	public	__bb_TEventFire_NewEvent
	public	__bb_TParticle_ClearAll
	public	__bb_TParticle_Create
	public	__bb_TParticle_Delete
	public	__bb_TParticle_Destroy
	public	__bb_TParticle_New
	public	__bb_TParticle_ParticleList
	public	__bb_TParticle_SetPAlpha
	public	__bb_TParticle_SetPRotation
	public	__bb_TParticle_SetX
	public	__bb_TParticle_SetY
	public	__bb_TParticle_Update
	public	__bb_TParticle_UpdateAllParticles
	public	__bb_TPlayer_Delete
	public	__bb_TPlayer_New
	public	__bb_TPlayer_Update
	public	__bb_TSnowFlake_Clear
	public	__bb_TSnowFlake_Delete
	public	__bb_TSnowFlake_New
	public	__bb_TSnowFlake_RandomNumberList
	public	__bb_TSnowFlake_Update
	public	__bb_TSnowFlake_UpdateAll
	public	__bb_TSnowStorm_Delete
	public	__bb_TSnowStorm_New
	public	__bb_TSnowStorm_Update
	public	__bb_main
	public	_bb_AngleToDX
	public	_bb_AngleToDY
	public	_bb_ButtonList
	public	_bb_CleanUp
	public	_bb_EventList
	public	_bb_TButton
	public	_bb_TEntity
	public	_bb_TEventFire
	public	_bb_TParticle
	public	_bb_TPlayer
	public	_bb_TSnowFlake
	public	_bb_TSnowStorm
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_229],0
	je	_230
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_230:
	mov	dword [_229],1
	push	ebp
	push	_224
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
	push	_bb_TEntity
	call	_bbObjectRegisterType
	add	esp,4
	push	_210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_213]
	and	eax,1
	cmp	eax,0
	jne	_214
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [__bb_TParticle_ParticleList],eax
	or	dword [_213],1
_214:
	push	_bb_TParticle
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TPlayer
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TSnowStorm
	call	_bbObjectRegisterType
	add	esp,4
	push	_215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_213]
	and	eax,2
	cmp	eax,0
	jne	_217
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [__bb_TSnowFlake_RandomNumberList],eax
	or	dword [_213],2
_217:
	push	_bb_TSnowFlake
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TButton
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TEventFire
	call	_bbObjectRegisterType
	add	esp,4
	push	_218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_213]
	and	eax,4
	cmp	eax,0
	jne	_220
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_ButtonList],eax
	or	dword [_213],4
_220:
	push	_221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_213]
	and	eax,8
	cmp	eax,0
	jne	_223
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_EventList],eax
	or	dword [_213],8
_223:
	mov	ebx,0
	jmp	_94
_94:
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
	push	_231
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
	jmp	_97
_97:
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
_100:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_234
_234:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParticle_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_236
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TEntity_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TParticle
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
	jmp	_103
_103:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParticle_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_106:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_240
	push	eax
	call	_bbGCFree
	add	esp,4
_240:
	mov	dword [ebx],_bb_TEntity
	push	ebx
	call	__bb_TEntity_Delete
	add	esp,4
	mov	eax,0
	jmp	_238
_238:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParticle_Create:
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
	push	_288
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [__bb_TParticle_ParticleList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_244
	call	_brl_blitz_NullObjectError
_244:
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fstp	dword [ebx+8]
	push	_246
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_248
	call	_brl_blitz_NullObjectError
_248:
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fstp	dword [ebx+12]
	push	_250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_252
	call	_brl_blitz_NullObjectError
_252:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+24],eax
	push	_254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_256
	call	_brl_blitz_NullObjectError
_256:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+28],eax
	push	_258
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_260
	call	_brl_blitz_NullObjectError
_260:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+32]
	dec	dword [eax+4]
	jnz	_265
	push	eax
	call	_bbGCFree
	add	esp,4
_265:
	mov	dword [esi+32],ebx
	push	_266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_268
	call	_brl_blitz_NullObjectError
_268:
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
	push	_270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_272
	call	_brl_blitz_NullObjectError
_272:
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
	push	_274
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_276
	call	_brl_blitz_NullObjectError
_276:
	fld	dword [_745]
	mov	eax,dword [ebp-28]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fdivp	st1,st0
	fstp	dword [ebx+44]
	push	_278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_280
	call	_brl_blitz_NullObjectError
_280:
	mov	eax,dword [ebp-28]
	mov	dword [ebx+48],eax
	push	_282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-32],0
	je	_283
	push	_284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_286
	call	_brl_blitz_NullObjectError
_286:
	mov	dword [ebx+52],1
_283:
	mov	ebx,_bbNullObject
	jmp	_116
_116:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParticle_Update:
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
	push	_344
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_298
	call	_brl_blitz_NullObjectError
_298:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_301
	call	_brl_blitz_NullObjectError
_301:
	fld	dword [ebx+8]
	fadd	dword [esi+36]
	fstp	dword [ebx+8]
	push	_302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_304
	call	_brl_blitz_NullObjectError
_304:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_307
	call	_brl_blitz_NullObjectError
_307:
	fld	dword [ebx+12]
	fadd	dword [esi+40]
	fstp	dword [ebx+12]
	push	_308
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_310
	call	_brl_blitz_NullObjectError
_310:
	cmp	dword [ebx+52],0
	je	_311
	push	_312
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_314
	call	_brl_blitz_NullObjectError
_314:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_317
	call	_brl_blitz_NullObjectError
_317:
	fld	dword [ebx+16]
	fsub	dword [esi+44]
	fstp	dword [ebx+16]
_311:
	push	_318
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_320
	call	_brl_blitz_NullObjectError
_320:
	mov	eax,dword [ebx+20]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_321
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_323
	call	_brl_blitz_NullObjectError
_323:
	push	dword [ebx+16]
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_326
	call	_brl_blitz_NullObjectError
_326:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_328
	call	_brl_blitz_NullObjectError
_328:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_330
	call	_brl_blitz_NullObjectError
_330:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [edi+32]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_331
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_335
	call	_brl_blitz_NullObjectError
_335:
	sub	dword [ebx+48],1
	push	_337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_339
	call	_brl_blitz_NullObjectError
_339:
	cmp	dword [ebx+48],0
	jne	_340
	push	_341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_343
	call	_brl_blitz_NullObjectError
_343:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
_340:
	mov	ebx,_bbNullObject
	jmp	_119
_119:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParticle_SetPAlpha:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	push	ebp
	push	_349
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_345
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_347
	call	_brl_blitz_NullObjectError
_347:
	fld	dword [ebp-8]
	fstp	dword [ebx+16]
	mov	ebx,0
	jmp	_123
_123:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParticle_SetPRotation:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_355
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_353
	call	_brl_blitz_NullObjectError
_353:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+20],eax
	mov	ebx,0
	jmp	_127
_127:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParticle_Destroy:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_360
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TParticle_ParticleList]
	cmp	ebx,_bbNullObject
	jne	_359
	call	_brl_blitz_NullObjectError
_359:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	mov	ebx,0
	jmp	_130
_130:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParticle_SetX:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_365
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_361
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_363
	call	_brl_blitz_NullObjectError
_363:
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fstp	dword [ebx+8]
	mov	ebx,0
	jmp	_134
_134:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParticle_SetY:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_370
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_366
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_368
	call	_brl_blitz_NullObjectError
_368:
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fstp	dword [ebx+12]
	mov	ebx,0
	jmp	_138
_138:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParticle_UpdateAllParticles:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_384
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_371
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	edi,dword [__bb_TParticle_ParticleList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_375
	call	_brl_blitz_NullObjectError
_375:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_22
_24:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_380
	call	_brl_blitz_NullObjectError
_380:
	push	_bb_TParticle
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_22
	push	_381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_383
	call	_brl_blitz_NullObjectError
_383:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
_22:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_378
	call	_brl_blitz_NullObjectError
_378:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_24
_23:
	mov	ebx,0
	jmp	_140
_140:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParticle_ClearAll:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_389
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_386
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TParticle_ParticleList]
	cmp	ebx,_bbNullObject
	jne	_388
	call	_brl_blitz_NullObjectError
_388:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	ebx,0
	jmp	_142
_142:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	push	_402
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TEntity_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TPlayer
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+20]
	push	_390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_392
	call	_brl_blitz_NullObjectError
_392:
	fld	dword [_803]
	fstp	dword [ebx+8]
	push	_394
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_396
	call	_brl_blitz_NullObjectError
_396:
	fld	dword [_804]
	fstp	dword [ebx+12]
	push	_398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_400
	call	_brl_blitz_NullObjectError
_400:
	mov	dword [ebx+16],0
	mov	ebx,0
	jmp	_145
_145:
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
_148:
	mov	dword [eax],_bb_TEntity
	push	eax
	call	__bb_TEntity_Delete
	add	esp,4
	mov	eax,0
	jmp	_404
_404:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPlayer_Update:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	eax,ebp
	push	eax
	push	_465
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_407
	call	_brl_blitz_NullObjectError
_407:
	mov	esi,ebx
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_410
	call	_brl_blitz_NullObjectError
_410:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_412
	call	_brl_blitz_NullObjectError
_412:
	fld	dword [esi+8]
	fstp	dword [ebp-12]
	push	dword [edi+16]
	call	_bb_AngleToDX
	add	esp,4
	fmul	dword [ebx+20]
	fld	dword [ebp-12]
	faddp	st1,st0
	fstp	dword [ebp-12]
	fld	dword [ebp-12]
	fstp	dword [esi+8]
	push	_413
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_415
	call	_brl_blitz_NullObjectError
_415:
	mov	esi,ebx
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_418
	call	_brl_blitz_NullObjectError
_418:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_420
	call	_brl_blitz_NullObjectError
_420:
	fld	dword [esi+12]
	fstp	dword [ebp-16]
	push	dword [edi+16]
	call	_bb_AngleToDY
	add	esp,4
	fmul	dword [ebx+20]
	fld	dword [ebp-16]
	faddp	st1,st0
	fstp	dword [ebp-16]
	fld	dword [ebp-16]
	fstp	dword [esi+12]
	push	_421
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	38
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_422
	push	_423
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_425
	call	_brl_blitz_NullObjectError
_425:
	fld	dword [ebx+20]
	fadd	dword [_812]
	fstp	dword [ebx+20]
_422:
	push	_427
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	39
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_428
	push	_429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_431
	call	_brl_blitz_NullObjectError
_431:
	add	dword [ebx+16],1
_428:
	push	_433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	37
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_434
	push	_435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_437
	call	_brl_blitz_NullObjectError
_437:
	sub	dword [ebx+16],1
_434:
	push	_439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_441
	call	_brl_blitz_NullObjectError
_441:
	cmp	dword [ebx+16],259
	jle	_442
	push	_443
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_445
	call	_brl_blitz_NullObjectError
_445:
	mov	dword [ebx+16],0
_442:
	push	_447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_449
	call	_brl_blitz_NullObjectError
_449:
	cmp	dword [ebx+16],0
	jge	_450
	push	_451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_453
	call	_brl_blitz_NullObjectError
_453:
	mov	dword [ebx+16],259
_450:
	push	_455
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_457
	call	_brl_blitz_NullObjectError
_457:
	mov	eax,dword [ebx+16]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_458
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_461
	call	_brl_blitz_NullObjectError
_461:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_463
	call	_brl_blitz_NullObjectError
_463:
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
	push	_464
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	mov	ebx,0
	jmp	_151
_151:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TSnowStorm_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_467
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TSnowStorm
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	ebx,0
	jmp	_154
_154:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TSnowStorm_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_157:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_469
_469:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TSnowStorm_Update:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	push	ebp
	push	_485
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_470
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_472
	call	_brl_blitz_NullObjectError
_472:
	add	dword [ebx+8],1
	push	_474
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_476
	call	_brl_blitz_NullObjectError
_476:
	push	10
	push	5
	call	_brl_random_Rand
	add	esp,8
	cmp	dword [ebx+8],eax
	jle	_477
	push	_478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_480
	call	_brl_blitz_NullObjectError
_480:
	mov	dword [ebx+8],0
	push	_482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TSnowFlake
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
_477:
	push	_484
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TSnowFlake+52]
	mov	ebx,0
	jmp	_160
_160:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TSnowFlake_New:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_497
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TEntity_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TSnowFlake
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	push	_488
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_490
	call	_brl_blitz_NullObjectError
_490:
	fld	dword [_846]
	fstp	dword [ebx+12]
	push	_492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_494
	call	_brl_blitz_NullObjectError
_494:
	push	1020
	push	10
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fstp	dword [ebx+8]
	push	_496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [__bb_TSnowFlake_RandomNumberList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	ebx,0
	jmp	_163
_163:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TSnowFlake_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_166:
	mov	dword [eax],_bb_TEntity
	push	eax
	call	__bb_TEntity_Delete
	add	esp,4
	mov	eax,0
	jmp	_498
_498:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TSnowFlake_Update:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	push	ebp
	push	_534
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_499
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_501
	call	_brl_blitz_NullObjectError
_501:
	fld	dword [ebx+12]
	fld	dword [_853]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_502
	push	_503
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TSnowFlake_RandomNumberList]
	cmp	ebx,_bbNullObject
	jne	_505
	call	_brl_blitz_NullObjectError
_505:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
_502:
	push	_506
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_508
	call	_brl_blitz_NullObjectError
_508:
	fld	dword [ebx+12]
	fadd	dword [_854]
	fstp	dword [ebx+12]
	push	_510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_512
	call	_brl_blitz_NullObjectError
_512:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_515
	call	_brl_blitz_NullObjectError
_515:
	fld	dword [ebx+8]
	fstp	qword [ebp-16]
	mov	eax,dword [esi+16]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [_855]
	fmulp	st1,st0
	fld	qword [ebp-16]
	faddp	st1,st0
	fstp	qword [ebp-16]
	fld	qword [ebp-16]
	fstp	dword [ebx+8]
	push	_516
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_518
	call	_brl_blitz_NullObjectError
_518:
	add	dword [ebx+16],5
	push	_520
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_522
	call	_brl_blitz_NullObjectError
_522:
	cmp	dword [ebx+16],360
	jle	_523
	push	_524
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_526
	call	_brl_blitz_NullObjectError
_526:
	mov	dword [ebx+16],0
_523:
	push	_528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_531
	call	_brl_blitz_NullObjectError
_531:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_533
	call	_brl_blitz_NullObjectError
_533:
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
	jmp	_169
_169:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TSnowFlake_UpdateAll:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_549
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_536
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	edi,dword [__bb_TSnowFlake_RandomNumberList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_540
	call	_brl_blitz_NullObjectError
_540:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_25
_27:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_545
	call	_brl_blitz_NullObjectError
_545:
	push	_bb_TSnowFlake
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_25
	push	_546
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_548
	call	_brl_blitz_NullObjectError
_548:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
_25:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_543
	call	_brl_blitz_NullObjectError
_543:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_27
_26:
	mov	ebx,0
	jmp	_171
_171:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TSnowFlake_Clear:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_553
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_550
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TSnowFlake_RandomNumberList]
	cmp	ebx,_bbNullObject
	jne	_552
	call	_brl_blitz_NullObjectError
_552:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	ebx,0
	jmp	_173
_173:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	push	_557
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
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],edx
	mov	ebx,0
	jmp	_176
_176:
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
_179:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_561
	push	eax
	call	_bbGCFree
	add	esp,4
_561:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_563
	push	eax
	call	_bbGCFree
	add	esp,4
_563:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_565
	push	eax
	call	_bbGCFree
	add	esp,4
_565:
	mov	dword [ebx],_bb_TEntity
	push	ebx
	call	__bb_TEntity_Delete
	add	esp,4
	mov	eax,0
	jmp	_559
_559:
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
	push	_601
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_566
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TButton
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-24],eax
	push	_568
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_570
	call	_brl_blitz_NullObjectError
_570:
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fstp	dword [ebx+8]
	push	_572
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_574
	call	_brl_blitz_NullObjectError
_574:
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fstp	dword [ebx+12]
	push	_576
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_578
	call	_brl_blitz_NullObjectError
_578:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_583
	push	eax
	call	_bbGCFree
	add	esp,4
_583:
	mov	dword [esi+16],ebx
	push	_584
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_586
	call	_brl_blitz_NullObjectError
_586:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_591
	push	eax
	call	_bbGCFree
	add	esp,4
_591:
	mov	dword [esi+28],ebx
	push	_592
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_594
	call	_brl_blitz_NullObjectError
_594:
	mov	ebx,dword [ebp-20]
	inc	dword [ebx+4]
	mov	eax,dword [esi+32]
	dec	dword [eax+4]
	jnz	_599
	push	eax
	call	_bbGCFree
	add	esp,4
_599:
	mov	dword [esi+32],ebx
	push	_600
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	push	dword [_bb_ButtonList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	ebx,0
	jmp	_186
_186:
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
	push	_619
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_606
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	edi,dword [_bb_ButtonList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_610
	call	_brl_blitz_NullObjectError
_610:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_28
_30:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_615
	call	_brl_blitz_NullObjectError
_615:
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
	je	_28
	push	_616
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_618
	call	_brl_blitz_NullObjectError
_618:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
_28:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_613
	call	_brl_blitz_NullObjectError
_613:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_30
_29:
	mov	ebx,0
	jmp	_188
_188:
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
	sub	esp,24
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_693
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_622
	call	_brl_blitz_NullObjectError
_622:
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-24],eax
	fild	dword [ebp+-24]
	fld	dword [ebx+8]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	je	_627
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_624
	call	_brl_blitz_NullObjectError
_624:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_626
	call	_brl_blitz_NullObjectError
_626:
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-24],eax
	fild	dword [ebp+-24]
	fstp	dword [ebp-20]
	fld	dword [esi+8]
	fstp	dword [ebp-8]
	push	dword [ebx+28]
	call	_brl_max2d_ImageWidth
	add	esp,4
	mov	dword [ebp+-24],eax
	fild	dword [ebp+-24]
	fld	dword [ebp-8]
	faddp	st1,st0
	fstp	dword [ebp-8]
	fld	dword [ebp-8]
	fld	dword [ebp-20]
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_627:
	cmp	eax,0
	je	_631
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_630
	call	_brl_blitz_NullObjectError
_630:
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-24],eax
	fild	dword [ebp+-24]
	fld	dword [ebx+12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_631:
	cmp	eax,0
	je	_637
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_634
	call	_brl_blitz_NullObjectError
_634:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_636
	call	_brl_blitz_NullObjectError
_636:
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-24],eax
	fild	dword [ebp+-24]
	fstp	dword [ebp-16]
	fld	dword [esi+12]
	fstp	dword [ebp-12]
	push	dword [ebx+28]
	call	_brl_max2d_ImageHeight
	add	esp,4
	mov	dword [ebp+-24],eax
	fild	dword [ebp+-24]
	fld	dword [ebp-12]
	faddp	st1,st0
	fstp	dword [ebp-12]
	fld	dword [ebp-12]
	fld	dword [ebp-16]
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_637:
	cmp	eax,0
	je	_639
	push	_640
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_642
	call	_brl_blitz_NullObjectError
_642:
	mov	byte [ebx+20],1
	push	_644
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_646
	call	_brl_blitz_NullObjectError
_646:
	cmp	dword [ebx+24],2
	je	_647
	push	_648
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_650
	call	_brl_blitz_NullObjectError
_650:
	mov	dword [ebx+24],3
_647:
	push	_652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseHit
	add	esp,4
	cmp	eax,0
	je	_653
	push	_654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_656
	call	_brl_blitz_NullObjectError
_656:
	push	dword [ebx+16]
	call	dword [_bb_TEventFire+48]
	add	esp,4
_653:
	jmp	_657
_639:
	push	_658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_660
	call	_brl_blitz_NullObjectError
_660:
	mov	byte [ebx+20],0
	push	_662
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_664
	call	_brl_blitz_NullObjectError
_664:
	mov	dword [ebx+24],1
_657:
	push	_666
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_668
	call	_brl_blitz_NullObjectError
_668:
	cmp	dword [ebx+24],3
	jne	_669
	push	_670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_672
	call	_brl_blitz_NullObjectError
_672:
	mov	dword [ebx+24],2
_669:
	push	_674
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_676
	call	_brl_blitz_NullObjectError
_676:
	movzx	eax,byte [ebx+20]
	cmp	eax,0
	je	_677
	push	_678
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_680
	call	_brl_blitz_NullObjectError
_680:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_682
	call	_brl_blitz_NullObjectError
_682:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_684
	call	_brl_blitz_NullObjectError
_684:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [edi+32]
	call	_brl_max2d_DrawImage
	add	esp,16
	jmp	_685
_677:
	push	_686
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_688
	call	_brl_blitz_NullObjectError
_688:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_690
	call	_brl_blitz_NullObjectError
_690:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_692
	call	_brl_blitz_NullObjectError
_692:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [edi+28]
	call	_brl_max2d_DrawImage
	add	esp,16
_685:
	mov	ebx,0
	jmp	_191
_191:
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
	push	_695
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
	jmp	_194
_194:
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
_197:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_699
	push	eax
	call	_bbGCFree
	add	esp,4
_699:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_697
_697:
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
	push	_711
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_700
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TEventFire
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_704
	call	_brl_blitz_NullObjectError
_704:
	mov	ebx,dword [ebp-4]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_709
	push	eax
	call	_bbGCFree
	add	esp,4
_709:
	mov	dword [esi+8],ebx
	push	_710
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	push	dword [_bb_EventList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	ebx,0
	jmp	_200
_200:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_CleanUp:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_722
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_713
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_EventList]
	cmp	ebx,_bbNullObject
	jne	_715
	call	_brl_blitz_NullObjectError
_715:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ButtonList]
	cmp	ebx,_bbNullObject
	jne	_718
	call	_brl_blitz_NullObjectError
_718:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TParticle+80]
	push	_720
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_FlushKeys
	push	_721
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_FlushMouse
	mov	ebx,0
	jmp	_202
_202:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_AngleToDX:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_725
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_724
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	dword [ebp-8]
	jmp	_205
_205:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	mov	esp,ebp
	pop	ebp
	ret
_bb_AngleToDY:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_728
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fchs
	fstp	dword [ebp-8]
	jmp	_208
_208:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_229:
	dd	0
_225:
	db	"inc.engine",0
_226:
	db	"ButtonList",0
_227:
	db	":brl.linkedlist.TList",0
	align	4
_bb_ButtonList:
	dd	_bbNullObject
_228:
	db	"EventList",0
	align	4
_bb_EventList:
	dd	_bbNullObject
	align	4
_224:
	dd	1
	dd	_225
	dd	4
	dd	_226
	dd	_227
	dd	_bb_ButtonList
	dd	4
	dd	_228
	dd	_227
	dd	_bb_EventList
	dd	0
_32:
	db	"TEntity",0
_33:
	db	"x",0
_34:
	db	"f",0
_35:
	db	"y",0
_36:
	db	"New",0
_37:
	db	"()i",0
_38:
	db	"Delete",0
	align	4
_31:
	dd	2
	dd	_32
	dd	3
	dd	_33
	dd	_34
	dd	8
	dd	3
	dd	_35
	dd	_34
	dd	12
	dd	6
	dd	_36
	dd	_37
	dd	16
	dd	6
	dd	_38
	dd	_37
	dd	20
	dd	0
	align	4
_bb_TEntity:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_31
	dd	16
	dd	__bb_TEntity_New
	dd	__bb_TEntity_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_211:
	db	"D:/Programming And Webdesign/Binary Source/BlitzMax/Xmas shoppers/inc.engine.bmx",0
	align	4
_210:
	dd	_211
	dd	11
	dd	2
	align	4
_213:
	dd	0
	align	4
__bb_TParticle_ParticleList:
	dd	_bbNullObject
_40:
	db	"TParticle",0
_41:
	db	"a",0
_42:
	db	"r",0
_43:
	db	"i",0
_44:
	db	"ox",0
_45:
	db	"oy",0
_46:
	db	"img",0
_47:
	db	":brl.max2d.TImage",0
_48:
	db	"dx",0
_49:
	db	"dy",0
_50:
	db	"da",0
_51:
	db	"maxdistance",0
_52:
	db	"fade",0
_53:
	db	"Create",0
_54:
	db	"(i,i,:brl.max2d.TImage,i,f,i,i):TParticle",0
_55:
	db	"Update",0
_56:
	db	"():TParticle",0
_57:
	db	"SetPAlpha",0
_58:
	db	"(f)i",0
_59:
	db	"SetPRotation",0
_60:
	db	"(i)i",0
_61:
	db	"Destroy",0
_62:
	db	"SetX",0
_63:
	db	"SetY",0
_64:
	db	"UpdateAllParticles",0
_65:
	db	"ClearAll",0
	align	4
_39:
	dd	2
	dd	_40
	dd	3
	dd	_41
	dd	_34
	dd	16
	dd	3
	dd	_42
	dd	_43
	dd	20
	dd	3
	dd	_44
	dd	_43
	dd	24
	dd	3
	dd	_45
	dd	_43
	dd	28
	dd	3
	dd	_46
	dd	_47
	dd	32
	dd	3
	dd	_48
	dd	_34
	dd	36
	dd	3
	dd	_49
	dd	_34
	dd	40
	dd	3
	dd	_50
	dd	_34
	dd	44
	dd	3
	dd	_51
	dd	_43
	dd	48
	dd	3
	dd	_52
	dd	_43
	dd	52
	dd	6
	dd	_36
	dd	_37
	dd	16
	dd	6
	dd	_38
	dd	_37
	dd	20
	dd	6
	dd	_53
	dd	_54
	dd	48
	dd	6
	dd	_55
	dd	_56
	dd	52
	dd	6
	dd	_57
	dd	_58
	dd	56
	dd	6
	dd	_59
	dd	_60
	dd	60
	dd	6
	dd	_61
	dd	_37
	dd	64
	dd	6
	dd	_62
	dd	_60
	dd	68
	dd	6
	dd	_63
	dd	_60
	dd	72
	dd	7
	dd	_64
	dd	_37
	dd	76
	dd	7
	dd	_65
	dd	_37
	dd	80
	dd	0
	align	4
_bb_TParticle:
	dd	_bb_TEntity
	dd	_bbObjectFree
	dd	_39
	dd	56
	dd	__bb_TParticle_New
	dd	__bb_TParticle_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TParticle_Create
	dd	__bb_TParticle_Update
	dd	__bb_TParticle_SetPAlpha
	dd	__bb_TParticle_SetPRotation
	dd	__bb_TParticle_Destroy
	dd	__bb_TParticle_SetX
	dd	__bb_TParticle_SetY
	dd	__bb_TParticle_UpdateAllParticles
	dd	__bb_TParticle_ClearAll
_67:
	db	"TPlayer",0
_68:
	db	"angle",0
_69:
	db	"Acceleration",0
	align	4
_66:
	dd	2
	dd	_67
	dd	3
	dd	_68
	dd	_43
	dd	16
	dd	3
	dd	_69
	dd	_34
	dd	20
	dd	6
	dd	_36
	dd	_37
	dd	16
	dd	6
	dd	_38
	dd	_37
	dd	20
	dd	6
	dd	_55
	dd	_37
	dd	48
	dd	0
	align	4
_bb_TPlayer:
	dd	_bb_TEntity
	dd	_bbObjectFree
	dd	_66
	dd	24
	dd	__bb_TPlayer_New
	dd	__bb_TPlayer_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TPlayer_Update
_71:
	db	"TSnowStorm",0
_72:
	db	"timer",0
	align	4
_70:
	dd	2
	dd	_71
	dd	3
	dd	_72
	dd	_43
	dd	8
	dd	6
	dd	_36
	dd	_37
	dd	16
	dd	6
	dd	_38
	dd	_37
	dd	20
	dd	6
	dd	_55
	dd	_37
	dd	48
	dd	0
	align	4
_bb_TSnowStorm:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_70
	dd	12
	dd	__bb_TSnowStorm_New
	dd	__bb_TSnowStorm_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TSnowStorm_Update
	align	4
_215:
	dd	_211
	dd	128
	dd	2
	align	4
__bb_TSnowFlake_RandomNumberList:
	dd	_bbNullObject
_74:
	db	"TSnowFlake",0
_75:
	db	"UpdateAll",0
_76:
	db	"Clear",0
	align	4
_73:
	dd	2
	dd	_74
	dd	3
	dd	_68
	dd	_43
	dd	16
	dd	6
	dd	_36
	dd	_37
	dd	16
	dd	6
	dd	_38
	dd	_37
	dd	20
	dd	6
	dd	_55
	dd	_37
	dd	48
	dd	7
	dd	_75
	dd	_37
	dd	52
	dd	7
	dd	_76
	dd	_37
	dd	56
	dd	0
	align	4
_bb_TSnowFlake:
	dd	_bb_TEntity
	dd	_bbObjectFree
	dd	_73
	dd	20
	dd	__bb_TSnowFlake_New
	dd	__bb_TSnowFlake_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TSnowFlake_Update
	dd	__bb_TSnowFlake_UpdateAll
	dd	__bb_TSnowFlake_Clear
_78:
	db	"TButton",0
_79:
	db	"id",0
_80:
	db	"$",0
_81:
	db	"Highlight",0
_82:
	db	"b",0
_83:
	db	"Hover",0
_84:
	db	"Nimage",0
_85:
	db	"HLimage",0
_86:
	db	"CreateButton",0
_87:
	db	"(i,i,$,:brl.max2d.TImage,:brl.max2d.TImage)i",0
_88:
	db	"UpdateButtons",0
	align	4
_77:
	dd	2
	dd	_78
	dd	3
	dd	_79
	dd	_80
	dd	16
	dd	3
	dd	_81
	dd	_82
	dd	20
	dd	3
	dd	_83
	dd	_43
	dd	24
	dd	3
	dd	_84
	dd	_47
	dd	28
	dd	3
	dd	_85
	dd	_47
	dd	32
	dd	6
	dd	_36
	dd	_37
	dd	16
	dd	6
	dd	_38
	dd	_37
	dd	20
	dd	7
	dd	_86
	dd	_87
	dd	48
	dd	7
	dd	_88
	dd	_37
	dd	52
	dd	6
	dd	_55
	dd	_37
	dd	56
	dd	0
	align	4
_bb_TButton:
	dd	_bb_TEntity
	dd	_bbObjectFree
	dd	_77
	dd	36
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
_90:
	db	"TEventFire",0
_91:
	db	"Message",0
_92:
	db	"NewEvent",0
_93:
	db	"($)i",0
	align	4
_89:
	dd	2
	dd	_90
	dd	3
	dd	_91
	dd	_80
	dd	8
	dd	6
	dd	_36
	dd	_37
	dd	16
	dd	6
	dd	_38
	dd	_37
	dd	20
	dd	7
	dd	_92
	dd	_93
	dd	48
	dd	0
	align	4
_bb_TEventFire:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_89
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
_218:
	dd	_211
	dd	1
	dd	1
	align	4
_221:
	dd	_211
	dd	2
	dd	1
_232:
	db	"Self",0
_233:
	db	":TEntity",0
	align	4
_231:
	dd	1
	dd	_36
	dd	2
	dd	_232
	dd	_233
	dd	-4
	dd	0
_237:
	db	":TParticle",0
	align	4
_236:
	dd	1
	dd	_36
	dd	2
	dd	_232
	dd	_237
	dd	-4
	dd	0
_289:
	db	"_x",0
_290:
	db	"_y",0
_291:
	db	"_img",0
_292:
	db	"_dir",0
_293:
	db	"_speed",0
_294:
	db	"frames",0
_295:
	db	"_fade",0
	align	4
_288:
	dd	1
	dd	_53
	dd	2
	dd	_232
	dd	_237
	dd	-4
	dd	2
	dd	_289
	dd	_43
	dd	-8
	dd	2
	dd	_290
	dd	_43
	dd	-12
	dd	2
	dd	_291
	dd	_47
	dd	-16
	dd	2
	dd	_292
	dd	_43
	dd	-20
	dd	2
	dd	_293
	dd	_34
	dd	-24
	dd	2
	dd	_294
	dd	_43
	dd	-28
	dd	2
	dd	_295
	dd	_43
	dd	-32
	dd	0
	align	4
_241:
	dd	_211
	dd	22
	dd	3
	align	4
_242:
	dd	_211
	dd	23
	dd	3
	align	4
_246:
	dd	_211
	dd	24
	dd	3
	align	4
_250:
	dd	_211
	dd	25
	dd	3
	align	4
_254:
	dd	_211
	dd	26
	dd	3
	align	4
_258:
	dd	_211
	dd	27
	dd	3
	align	4
_266:
	dd	_211
	dd	28
	dd	3
	align	4
_270:
	dd	_211
	dd	29
	dd	3
	align	4
_274:
	dd	_211
	dd	30
	dd	3
	align	4
_745:
	dd	0x3f800000
	align	4
_278:
	dd	_211
	dd	31
	dd	3
	align	4
_282:
	dd	_211
	dd	33
	dd	3
	align	4
_284:
	dd	_211
	dd	34
	dd	4
	align	4
_344:
	dd	1
	dd	_55
	dd	2
	dd	_232
	dd	_237
	dd	-4
	dd	0
	align	4
_296:
	dd	_211
	dd	40
	dd	3
	align	4
_302:
	dd	_211
	dd	41
	dd	3
	align	4
_308:
	dd	_211
	dd	42
	dd	3
	align	4
_312:
	dd	_211
	dd	42
	dd	11
	align	4
_318:
	dd	_211
	dd	43
	dd	3
	align	4
_321:
	dd	_211
	dd	44
	dd	3
	align	4
_324:
	dd	_211
	dd	45
	dd	3
	align	4
_331:
	dd	_211
	dd	46
	dd	3
	align	4
_332:
	dd	_211
	dd	47
	dd	3
	align	4
_333:
	dd	_211
	dd	49
	dd	3
	align	4
_337:
	dd	_211
	dd	50
	dd	3
	align	4
_341:
	dd	_211
	dd	51
	dd	4
_350:
	db	"alpha",0
	align	4
_349:
	dd	1
	dd	_57
	dd	2
	dd	_232
	dd	_237
	dd	-4
	dd	2
	dd	_350
	dd	_34
	dd	-8
	dd	0
	align	4
_345:
	dd	_211
	dd	58
	dd	3
_356:
	db	"rot",0
	align	4
_355:
	dd	1
	dd	_59
	dd	2
	dd	_232
	dd	_237
	dd	-4
	dd	2
	dd	_356
	dd	_43
	dd	-8
	dd	0
	align	4
_351:
	dd	_211
	dd	62
	dd	3
	align	4
_360:
	dd	1
	dd	_61
	dd	2
	dd	_232
	dd	_237
	dd	-4
	dd	0
	align	4
_357:
	dd	_211
	dd	66
	dd	3
	align	4
_365:
	dd	1
	dd	_62
	dd	2
	dd	_232
	dd	_237
	dd	-4
	dd	2
	dd	_289
	dd	_43
	dd	-8
	dd	0
	align	4
_361:
	dd	_211
	dd	70
	dd	3
	align	4
_370:
	dd	1
	dd	_63
	dd	2
	dd	_232
	dd	_237
	dd	-4
	dd	2
	dd	_290
	dd	_43
	dd	-8
	dd	0
	align	4
_366:
	dd	_211
	dd	74
	dd	3
_385:
	db	"UpdateParticles",0
	align	4
_384:
	dd	1
	dd	_64
	dd	2
	dd	_385
	dd	_237
	dd	-4
	dd	0
	align	4
_371:
	dd	_211
	dd	78
	dd	3
	align	4
_381:
	dd	_211
	dd	79
	dd	4
	align	4
_389:
	dd	1
	dd	_65
	dd	0
	align	4
_386:
	dd	_211
	dd	84
	dd	3
_403:
	db	":TPlayer",0
	align	4
_402:
	dd	1
	dd	_36
	dd	2
	dd	_232
	dd	_403
	dd	-4
	dd	0
	align	4
_390:
	dd	_211
	dd	93
	dd	3
	align	4
_803:
	dd	0x43fa0000
	align	4
_394:
	dd	_211
	dd	94
	dd	3
	align	4
_804:
	dd	0x44270000
	align	4
_398:
	dd	_211
	dd	95
	dd	3
_466:
	db	"playerimg",0
	align	4
_465:
	dd	1
	dd	_55
	dd	2
	dd	_232
	dd	_403
	dd	-4
	dd	2
	dd	_466
	dd	_43
	dd	-8
	dd	0
	align	4
_405:
	dd	_211
	dd	99
	dd	3
	align	4
_413:
	dd	_211
	dd	100
	dd	3
	align	4
_421:
	dd	_211
	dd	101
	dd	3
	align	4
_423:
	dd	_211
	dd	101
	dd	22
	align	4
_812:
	dd	0x3ca3d70a
	align	4
_427:
	dd	_211
	dd	102
	dd	3
	align	4
_429:
	dd	_211
	dd	102
	dd	25
	align	4
_433:
	dd	_211
	dd	103
	dd	3
	align	4
_435:
	dd	_211
	dd	103
	dd	24
	align	4
_439:
	dd	_211
	dd	104
	dd	3
	align	4
_443:
	dd	_211
	dd	104
	dd	18
	align	4
_447:
	dd	_211
	dd	105
	dd	3
	align	4
_451:
	dd	_211
	dd	105
	dd	16
	align	4
_455:
	dd	_211
	dd	107
	dd	3
	align	4
_458:
	dd	_211
	dd	108
	dd	3
	align	4
_464:
	dd	_211
	dd	109
	dd	3
_468:
	db	":TSnowStorm",0
	align	4
_467:
	dd	1
	dd	_36
	dd	2
	dd	_232
	dd	_468
	dd	-4
	dd	0
_486:
	db	"flake",0
_487:
	db	":TSnowFlake",0
	align	4
_485:
	dd	1
	dd	_55
	dd	2
	dd	_232
	dd	_468
	dd	-4
	dd	2
	dd	_486
	dd	_487
	dd	-8
	dd	0
	align	4
_470:
	dd	_211
	dd	117
	dd	3
	align	4
_474:
	dd	_211
	dd	118
	dd	3
	align	4
_478:
	dd	_211
	dd	119
	dd	4
	align	4
_482:
	dd	_211
	dd	120
	dd	4
	align	4
_484:
	dd	_211
	dd	122
	dd	3
	align	4
_497:
	dd	1
	dd	_36
	dd	2
	dd	_232
	dd	_487
	dd	-4
	dd	0
	align	4
_488:
	dd	_211
	dd	131
	dd	3
	align	4
_846:
	dd	0xc1200000
	align	4
_492:
	dd	_211
	dd	132
	dd	3
	align	4
_496:
	dd	_211
	dd	133
	dd	3
_535:
	db	"flakeimage",0
	align	4
_534:
	dd	1
	dd	_55
	dd	2
	dd	_232
	dd	_487
	dd	-4
	dd	2
	dd	_535
	dd	_43
	dd	-8
	dd	0
	align	4
_499:
	dd	_211
	dd	136
	dd	3
	align	4
_853:
	dd	0x44458000
	align	4
_503:
	dd	_211
	dd	136
	dd	14
	align	4
_506:
	dd	_211
	dd	137
	dd	3
	align	4
_854:
	dd	0x41000000
	align	4
_510:
	dd	_211
	dd	138
	dd	3
	align	8
_855:
	dd	0x0,0x40240000
	align	4
_516:
	dd	_211
	dd	139
	dd	3
	align	4
_520:
	dd	_211
	dd	140
	dd	3
	align	4
_524:
	dd	_211
	dd	140
	dd	18
	align	4
_528:
	dd	_211
	dd	141
	dd	3
	align	4
_549:
	dd	1
	dd	_75
	dd	2
	dd	_43
	dd	_487
	dd	-4
	dd	0
	align	4
_536:
	dd	_211
	dd	145
	dd	3
	align	4
_546:
	dd	_211
	dd	146
	dd	4
	align	4
_553:
	dd	1
	dd	_76
	dd	0
	align	4
_550:
	dd	_211
	dd	150
	dd	3
_558:
	db	":TButton",0
	align	4
_557:
	dd	1
	dd	_36
	dd	2
	dd	_232
	dd	_558
	dd	-4
	dd	0
_602:
	db	"_id",0
_603:
	db	"NI",0
_604:
	db	"HI",0
_605:
	db	"NewButton",0
	align	4
_601:
	dd	1
	dd	_86
	dd	2
	dd	_289
	dd	_43
	dd	-4
	dd	2
	dd	_290
	dd	_43
	dd	-8
	dd	2
	dd	_602
	dd	_80
	dd	-12
	dd	2
	dd	_603
	dd	_47
	dd	-16
	dd	2
	dd	_604
	dd	_47
	dd	-20
	dd	2
	dd	_605
	dd	_558
	dd	-24
	dd	0
	align	4
_566:
	dd	_211
	dd	165
	dd	3
	align	4
_568:
	dd	_211
	dd	166
	dd	3
	align	4
_572:
	dd	_211
	dd	167
	dd	3
	align	4
_576:
	dd	_211
	dd	168
	dd	3
	align	4
_584:
	dd	_211
	dd	169
	dd	3
	align	4
_592:
	dd	_211
	dd	170
	dd	3
	align	4
_600:
	dd	_211
	dd	171
	dd	3
	align	4
_619:
	dd	1
	dd	_88
	dd	2
	dd	_43
	dd	_558
	dd	-4
	dd	0
	align	4
_606:
	dd	_211
	dd	176
	dd	3
	align	4
_616:
	dd	_211
	dd	177
	dd	4
	align	4
_693:
	dd	1
	dd	_55
	dd	2
	dd	_232
	dd	_558
	dd	-4
	dd	0
	align	4
_620:
	dd	_211
	dd	183
	dd	3
	align	4
_640:
	dd	_211
	dd	184
	dd	4
	align	4
_644:
	dd	_211
	dd	185
	dd	4
	align	4
_648:
	dd	_211
	dd	185
	dd	18
	align	4
_652:
	dd	_211
	dd	186
	dd	4
	align	4
_654:
	dd	_211
	dd	187
	dd	5
	align	4
_658:
	dd	_211
	dd	191
	dd	4
	align	4
_662:
	dd	_211
	dd	192
	dd	4
	align	4
_666:
	dd	_211
	dd	194
	dd	3
	align	4
_670:
	dd	_211
	dd	196
	dd	4
	align	4
_674:
	dd	_211
	dd	198
	dd	3
	align	4
_678:
	dd	_211
	dd	199
	dd	4
	align	4
_686:
	dd	_211
	dd	201
	dd	4
_696:
	db	":TEventFire",0
	align	4
_695:
	dd	1
	dd	_36
	dd	2
	dd	_232
	dd	_696
	dd	-4
	dd	0
_712:
	db	"msg",0
	align	4
_711:
	dd	1
	dd	_92
	dd	2
	dd	_712
	dd	_80
	dd	-4
	dd	2
	dd	_92
	dd	_696
	dd	-8
	dd	0
	align	4
_700:
	dd	_211
	dd	212
	dd	3
	align	4
_702:
	dd	_211
	dd	213
	dd	3
	align	4
_710:
	dd	_211
	dd	214
	dd	3
_723:
	db	"CleanUp",0
	align	4
_722:
	dd	1
	dd	_723
	dd	0
	align	4
_713:
	dd	_211
	dd	225
	dd	2
	align	4
_716:
	dd	_211
	dd	226
	dd	2
	align	4
_719:
	dd	_211
	dd	227
	dd	2
	align	4
_720:
	dd	_211
	dd	228
	dd	2
	align	4
_721:
	dd	_211
	dd	229
	dd	2
_726:
	db	"AngleToDX",0
	align	4
_725:
	dd	1
	dd	_726
	dd	2
	dd	_68
	dd	_43
	dd	-4
	dd	0
	align	4
_724:
	dd	_211
	dd	233
	dd	2
_729:
	db	"AngleToDY",0
	align	4
_728:
	dd	1
	dd	_729
	dd	2
	dd	_68
	dd	_43
	dd	-4
	dd	0
	align	4
_727:
	dd	_211
	dd	237
	dd	2
