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
	extrn	_bbAppTitle
	extrn	_bbCos
	extrn	_bbEnd
	extrn	_bbFloatAbs
	extrn	_bbGCFree
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
	extrn	_bbSin
	extrn	_bbStringClass
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_linkedlist_ListAddLast
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_CreateImage
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawOval
	extrn	_brl_max2d_GrabImage
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetRotation
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_polledinput_MouseHit
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_brl_random_Rand
	extrn	_brl_random_Rnd
	extrn	_brl_random_SeedRnd
	public	__bb_TPartical_Create
	public	__bb_TPartical_Delete
	public	__bb_TPartical_Destroy
	public	__bb_TPartical_DistanceTraveled
	public	__bb_TPartical_New
	public	__bb_TPartical_SetPAlpha
	public	__bb_TPartical_SetPRotation
	public	__bb_TPartical_SetX
	public	__bb_TPartical_SetY
	public	__bb_TPartical_Update
	public	__bb_main
	public	_bb_ParticalExplosion
	public	_bb_ParticalList
	public	_bb_TPartical
	public	_bb_dot
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	cmp	dword [_156],0
	je	_157
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_157:
	mov	dword [_156],1
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_149
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
	push	_bb_TPartical
	call	_bbObjectRegisterType
	add	esp,4
	push	_111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	push	eax
	call	_brl_random_SeedRnd
	add	esp,4
	push	_113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_115]
	and	eax,1
	cmp	eax,0
	jne	_116
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_ParticalList],eax
	or	dword [_115],1
_116:
	push	_117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_21
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_121
	push	eax
	call	_bbGCFree
	add	esp,4
_121:
	mov	dword [_bbAppTitle],ebx
	push	_122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	push	_123
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_115]
	and	eax,2
	cmp	eax,0
	jne	_126
	push	-1
	push	1
	push	5
	push	5
	call	_brl_max2d_CreateImage
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_dot],eax
	or	dword [_115],2
_126:
	push	_127
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1084227584
	push	0
	push	0
	call	_brl_max2d_DrawOval
	add	esp,16
	push	_128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	push	dword [_bb_dot]
	call	_brl_max2d_GrabImage
	add	esp,16
	push	_129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_22
_24:
	push	_130
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	edi,dword [_bb_ParticalList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_135
	call	_brl_blitz_NullObjectError
_135:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_25
_27:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_140
	call	_brl_blitz_NullObjectError
_140:
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
	je	_25
	push	_141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_143
	call	_brl_blitz_NullObjectError
_143:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
_25:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_138
	call	_brl_blitz_NullObjectError
_138:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_27
_26:
	push	_144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseHit
	add	esp,4
	cmp	eax,0
	je	_145
	push	_146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	100
	push	50
	push	dword [_bb_dot]
	call	_brl_polledinput_MouseY
	push	eax
	call	_brl_polledinput_MouseX
	push	eax
	call	_bb_ParticalExplosion
	add	esp,20
_145:
	push	_147
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_22:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_24
_23:
	push	_148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
_61:
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
	push	_159
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TPartical
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
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
_64:
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
_67:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_163
	push	eax
	call	_bbGCFree
	add	esp,4
_163:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
_161:
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
	push	_211
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [_bb_ParticalList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_167
	call	_brl_blitz_NullObjectError
_167:
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fstp	dword [ebx+8]
	push	_169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_171
	call	_brl_blitz_NullObjectError
_171:
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fstp	dword [ebx+12]
	push	_173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_175
	call	_brl_blitz_NullObjectError
_175:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+24],eax
	push	_177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_179
	call	_brl_blitz_NullObjectError
_179:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+28],eax
	push	_181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_183
	call	_brl_blitz_NullObjectError
_183:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+32]
	dec	dword [eax+4]
	jnz	_188
	push	eax
	call	_bbGCFree
	add	esp,4
_188:
	mov	dword [esi+32],ebx
	push	_189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_191
	call	_brl_blitz_NullObjectError
_191:
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
	push	_193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_195
	call	_brl_blitz_NullObjectError
_195:
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
	push	_197
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_199
	call	_brl_blitz_NullObjectError
_199:
	fld	dword [_344]
	mov	eax,dword [ebp-28]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fdivp	st1,st0
	fstp	dword [ebx+44]
	push	_201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_203
	call	_brl_blitz_NullObjectError
_203:
	mov	eax,dword [ebp-28]
	mov	dword [ebx+48],eax
	push	_205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-32],0
	je	_206
	push	_207
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_209
	call	_brl_blitz_NullObjectError
_209:
	mov	dword [ebx+52],1
_206:
	mov	ebx,_bbNullObject
_77:
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
	push	_267
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_219
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_221
	call	_brl_blitz_NullObjectError
_221:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_224
	call	_brl_blitz_NullObjectError
_224:
	fld	dword [ebx+8]
	fadd	dword [esi+36]
	fstp	dword [ebx+8]
	push	_225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_227
	call	_brl_blitz_NullObjectError
_227:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_230
	call	_brl_blitz_NullObjectError
_230:
	fld	dword [ebx+12]
	fadd	dword [esi+40]
	fstp	dword [ebx+12]
	push	_231
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_233
	call	_brl_blitz_NullObjectError
_233:
	cmp	dword [ebx+52],0
	je	_234
	push	_235
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_237
	call	_brl_blitz_NullObjectError
_237:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_240
	call	_brl_blitz_NullObjectError
_240:
	fld	dword [ebx+16]
	fsub	dword [esi+44]
	fstp	dword [ebx+16]
_234:
	push	_241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_243
	call	_brl_blitz_NullObjectError
_243:
	mov	eax,dword [ebx+20]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_246
	call	_brl_blitz_NullObjectError
_246:
	push	dword [ebx+16]
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_249
	call	_brl_blitz_NullObjectError
_249:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_251
	call	_brl_blitz_NullObjectError
_251:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_253
	call	_brl_blitz_NullObjectError
_253:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [edi+32]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_258
	call	_brl_blitz_NullObjectError
_258:
	sub	dword [ebx+48],1
	push	_260
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_262
	call	_brl_blitz_NullObjectError
_262:
	cmp	dword [ebx+48],0
	jne	_263
	push	_264
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_266
	call	_brl_blitz_NullObjectError
_266:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
_263:
	mov	ebx,_bbNullObject
_80:
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
	push	_272
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_268
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_270
	call	_brl_blitz_NullObjectError
_270:
	fld	dword [ebp-8]
	fstp	dword [ebx+16]
	mov	ebx,0
_84:
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
	push	_278
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_274
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_276
	call	_brl_blitz_NullObjectError
_276:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+20],eax
	mov	ebx,0
_88:
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
	push	_283
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_280
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ParticalList]
	cmp	ebx,_bbNullObject
	jne	_282
	call	_brl_blitz_NullObjectError
_282:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	mov	ebx,0
_91:
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
	push	_288
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_286
	call	_brl_blitz_NullObjectError
_286:
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fstp	dword [ebx+8]
	mov	ebx,0
_95:
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
	push	_293
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_289
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_291
	call	_brl_blitz_NullObjectError
_291:
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fstp	dword [ebx+12]
	mov	ebx,0
_99:
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
	push	_307
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_296
	call	_brl_blitz_NullObjectError
_296:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_298
	call	_brl_blitz_NullObjectError
_298:
	mov	eax,dword [esi+24]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatAbs
	add	esp,8
	fstp	dword [ebp-8]
	push	_300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_302
	call	_brl_blitz_NullObjectError
_302:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_304
	call	_brl_blitz_NullObjectError
_304:
	mov	eax,dword [esi+28]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatAbs
	add	esp,8
	fstp	dword [ebp-12]
	push	_306
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fadd	dword [ebp-12]
	fstp	dword [ebp-16]
_102:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-16]
	pop	esi
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
	push	ebp
	push	_322
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_310
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	mov	dword [ebp-24],1
	mov	ebx,dword [ebp-16]
	jmp	_312
_20:
	push	_314
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	359
	push	0
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebp-28],eax
	push	_316
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_400]
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_401]
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	fstp	dword [ebp-32]
	push	_318
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TPartical
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_320
	call	_brl_blitz_NullObjectError
_320:
	push	0
	push	0
	push	0
	push	0
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [ebp-4]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,32
	mov	dword [ebp-36],eax
_18:
	add	dword [ebp-24],1
_312:
	cmp	dword [ebp-24],ebx
	jle	_20
_19:
	mov	ebx,0
_109:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_156:
	dd	0
_150:
	db	"part_test",0
_151:
	db	"ParticalList",0
_152:
	db	":brl.linkedlist.TList",0
	align	4
_bb_ParticalList:
	dd	_bbNullObject
_153:
	db	"dot",0
_39:
	db	":brl.max2d.TImage",0
	align	4
_bb_dot:
	dd	_bbNullObject
_154:
	db	"UpdateParticals",0
_155:
	db	":TPartical",0
	align	4
_149:
	dd	1
	dd	_150
	dd	4
	dd	_151
	dd	_152
	dd	_bb_ParticalList
	dd	4
	dd	_153
	dd	_39
	dd	_bb_dot
	dd	2
	dd	_154
	dd	_155
	dd	-4
	dd	0
_29:
	db	"TPartical",0
_30:
	db	"x",0
_31:
	db	"f",0
_32:
	db	"y",0
_33:
	db	"a",0
_34:
	db	"r",0
_35:
	db	"i",0
_36:
	db	"ox",0
_37:
	db	"oy",0
_38:
	db	"img",0
_40:
	db	"dx",0
_41:
	db	"dy",0
_42:
	db	"da",0
_43:
	db	"maxdistance",0
_44:
	db	"fade",0
_45:
	db	"New",0
_46:
	db	"()i",0
_47:
	db	"Delete",0
_48:
	db	"Create",0
_49:
	db	"(i,i,:brl.max2d.TImage,i,f,i,i):TPartical",0
_50:
	db	"Update",0
_51:
	db	"():TPartical",0
_52:
	db	"SetPAlpha",0
_53:
	db	"(f)i",0
_54:
	db	"SetPRotation",0
_55:
	db	"(i)i",0
_56:
	db	"Destroy",0
_57:
	db	"SetX",0
_58:
	db	"SetY",0
_59:
	db	"DistanceTraveled",0
_60:
	db	"()f",0
	align	4
_28:
	dd	2
	dd	_29
	dd	3
	dd	_30
	dd	_31
	dd	8
	dd	3
	dd	_32
	dd	_31
	dd	12
	dd	3
	dd	_33
	dd	_31
	dd	16
	dd	3
	dd	_34
	dd	_35
	dd	20
	dd	3
	dd	_36
	dd	_35
	dd	24
	dd	3
	dd	_37
	dd	_35
	dd	28
	dd	3
	dd	_38
	dd	_39
	dd	32
	dd	3
	dd	_40
	dd	_31
	dd	36
	dd	3
	dd	_41
	dd	_31
	dd	40
	dd	3
	dd	_42
	dd	_31
	dd	44
	dd	3
	dd	_43
	dd	_35
	dd	48
	dd	3
	dd	_44
	dd	_35
	dd	52
	dd	6
	dd	_45
	dd	_46
	dd	16
	dd	6
	dd	_47
	dd	_46
	dd	20
	dd	6
	dd	_48
	dd	_49
	dd	48
	dd	6
	dd	_50
	dd	_51
	dd	52
	dd	6
	dd	_52
	dd	_53
	dd	56
	dd	6
	dd	_54
	dd	_55
	dd	60
	dd	6
	dd	_56
	dd	_46
	dd	64
	dd	6
	dd	_57
	dd	_55
	dd	68
	dd	6
	dd	_58
	dd	_55
	dd	72
	dd	6
	dd	_59
	dd	_60
	dd	76
	dd	0
	align	4
_bb_TPartical:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_28
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
_112:
	db	"D:/KIDS/Aarons Programs/Source/BlitzMax/Breakout2/part_test.bmx",0
	align	4
_111:
	dd	_112
	dd	1
	dd	1
	align	4
_113:
	dd	_112
	dd	3
	dd	1
	align	4
_115:
	dd	0
	align	4
_117:
	dd	_112
	dd	95
	dd	1
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	80,97,114,116,105,99,97,108,32,116,101,115,116,32,45,32
	dw	99,108,105,99,107,32,116,111,32,102,105,114,101
	align	4
_122:
	dd	_112
	dd	96
	dd	1
	align	4
_123:
	dd	_112
	dd	97
	dd	1
	align	4
_124:
	dd	_112
	dd	100
	dd	1
	align	4
_127:
	dd	_112
	dd	101
	dd	1
	align	4
_128:
	dd	_112
	dd	102
	dd	1
	align	4
_129:
	dd	_112
	dd	104
	dd	1
	align	4
_130:
	dd	_112
	dd	105
	dd	1
	align	4
_131:
	dd	_112
	dd	106
	dd	2
	align	4
_141:
	dd	_112
	dd	107
	dd	3
	align	4
_144:
	dd	_112
	dd	109
	dd	2
	align	4
_146:
	dd	_112
	dd	109
	dd	17
	align	4
_147:
	dd	_112
	dd	110
	dd	1
	align	4
_148:
	dd	_112
	dd	112
	dd	1
_160:
	db	"Self",0
	align	4
_159:
	dd	1
	dd	_45
	dd	2
	dd	_160
	dd	_155
	dd	-4
	dd	0
_212:
	db	"_x",0
_213:
	db	"_y",0
_214:
	db	"_img",0
_215:
	db	"_dir",0
_216:
	db	"_speed",0
_217:
	db	"frames",0
_218:
	db	"_fade",0
	align	4
_211:
	dd	1
	dd	_48
	dd	2
	dd	_160
	dd	_155
	dd	-4
	dd	2
	dd	_212
	dd	_35
	dd	-8
	dd	2
	dd	_213
	dd	_35
	dd	-12
	dd	2
	dd	_214
	dd	_39
	dd	-16
	dd	2
	dd	_215
	dd	_35
	dd	-20
	dd	2
	dd	_216
	dd	_31
	dd	-24
	dd	2
	dd	_217
	dd	_35
	dd	-28
	dd	2
	dd	_218
	dd	_35
	dd	-32
	dd	0
	align	4
_164:
	dd	_112
	dd	15
	dd	3
	align	4
_165:
	dd	_112
	dd	16
	dd	3
	align	4
_169:
	dd	_112
	dd	17
	dd	3
	align	4
_173:
	dd	_112
	dd	18
	dd	3
	align	4
_177:
	dd	_112
	dd	19
	dd	3
	align	4
_181:
	dd	_112
	dd	20
	dd	3
	align	4
_189:
	dd	_112
	dd	21
	dd	3
	align	4
_193:
	dd	_112
	dd	22
	dd	3
	align	4
_197:
	dd	_112
	dd	23
	dd	3
	align	4
_344:
	dd	0x3f800000
	align	4
_201:
	dd	_112
	dd	24
	dd	3
	align	4
_205:
	dd	_112
	dd	29
	dd	3
	align	4
_207:
	dd	_112
	dd	30
	dd	4
	align	4
_267:
	dd	1
	dd	_50
	dd	2
	dd	_160
	dd	_155
	dd	-4
	dd	0
	align	4
_219:
	dd	_112
	dd	35
	dd	3
	align	4
_225:
	dd	_112
	dd	36
	dd	3
	align	4
_231:
	dd	_112
	dd	37
	dd	3
	align	4
_235:
	dd	_112
	dd	37
	dd	11
	align	4
_241:
	dd	_112
	dd	38
	dd	3
	align	4
_244:
	dd	_112
	dd	39
	dd	3
	align	4
_247:
	dd	_112
	dd	40
	dd	3
	align	4
_254:
	dd	_112
	dd	41
	dd	3
	align	4
_255:
	dd	_112
	dd	42
	dd	3
	align	4
_256:
	dd	_112
	dd	44
	dd	3
	align	4
_260:
	dd	_112
	dd	45
	dd	3
	align	4
_264:
	dd	_112
	dd	46
	dd	4
_273:
	db	"alpha",0
	align	4
_272:
	dd	1
	dd	_52
	dd	2
	dd	_160
	dd	_155
	dd	-4
	dd	2
	dd	_273
	dd	_31
	dd	-8
	dd	0
	align	4
_268:
	dd	_112
	dd	55
	dd	3
_279:
	db	"rot",0
	align	4
_278:
	dd	1
	dd	_54
	dd	2
	dd	_160
	dd	_155
	dd	-4
	dd	2
	dd	_279
	dd	_35
	dd	-8
	dd	0
	align	4
_274:
	dd	_112
	dd	59
	dd	3
	align	4
_283:
	dd	1
	dd	_56
	dd	2
	dd	_160
	dd	_155
	dd	-4
	dd	0
	align	4
_280:
	dd	_112
	dd	63
	dd	3
	align	4
_288:
	dd	1
	dd	_57
	dd	2
	dd	_160
	dd	_155
	dd	-4
	dd	2
	dd	_212
	dd	_35
	dd	-8
	dd	0
	align	4
_284:
	dd	_112
	dd	67
	dd	3
	align	4
_293:
	dd	1
	dd	_58
	dd	2
	dd	_160
	dd	_155
	dd	-4
	dd	2
	dd	_213
	dd	_35
	dd	-8
	dd	0
	align	4
_289:
	dd	_112
	dd	71
	dd	3
_308:
	db	"returnx",0
_309:
	db	"returny",0
	align	4
_307:
	dd	1
	dd	_59
	dd	2
	dd	_160
	dd	_155
	dd	-4
	dd	2
	dd	_308
	dd	_31
	dd	-8
	dd	2
	dd	_309
	dd	_31
	dd	-12
	dd	0
	align	4
_294:
	dd	_112
	dd	75
	dd	3
	align	4
_300:
	dd	_112
	dd	76
	dd	3
	align	4
_306:
	dd	_112
	dd	77
	dd	3
_323:
	db	"ParticalExplosion",0
_324:
	db	"image",0
_325:
	db	"n",0
_326:
	db	"dir",0
_327:
	db	"speed",0
_328:
	db	"part",0
	align	4
_322:
	dd	1
	dd	_323
	dd	2
	dd	_212
	dd	_35
	dd	-4
	dd	2
	dd	_213
	dd	_35
	dd	-8
	dd	2
	dd	_324
	dd	_39
	dd	-12
	dd	2
	dd	_325
	dd	_35
	dd	-16
	dd	2
	dd	_217
	dd	_35
	dd	-20
	dd	2
	dd	_35
	dd	_35
	dd	-24
	dd	2
	dd	_326
	dd	_35
	dd	-28
	dd	2
	dd	_327
	dd	_31
	dd	-32
	dd	2
	dd	_328
	dd	_155
	dd	-36
	dd	0
	align	4
_310:
	dd	_112
	dd	87
	dd	2
	align	4
_314:
	dd	_112
	dd	88
	dd	3
	align	4
_316:
	dd	_112
	dd	89
	dd	3
	align	8
_400:
	dd	0x0,0x3ff80000
	align	8
_401:
	dd	0x40000000,0x3fb47ae1
	align	4
_318:
	dd	_112
	dd	90
	dd	3
