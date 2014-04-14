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
	extrn	_bbArrayNew1D
	extrn	_bbEnd
	extrn	_bbGCFree
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
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_linkedlist_ListAddLast
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawLine
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_LockImage
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d_UnlockImage
	extrn	_brl_pixmap_ReadPixel
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_polledinput_MouseHit
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_brl_standardio_Print
	public	__bb_TQuadNode_Delete
	public	__bb_TQuadNode_New
	public	__bb_TQuadNode_SubDivide
	public	__bb_TQuadtree_CreateNode
	public	__bb_TQuadtree_CreateRoot
	public	__bb_TQuadtree_Delete
	public	__bb_TQuadtree_New
	public	__bb_TQuadtree_SubDivideTree
	public	__bb_TTerrainQMap_Delete
	public	__bb_TTerrainQMap_Generate
	public	__bb_TTerrainQMap_New
	public	__bb_main
	public	_bb_DrawQuadTree
	public	_bb_TQuadNode
	public	_bb_TQuadtree
	public	_bb_TTerrainQMap
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	push	esi
	push	edi
	cmp	dword [_266],0
	je	_267
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_267:
	mov	dword [_266],1
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	byte [ebp-4],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_256
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
	push	_bb_TQuadtree
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TQuadNode
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TTerrainQMap
	call	_bbObjectRegisterType
	add	esp,4
	push	_143
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	push	_145
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	_46
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	dword [ebp-8],eax
	push	_148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	dword [_bb_TTerrainQMap+48]
	add	esp,4
	mov	dword [ebp-12],eax
	push	_150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	push	dword [ebp-8]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_153
	call	_brl_blitz_NullObjectError
_153:
	push	dword [ebx+8]
	call	_bb_DrawQuadTree
	add	esp,4
	push	_154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_47
_49:
	push	_155
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseHit
	add	esp,4
	cmp	eax,0
	je	_156
	push	_157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	push	_159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_MouseX
	mov	dword [ebp-16],eax
	push	_161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_MouseY
	mov	dword [ebp-20],eax
	push	_163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_50
	call	_brl_standardio_Print
	add	esp,4
	push	_164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_167
	call	_brl_blitz_NullObjectError
_167:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_169
	call	_brl_blitz_NullObjectError
_169:
	mov	edi,dword [ebx+8]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_172
	call	_brl_blitz_NullObjectError
_172:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-28],eax
	jmp	_51
_53:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_177
	call	_brl_blitz_NullObjectError
_177:
	push	_bb_TQuadNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_51
	push	_178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_180
	call	_brl_blitz_NullObjectError
_180:
	mov	eax,dword [ebx+8]
	cmp	eax,dword [ebp-16]
	setl	al
	movzx	eax,al
	cmp	eax,0
	je	_183
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_182
	call	_brl_blitz_NullObjectError
_182:
	mov	eax,dword [ebx+12]
	cmp	eax,dword [ebp-20]
	setl	al
	movzx	eax,al
_183:
	cmp	eax,0
	je	_189
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_186
	call	_brl_blitz_NullObjectError
_186:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_188
	call	_brl_blitz_NullObjectError
_188:
	mov	eax,dword [esi+8]
	add	eax,dword [ebx+16]
	cmp	eax,dword [ebp-16]
	setg	al
	movzx	eax,al
_189:
	cmp	eax,0
	je	_195
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_192
	call	_brl_blitz_NullObjectError
_192:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_194
	call	_brl_blitz_NullObjectError
_194:
	mov	eax,dword [esi+12]
	add	eax,dword [ebx+20]
	cmp	eax,dword [ebp-20]
	setg	al
	movzx	eax,al
_195:
	cmp	eax,0
	je	_197
	push	_198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_200
	call	_brl_blitz_NullObjectError
_200:
	mov	esi,dword [ebx+32]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_203
	call	_brl_blitz_ArrayBoundsError
_203:
	mov	eax,dword [esi+ebx*4+24]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_209
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_205
	call	_brl_blitz_NullObjectError
_205:
	mov	esi,dword [ebx+32]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_208
	call	_brl_blitz_ArrayBoundsError
_208:
	mov	eax,dword [esi+ebx*4+24]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
_209:
	cmp	eax,0
	je	_216
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_212
	call	_brl_blitz_NullObjectError
_212:
	mov	esi,dword [ebx+32]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_215
	call	_brl_blitz_ArrayBoundsError
_215:
	mov	eax,dword [esi+ebx*4+24]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
_216:
	cmp	eax,0
	je	_223
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_219
	call	_brl_blitz_NullObjectError
_219:
	mov	esi,dword [ebx+32]
	mov	ebx,3
	cmp	ebx,dword [esi+20]
	jb	_222
	call	_brl_blitz_ArrayBoundsError
_222:
	mov	eax,dword [esi+ebx*4+24]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
_223:
	cmp	eax,0
	je	_225
	push	_226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_228
	call	_brl_blitz_NullObjectError
_228:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	_229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_232
	call	_brl_blitz_NullObjectError
_232:
	push	dword [ebx+8]
	call	_bb_DrawQuadTree
	add	esp,4
	push	_233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_234
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_236
	call	_brl_blitz_NullObjectError
_236:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_238
	call	_brl_blitz_NullObjectError
_238:
	push	dword [esi+12]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_55
	push	dword [ebx+8]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_54
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	push	_239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_241
	call	_brl_blitz_NullObjectError
_241:
	mov	esi,dword [ebx+32]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_244
	call	_brl_blitz_ArrayBoundsError
_244:
	mov	edi,dword [esi+ebx*4+24]
	cmp	edi,_bbNullObject
	jne	_246
	call	_brl_blitz_NullObjectError
_246:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_248
	call	_brl_blitz_NullObjectError
_248:
	mov	esi,dword [ebx+32]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_251
	call	_brl_blitz_ArrayBoundsError
_251:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_253
	call	_brl_blitz_NullObjectError
_253:
	push	dword [ebx+12]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_55
	push	dword [edi+8]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_56
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	push	_254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_52
_225:
_197:
_51:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_175
	call	_brl_blitz_NullObjectError
_175:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_53
_52:
_156:
_47:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_49
_48:
	push	_255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
	jmp	_96
_96:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TQuadtree_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_269
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TQuadtree
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	ebx,0
	jmp	_99
_99:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TQuadtree_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_102:
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_273
	push	eax
	call	_bbGCFree
	add	esp,4
_273:
	mov	eax,0
	jmp	_271
_271:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TQuadtree_CreateRoot:
	push	ebp
	mov	ebp,esp
	sub	esp,20
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
	mov	dword [ebp-20],_bbNullObject
	push	ebp
	push	_288
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_274
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TQuadtree
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-20],eax
	push	_276
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_278
	call	_brl_blitz_NullObjectError
_278:
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_283
	push	eax
	call	_bbGCFree
	add	esp,4
_283:
	mov	dword [ebx+8],esi
	push	_284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_286
	call	_brl_blitz_NullObjectError
_286:
	push	_bbNullObject
	push	0
	push	dword [ebp-16]
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,28
	push	_287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	jmp	_108
_108:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TQuadtree_CreateNode:
	push	ebp
	mov	ebp,esp
	sub	esp,32
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
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	mov	dword [ebp-32],_bbNullObject
	push	ebp
	push	_335
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TQuadNode
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-32],eax
	push	_296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_298
	call	_brl_blitz_NullObjectError
_298:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+8],eax
	push	_300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_302
	call	_brl_blitz_NullObjectError
_302:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+12],eax
	push	_304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_306
	call	_brl_blitz_NullObjectError
_306:
	mov	eax,dword [ebp-16]
	mov	dword [ebx+16],eax
	push	_308
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_310
	call	_brl_blitz_NullObjectError
_310:
	mov	eax,dword [ebp-20]
	mov	dword [ebx+20],eax
	push	_312
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_314
	call	_brl_blitz_NullObjectError
_314:
	mov	eax,dword [ebp-24]
	mov	dword [ebx+24],eax
	push	_316
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_318
	call	_brl_blitz_NullObjectError
_318:
	mov	ebx,dword [ebp-4]
	inc	dword [ebx+4]
	mov	eax,dword [esi+36]
	dec	dword [eax+4]
	jnz	_323
	push	eax
	call	_bbGCFree
	add	esp,4
_323:
	mov	dword [esi+36],ebx
	push	_324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_326
	call	_brl_blitz_NullObjectError
_326:
	mov	ebx,dword [ebp-28]
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_331
	push	eax
	call	_bbGCFree
	add	esp,4
_331:
	mov	dword [esi+28],ebx
	push	_332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_334
	call	_brl_blitz_NullObjectError
_334:
	push	dword [ebp-32]
	push	dword [ebx+8]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	ebx,_bbNullObject
	jmp	_117
_117:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TQuadtree_SubDivideTree:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	dword [ebp-12],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_361
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_338
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_340
	call	_brl_blitz_NullObjectError
_340:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-8],eax
	push	_342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_345
	call	_brl_blitz_NullObjectError
_345:
	mov	edi,dword [ebx+8]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_348
	call	_brl_blitz_NullObjectError
_348:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_22
_24:
	cmp	ebx,_bbNullObject
	jne	_353
	call	_brl_blitz_NullObjectError
_353:
	push	_bb_TQuadNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	je	_22
	push	_354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_356
	call	_brl_blitz_NullObjectError
_356:
	mov	eax,dword [ebp-8]
	cmp	dword [esi+24],eax
	jne	_357
	push	_358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_360
	call	_brl_blitz_NullObjectError
_360:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
_357:
_22:
	cmp	ebx,_bbNullObject
	jne	_351
	call	_brl_blitz_NullObjectError
_351:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_24
_23:
	mov	ebx,0
	jmp	_120
_120:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TQuadNode_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_367
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TQuadNode
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
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],edx
	push	4
	push	_364
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+32],eax
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],0
	mov	ebx,0
	jmp	_123
_123:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TQuadNode_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_126:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_370
	push	eax
	call	_bbGCFree
	add	esp,4
_370:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_372
	push	eax
	call	_bbGCFree
	add	esp,4
_372:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_374
	push	eax
	call	_bbGCFree
	add	esp,4
_374:
	mov	eax,0
	jmp	_368
_368:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TQuadNode_SubDivide:
	push	ebp
	mov	ebp,esp
	sub	esp,84
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_506
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_377
	call	_brl_blitz_NullObjectError
_377:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_379
	call	_brl_blitz_NullObjectError
_379:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_381
	call	_brl_blitz_NullObjectError
_381:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_25
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	push	_382
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_384
	call	_brl_blitz_NullObjectError
_384:
	mov	esi,dword [ebx+32]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_387
	call	_brl_blitz_ArrayBoundsError
_387:
	shl	ebx,2
	add	esi,ebx
	mov	dword [ebp-68],esi
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_390
	call	_brl_blitz_NullObjectError
_390:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	jne	_392
	call	_brl_blitz_NullObjectError
_392:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-40],eax
	cmp	dword [ebp-40],_bbNullObject
	jne	_394
	call	_brl_blitz_NullObjectError
_394:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-8],eax
	cmp	dword [ebp-8],_bbNullObject
	jne	_396
	call	_brl_blitz_NullObjectError
_396:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_398
	call	_brl_blitz_NullObjectError
_398:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_400
	call	_brl_blitz_NullObjectError
_400:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_402
	call	_brl_blitz_NullObjectError
_402:
	push	dword [ebp-4]
	mov	eax,dword [ebx+24]
	add	eax,1
	push	eax
	mov	eax,dword [esi+20]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	push	eax
	mov	eax,dword [edi+16]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	push	eax
	mov	eax,dword [ebp-8]
	push	dword [eax+12]
	mov	eax,dword [ebp-40]
	push	dword [eax+8]
	push	dword [ebp-24]
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,28
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+24]
	dec	dword [eax+4]
	jnz	_406
	push	eax
	call	_bbGCFree
	add	esp,4
_406:
	mov	eax,dword [ebp-68]
	mov	dword [eax+24],ebx
	push	_407
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_409
	call	_brl_blitz_NullObjectError
_409:
	mov	esi,dword [ebx+32]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_412
	call	_brl_blitz_ArrayBoundsError
_412:
	shl	ebx,2
	add	esi,ebx
	mov	dword [ebp-76],esi
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_415
	call	_brl_blitz_NullObjectError
_415:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-44],eax
	cmp	dword [ebp-44],_bbNullObject
	jne	_417
	call	_brl_blitz_NullObjectError
_417:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-56],eax
	cmp	dword [ebp-56],_bbNullObject
	jne	_419
	call	_brl_blitz_NullObjectError
_419:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	jne	_421
	call	_brl_blitz_NullObjectError
_421:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	jne	_423
	call	_brl_blitz_NullObjectError
_423:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_425
	call	_brl_blitz_NullObjectError
_425:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_427
	call	_brl_blitz_NullObjectError
_427:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_429
	call	_brl_blitz_NullObjectError
_429:
	push	dword [ebp-4]
	mov	eax,dword [ebx+24]
	add	eax,1
	push	eax
	mov	eax,dword [esi+20]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	push	eax
	mov	eax,dword [edi+16]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	push	eax
	mov	eax,dword [ebp-12]
	push	dword [eax+12]
	mov	eax,dword [ebp-56]
	mov	ecx,dword [eax+8]
	mov	eax,dword [ebp-28]
	mov	eax,dword [eax+16]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	add	ecx,eax
	push	ecx
	push	dword [ebp-44]
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,28
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-76]
	mov	eax,dword [eax+24]
	dec	dword [eax+4]
	jnz	_433
	push	eax
	call	_bbGCFree
	add	esp,4
_433:
	mov	eax,dword [ebp-76]
	mov	dword [eax+24],ebx
	push	_434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_436
	call	_brl_blitz_NullObjectError
_436:
	mov	esi,dword [ebx+32]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_439
	call	_brl_blitz_ArrayBoundsError
_439:
	shl	ebx,2
	add	esi,ebx
	mov	dword [ebp-80],esi
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_442
	call	_brl_blitz_NullObjectError
_442:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-48],eax
	cmp	dword [ebp-48],_bbNullObject
	jne	_444
	call	_brl_blitz_NullObjectError
_444:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-60],eax
	cmp	dword [ebp-60],_bbNullObject
	jne	_446
	call	_brl_blitz_NullObjectError
_446:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-32],eax
	cmp	dword [ebp-32],_bbNullObject
	jne	_448
	call	_brl_blitz_NullObjectError
_448:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	jne	_450
	call	_brl_blitz_NullObjectError
_450:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_452
	call	_brl_blitz_NullObjectError
_452:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_454
	call	_brl_blitz_NullObjectError
_454:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_456
	call	_brl_blitz_NullObjectError
_456:
	push	dword [ebp-4]
	mov	eax,dword [ebx+24]
	add	eax,1
	push	eax
	mov	eax,dword [esi+20]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	push	eax
	mov	eax,dword [edi+16]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	push	eax
	mov	eax,dword [ebp-32]
	mov	ecx,dword [eax+12]
	mov	eax,dword [ebp-16]
	mov	eax,dword [eax+20]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	add	ecx,eax
	push	ecx
	mov	eax,dword [ebp-60]
	push	dword [eax+8]
	push	dword [ebp-48]
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,28
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-80]
	mov	eax,dword [eax+24]
	dec	dword [eax+4]
	jnz	_460
	push	eax
	call	_bbGCFree
	add	esp,4
_460:
	mov	eax,dword [ebp-80]
	mov	dword [eax+24],ebx
	push	_461
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_463
	call	_brl_blitz_NullObjectError
_463:
	mov	esi,dword [ebx+32]
	mov	ebx,3
	cmp	ebx,dword [esi+20]
	jb	_466
	call	_brl_blitz_ArrayBoundsError
_466:
	shl	ebx,2
	add	esi,ebx
	mov	dword [ebp-84],esi
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_469
	call	_brl_blitz_NullObjectError
_469:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-52],eax
	cmp	dword [ebp-52],_bbNullObject
	jne	_471
	call	_brl_blitz_NullObjectError
_471:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-72],eax
	cmp	dword [ebp-72],_bbNullObject
	jne	_473
	call	_brl_blitz_NullObjectError
_473:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-64],eax
	cmp	dword [ebp-64],_bbNullObject
	jne	_475
	call	_brl_blitz_NullObjectError
_475:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],_bbNullObject
	jne	_477
	call	_brl_blitz_NullObjectError
_477:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-20],eax
	cmp	dword [ebp-20],_bbNullObject
	jne	_479
	call	_brl_blitz_NullObjectError
_479:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_481
	call	_brl_blitz_NullObjectError
_481:
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
	push	dword [ebp-4]
	mov	eax,dword [ebx+24]
	add	eax,1
	push	eax
	mov	eax,dword [esi+20]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	push	eax
	mov	eax,dword [edi+16]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	push	eax
	mov	eax,dword [ebp-36]
	mov	ecx,dword [eax+12]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax+20]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	add	ecx,eax
	push	ecx
	mov	eax,dword [ebp-72]
	mov	ecx,dword [eax+8]
	mov	eax,dword [ebp-64]
	mov	eax,dword [eax+16]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	add	ecx,eax
	push	ecx
	push	dword [ebp-52]
	mov	eax,dword [ebp-52]
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,28
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-84]
	mov	eax,dword [eax+24]
	dec	dword [eax+4]
	jnz	_489
	push	eax
	call	_bbGCFree
	add	esp,4
_489:
	mov	eax,dword [ebp-84]
	mov	dword [eax+24],ebx
	push	_490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_492
	call	_brl_blitz_NullObjectError
_492:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_494
	call	_brl_blitz_NullObjectError
_494:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_496
	call	_brl_blitz_NullObjectError
_496:
	mov	eax,dword [esi+24]
	add	eax,1
	cmp	eax,dword [ebx+12]
	jle	_497
	push	_498
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_500
	call	_brl_blitz_NullObjectError
_500:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_502
	call	_brl_blitz_NullObjectError
_502:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_505
	call	_brl_blitz_NullObjectError
_505:
	mov	eax,dword [esi+24]
	add	eax,1
	mov	dword [ebx+12],eax
_497:
	mov	ebx,0
	jmp	_129
_129:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTerrainQMap_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_509
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TTerrainQMap
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	ebx,0
	jmp	_132
_132:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTerrainQMap_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_135:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_512
	push	eax
	call	_bbGCFree
	add	esp,4
_512:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_514
	push	eax
	call	_bbGCFree
	add	esp,4
_514:
	mov	eax,0
	jmp	_510
_510:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTerrainQMap_Generate:
	push	ebp
	mov	ebp,esp
	sub	esp,48
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],_bbNullObject
	mov	byte [ebp-4],0
	mov	byte [ebp-8],0
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	mov	dword [ebp-32],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_663
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_515
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TTerrainQMap
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-16],eax
	push	_517
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	mov	byte [ebp-8],0
	push	_520
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_522
	call	_brl_blitz_NullObjectError
_522:
	push	600
	push	800
	push	0
	push	0
	call	dword [_bb_TQuadtree+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_527
	push	eax
	call	_bbGCFree
	add	esp,4
_527:
	mov	dword [esi+8],ebx
	push	_528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_530
	call	_brl_blitz_NullObjectError
_530:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_532
	call	_brl_blitz_NullObjectError
_532:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	_533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_535
	call	_brl_blitz_NullObjectError
_535:
	push	1
	push	1
	push	0
	push	dword [ebp-12]
	call	_brl_max2d_LockImage
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_540
	push	eax
	call	_bbGCFree
	add	esp,4
_540:
	mov	dword [esi+12],ebx
	push	_541
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_544
	call	_brl_blitz_NullObjectError
_544:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_546
	call	_brl_blitz_NullObjectError
_546:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-44],eax
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_549
	call	_brl_blitz_NullObjectError
_549:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-48],eax
	jmp	_26
_28:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_554
	call	_brl_blitz_NullObjectError
_554:
	push	_bb_TQuadNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-20],eax
	cmp	dword [ebp-20],_bbNullObject
	je	_26
	push	_555
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_557
	call	_brl_blitz_NullObjectError
_557:
	cmp	dword [ebx+24],1
	jne	_558
	push	_559
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_562
	call	_brl_blitz_NullObjectError
_562:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-24],eax
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_564
	call	_brl_blitz_NullObjectError
_564:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_566
	call	_brl_blitz_NullObjectError
_566:
	mov	eax,dword [esi+8]
	add	eax,dword [ebx+16]
	mov	edi,eax
	jmp	_567
_31:
	push	_569
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_572
	call	_brl_blitz_NullObjectError
_572:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-28],eax
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_574
	call	_brl_blitz_NullObjectError
_574:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_576
	call	_brl_blitz_NullObjectError
_576:
	mov	eax,dword [esi+12]
	add	eax,dword [ebx+20]
	mov	esi,eax
	jmp	_577
_34:
	push	_579
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_581
	call	_brl_blitz_NullObjectError
_581:
	push	dword [ebp-28]
	push	dword [ebp-24]
	push	dword [ebx+12]
	call	_brl_pixmap_ReadPixel
	add	esp,12
	cmp	eax,0
	jne	_582
	push	_583
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],1
	jmp	_584
_582:
	push	_585
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
_584:
	push	_586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_587
	movzx	eax,byte [ebp-8]
_587:
	cmp	eax,0
	je	_589
	push	_590
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_33
_589:
_32:
	add	dword [ebp-28],1
_577:
	cmp	dword [ebp-28],esi
	jle	_34
_33:
	push	_591
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_592
	movzx	eax,byte [ebp-8]
_592:
	cmp	eax,0
	je	_594
	push	_595
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_35
	call	_brl_standardio_Print
	add	esp,4
	push	_596
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_598
	call	_brl_blitz_NullObjectError
_598:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	_599
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_600
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],0
	push	_601
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_604
	call	_brl_blitz_NullObjectError
_604:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_606
	call	_brl_blitz_NullObjectError
_606:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-36],eax
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_609
	call	_brl_blitz_NullObjectError
_609:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-40],eax
	jmp	_36
_38:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_614
	call	_brl_blitz_NullObjectError
_614:
	push	_bb_TQuadNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-32],eax
	cmp	dword [ebp-32],_bbNullObject
	je	_36
	push	_615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_617
	call	_brl_blitz_NullObjectError
_617:
	mov	eax,dword [ebp-20]
	cmp	dword [ebx+28],eax
	jne	_618
	push	_619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],0
	push	_621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_623
	call	_brl_blitz_NullObjectError
_623:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-24],eax
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_625
	call	_brl_blitz_NullObjectError
_625:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_627
	call	_brl_blitz_NullObjectError
_627:
	mov	eax,dword [esi+8]
	add	eax,dword [ebx+16]
	mov	edi,eax
	jmp	_628
_41:
	push	_630
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_632
	call	_brl_blitz_NullObjectError
_632:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-28],eax
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_634
	call	_brl_blitz_NullObjectError
_634:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_636
	call	_brl_blitz_NullObjectError
_636:
	mov	eax,dword [esi+12]
	add	eax,dword [ebx+20]
	mov	esi,eax
	jmp	_637
_44:
	push	_639
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_641
	call	_brl_blitz_NullObjectError
_641:
	push	dword [ebp-28]
	push	dword [ebp-24]
	push	dword [ebx+12]
	call	_brl_pixmap_ReadPixel
	add	esp,12
	cmp	eax,0
	jne	_642
	push	_643
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],1
	jmp	_644
_642:
	push	_645
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
_644:
	push	_646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_647
	movzx	eax,byte [ebp-8]
_647:
	cmp	eax,0
	je	_649
	push	_650
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_43
_649:
_42:
	add	dword [ebp-28],1
_637:
	cmp	dword [ebp-28],esi
	jle	_44
_43:
	push	_651
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_652
	movzx	eax,byte [ebp-8]
_652:
	cmp	eax,0
	je	_654
	push	_655
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_45
	call	_brl_standardio_Print
	add	esp,4
	push	_656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_658
	call	_brl_blitz_NullObjectError
_658:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	_659
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_40
_654:
_39:
	add	dword [ebp-24],1
_628:
	cmp	dword [ebp-24],edi
	jle	_41
_40:
_618:
_36:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_612
	call	_brl_blitz_NullObjectError
_612:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_38
_37:
	push	_660
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_30
_594:
_29:
	add	dword [ebp-24],1
_567:
	cmp	dword [ebp-24],edi
	jle	_31
_30:
_558:
_26:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_552
	call	_brl_blitz_NullObjectError
_552:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_28
_27:
	push	_661
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	call	_brl_max2d_UnlockImage
	add	esp,8
	push	_662
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	jmp	_138
_138:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DrawQuadTree:
	push	ebp
	mov	ebp,esp
	sub	esp,68
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_739
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_673
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_676
	call	_brl_blitz_NullObjectError
_676:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-60],eax
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_679
	call	_brl_blitz_NullObjectError
_679:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-64],eax
	jmp	_57
_59:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_684
	call	_brl_blitz_NullObjectError
_684:
	push	_bb_TQuadNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-8],eax
	cmp	dword [ebp-8],_bbNullObject
	je	_57
	push	_685
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	dword [ebp-40],eax
	cmp	dword [ebp-40],_bbNullObject
	jne	_687
	call	_brl_blitz_NullObjectError
_687:
	mov	eax,dword [ebp-8]
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	jne	_689
	call	_brl_blitz_NullObjectError
_689:
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_691
	call	_brl_blitz_NullObjectError
_691:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_693
	call	_brl_blitz_NullObjectError
_693:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_695
	call	_brl_blitz_NullObjectError
_695:
	push	1
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-68],eax
	fild	dword [ebp+-68]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [edi+8]
	add	eax,dword [esi+16]
	mov	dword [ebp+-68],eax
	fild	dword [ebp+-68]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+12]
	mov	dword [ebp+-68],eax
	fild	dword [ebp+-68]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-40]
	mov	eax,dword [eax+8]
	mov	dword [ebp+-68],eax
	fild	dword [ebp+-68]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawLine
	add	esp,20
	push	_696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],_bbNullObject
	jne	_698
	call	_brl_blitz_NullObjectError
_698:
	mov	eax,dword [ebp-8]
	mov	dword [ebp-20],eax
	cmp	dword [ebp-20],_bbNullObject
	jne	_700
	call	_brl_blitz_NullObjectError
_700:
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_702
	call	_brl_blitz_NullObjectError
_702:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_704
	call	_brl_blitz_NullObjectError
_704:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_706
	call	_brl_blitz_NullObjectError
_706:
	push	1
	mov	eax,dword [esi+12]
	add	eax,dword [ebx+20]
	mov	dword [ebp+-68],eax
	fild	dword [ebp+-68]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [edi+8]
	mov	dword [ebp+-68],eax
	fild	dword [ebp+-68]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax+12]
	mov	dword [ebp+-68],eax
	fild	dword [ebp+-68]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-36]
	mov	eax,dword [eax+8]
	mov	dword [ebp+-68],eax
	fild	dword [ebp+-68]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawLine
	add	esp,20
	push	_707
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	dword [ebp-56],eax
	cmp	dword [ebp-56],_bbNullObject
	jne	_709
	call	_brl_blitz_NullObjectError
_709:
	mov	eax,dword [ebp-8]
	mov	dword [ebp-48],eax
	cmp	dword [ebp-48],_bbNullObject
	jne	_711
	call	_brl_blitz_NullObjectError
_711:
	mov	eax,dword [ebp-8]
	mov	dword [ebp-32],eax
	cmp	dword [ebp-32],_bbNullObject
	jne	_713
	call	_brl_blitz_NullObjectError
_713:
	mov	eax,dword [ebp-8]
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	jne	_715
	call	_brl_blitz_NullObjectError
_715:
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_717
	call	_brl_blitz_NullObjectError
_717:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_719
	call	_brl_blitz_NullObjectError
_719:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_721
	call	_brl_blitz_NullObjectError
_721:
	push	1
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-68],eax
	fild	dword [ebp+-68]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [edi+8]
	add	eax,dword [esi+16]
	mov	dword [ebp+-68],eax
	fild	dword [ebp+-68]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-32]
	mov	edx,dword [eax+12]
	mov	eax,dword [ebp-16]
	add	edx,dword [eax+20]
	mov	dword [ebp+-68],edx
	fild	dword [ebp+-68]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-56]
	mov	edx,dword [eax+8]
	mov	eax,dword [ebp-48]
	add	edx,dword [eax+16]
	mov	dword [ebp+-68],edx
	fild	dword [ebp+-68]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawLine
	add	esp,20
	push	_722
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	dword [ebp-52],eax
	cmp	dword [ebp-52],_bbNullObject
	jne	_724
	call	_brl_blitz_NullObjectError
_724:
	mov	eax,dword [ebp-8]
	mov	dword [ebp-44],eax
	cmp	dword [ebp-44],_bbNullObject
	jne	_726
	call	_brl_blitz_NullObjectError
_726:
	mov	eax,dword [ebp-8]
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	jne	_728
	call	_brl_blitz_NullObjectError
_728:
	mov	eax,dword [ebp-8]
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	jne	_730
	call	_brl_blitz_NullObjectError
_730:
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_732
	call	_brl_blitz_NullObjectError
_732:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_734
	call	_brl_blitz_NullObjectError
_734:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_736
	call	_brl_blitz_NullObjectError
_736:
	push	1
	mov	eax,dword [esi+12]
	add	eax,dword [ebx+20]
	mov	dword [ebp+-68],eax
	fild	dword [ebp+-68]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [edi+8]
	mov	dword [ebp+-68],eax
	fild	dword [ebp+-68]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-28]
	mov	edx,dword [eax+12]
	mov	eax,dword [ebp-12]
	add	edx,dword [eax+20]
	mov	dword [ebp+-68],edx
	fild	dword [ebp+-68]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-52]
	mov	edx,dword [eax+8]
	mov	eax,dword [ebp-44]
	add	edx,dword [eax+16]
	mov	dword [ebp+-68],edx
	fild	dword [ebp+-68]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawLine
	add	esp,20
_57:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_682
	call	_brl_blitz_NullObjectError
_682:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_59
_58:
	push	_737
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_738
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	mov	ebx,0
	jmp	_141
_141:
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
_266:
	dd	0
_257:
	db	"quadtreetest",0
_258:
	db	"terrain",0
_259:
	db	":brl.max2d.TImage",0
_260:
	db	"Map",0
_261:
	db	":TTerrainQMap",0
_262:
	db	"going",0
_263:
	db	"b",0
_264:
	db	"mx",0
_65:
	db	"i",0
_265:
	db	"my",0
_83:
	db	":TQuadNode",0
	align	4
_256:
	dd	1
	dd	_257
	dd	2
	dd	_258
	dd	_259
	dd	-8
	dd	2
	dd	_260
	dd	_261
	dd	-12
	dd	2
	dd	_262
	dd	_263
	dd	-4
	dd	2
	dd	_264
	dd	_65
	dd	-16
	dd	2
	dd	_265
	dd	_65
	dd	-20
	dd	2
	dd	_65
	dd	_83
	dd	-24
	dd	0
_61:
	db	"TQuadtree",0
_62:
	db	"Nodes",0
_63:
	db	":brl.linkedlist.TList",0
_64:
	db	"HIGHESTLEVEL",0
_66:
	db	"NodeCount",0
_67:
	db	"New",0
_68:
	db	"()i",0
_69:
	db	"Delete",0
_70:
	db	"CreateRoot",0
_71:
	db	"(i,i,i,i):TQuadtree",0
_72:
	db	"CreateNode",0
_73:
	db	"(i,i,i,i,i,:TQuadNode):TQuadnode",0
_74:
	db	"SubDivideTree",0
	align	4
_60:
	dd	2
	dd	_61
	dd	3
	dd	_62
	dd	_63
	dd	8
	dd	3
	dd	_64
	dd	_65
	dd	12
	dd	3
	dd	_66
	dd	_65
	dd	16
	dd	6
	dd	_67
	dd	_68
	dd	16
	dd	6
	dd	_69
	dd	_68
	dd	20
	dd	7
	dd	_70
	dd	_71
	dd	48
	dd	6
	dd	_72
	dd	_73
	dd	52
	dd	6
	dd	_74
	dd	_68
	dd	56
	dd	0
	align	4
_bb_TQuadtree:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_60
	dd	20
	dd	__bb_TQuadtree_New
	dd	__bb_TQuadtree_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TQuadtree_CreateRoot
	dd	__bb_TQuadtree_CreateNode
	dd	__bb_TQuadtree_SubDivideTree
_76:
	db	"TQuadNode",0
_77:
	db	"x",0
_78:
	db	"y",0
_79:
	db	"w",0
_80:
	db	"h",0
_81:
	db	"Level",0
_82:
	db	"Parent",0
_84:
	db	"Children",0
_85:
	db	"[]:TQuadNode",0
_86:
	db	"Tree",0
_87:
	db	":TQuadtree",0
_88:
	db	"material",0
_89:
	db	"SubDivide",0
	align	4
_75:
	dd	2
	dd	_76
	dd	3
	dd	_77
	dd	_65
	dd	8
	dd	3
	dd	_78
	dd	_65
	dd	12
	dd	3
	dd	_79
	dd	_65
	dd	16
	dd	3
	dd	_80
	dd	_65
	dd	20
	dd	3
	dd	_81
	dd	_65
	dd	24
	dd	3
	dd	_82
	dd	_83
	dd	28
	dd	3
	dd	_84
	dd	_85
	dd	32
	dd	3
	dd	_86
	dd	_87
	dd	36
	dd	3
	dd	_88
	dd	_65
	dd	40
	dd	6
	dd	_67
	dd	_68
	dd	16
	dd	6
	dd	_69
	dd	_68
	dd	20
	dd	6
	dd	_89
	dd	_68
	dd	48
	dd	0
	align	4
_bb_TQuadNode:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_75
	dd	44
	dd	__bb_TQuadNode_New
	dd	__bb_TQuadNode_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TQuadNode_SubDivide
_91:
	db	"TTerrainQMap",0
_92:
	db	"pixmap",0
_93:
	db	":brl.pixmap.TPixmap",0
_94:
	db	"Generate",0
_95:
	db	"(:brl.max2d.TImage):TTerrainQMap",0
	align	4
_90:
	dd	2
	dd	_91
	dd	3
	dd	_86
	dd	_87
	dd	8
	dd	3
	dd	_92
	dd	_93
	dd	12
	dd	6
	dd	_67
	dd	_68
	dd	16
	dd	6
	dd	_69
	dd	_68
	dd	20
	dd	7
	dd	_94
	dd	_95
	dd	48
	dd	0
	align	4
_bb_TTerrainQMap:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_90
	dd	16
	dd	__bb_TTerrainQMap_New
	dd	__bb_TTerrainQMap_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TTerrainQMap_Generate
_144:
	db	"D:/Programming And Webdesign/Binary Source/BlitzMax/Quadtree Terrain/quadtreetest.bmx",0
	align	4
_143:
	dd	_144
	dd	123
	dd	1
	align	4
_145:
	dd	_144
	dd	124
	dd	1
	align	4
_146:
	dd	_144
	dd	126
	dd	1
	align	4
_46:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	116,101,114,114,97,105,110,46,98,109,112
	align	4
_148:
	dd	_144
	dd	127
	dd	1
	align	4
_150:
	dd	_144
	dd	129
	dd	1
	align	4
_151:
	dd	_144
	dd	130
	dd	1
	align	4
_154:
	dd	_144
	dd	132
	dd	1
	align	4
_155:
	dd	_144
	dd	133
	dd	2
	align	4
_157:
	dd	_144
	dd	134
	dd	3
	align	4
_159:
	dd	_144
	dd	135
	dd	3
	align	4
_161:
	dd	_144
	dd	136
	dd	3
	align	4
_163:
	dd	_144
	dd	137
	dd	3
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	98,111,111
	align	4
_164:
	dd	_144
	dd	138
	dd	3
	align	4
_178:
	dd	_144
	dd	139
	dd	4
	align	4
_198:
	dd	_144
	dd	140
	dd	5
	align	4
_226:
	dd	_144
	dd	141
	dd	6
	align	4
_229:
	dd	_144
	dd	142
	dd	6
	align	4
_230:
	dd	_144
	dd	143
	dd	6
	align	4
_233:
	dd	_144
	dd	144
	dd	6
	align	4
_234:
	dd	_144
	dd	145
	dd	6
	align	4
_55:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_54:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	105,46,120,47,121,32,61,32
	align	4
_239:
	dd	_144
	dd	146
	dd	6
	align	4
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	105,46,67,49,46,120,47,121,32,61,32
	align	4
_254:
	dd	_144
	dd	147
	dd	6
	align	4
_255:
	dd	_144
	dd	153
	dd	1
_270:
	db	"Self",0
	align	4
_269:
	dd	1
	dd	_67
	dd	2
	dd	_270
	dd	_87
	dd	-4
	dd	0
_289:
	db	"_x",0
_290:
	db	"_y",0
_291:
	db	"_w",0
_292:
	db	"_h",0
_293:
	db	"QT",0
	align	4
_288:
	dd	1
	dd	_70
	dd	2
	dd	_289
	dd	_65
	dd	-4
	dd	2
	dd	_290
	dd	_65
	dd	-8
	dd	2
	dd	_291
	dd	_65
	dd	-12
	dd	2
	dd	_292
	dd	_65
	dd	-16
	dd	2
	dd	_293
	dd	_87
	dd	-20
	dd	0
	align	4
_274:
	dd	_144
	dd	7
	dd	3
	align	4
_276:
	dd	_144
	dd	8
	dd	3
	align	4
_284:
	dd	_144
	dd	9
	dd	3
	align	4
_287:
	dd	_144
	dd	11
	dd	3
_336:
	db	"_level",0
_337:
	db	"N",0
	align	4
_335:
	dd	1
	dd	_72
	dd	2
	dd	_270
	dd	_87
	dd	-4
	dd	2
	dd	_289
	dd	_65
	dd	-8
	dd	2
	dd	_290
	dd	_65
	dd	-12
	dd	2
	dd	_291
	dd	_65
	dd	-16
	dd	2
	dd	_292
	dd	_65
	dd	-20
	dd	2
	dd	_336
	dd	_65
	dd	-24
	dd	2
	dd	_82
	dd	_83
	dd	-28
	dd	2
	dd	_337
	dd	_83
	dd	-32
	dd	0
	align	4
_294:
	dd	_144
	dd	15
	dd	3
	align	4
_296:
	dd	_144
	dd	16
	dd	3
	align	4
_300:
	dd	_144
	dd	17
	dd	3
	align	4
_304:
	dd	_144
	dd	18
	dd	3
	align	4
_308:
	dd	_144
	dd	19
	dd	3
	align	4
_312:
	dd	_144
	dd	20
	dd	3
	align	4
_316:
	dd	_144
	dd	21
	dd	3
	align	4
_324:
	dd	_144
	dd	22
	dd	3
	align	4
_332:
	dd	_144
	dd	24
	dd	3
_362:
	db	"HL",0
	align	4
_361:
	dd	1
	dd	_74
	dd	2
	dd	_270
	dd	_87
	dd	-4
	dd	2
	dd	_362
	dd	_65
	dd	-8
	dd	2
	dd	_65
	dd	_83
	dd	-12
	dd	0
	align	4
_338:
	dd	_144
	dd	28
	dd	3
	align	4
_342:
	dd	_144
	dd	29
	dd	3
	align	4
_354:
	dd	_144
	dd	30
	dd	4
	align	4
_358:
	dd	_144
	dd	30
	dd	20
	align	4
_367:
	dd	1
	dd	_67
	dd	2
	dd	_270
	dd	_83
	dd	-4
	dd	0
_364:
	db	":TQuadNode",0
	align	4
_506:
	dd	1
	dd	_89
	dd	2
	dd	_270
	dd	_83
	dd	-4
	dd	0
	align	4
_375:
	dd	_144
	dd	46
	dd	3
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	35
	dw	83,85,66,68,73,86,73,68,73,78,71,71,71,71,46,46
	dw	46,46,46,32,78,79,68,69,32,67,79,85,78,84,32,78
	dw	79,87,32
	align	4
_382:
	dd	_144
	dd	47
	dd	3
	align	4
_407:
	dd	_144
	dd	48
	dd	3
	align	4
_434:
	dd	_144
	dd	49
	dd	3
	align	4
_461:
	dd	_144
	dd	50
	dd	3
	align	4
_490:
	dd	_144
	dd	51
	dd	3
	align	4
_498:
	dd	_144
	dd	51
	dd	36
	align	4
_509:
	dd	1
	dd	_67
	dd	2
	dd	_270
	dd	_261
	dd	-4
	dd	0
_664:
	db	"img",0
_665:
	db	"Qmap",0
_666:
	db	"white",0
_667:
	db	"black",0
_668:
	db	"level1",0
_669:
	db	"tx",0
_670:
	db	"ty",0
_671:
	db	"children",0
	align	4
_663:
	dd	1
	dd	_94
	dd	2
	dd	_664
	dd	_259
	dd	-12
	dd	2
	dd	_665
	dd	_261
	dd	-16
	dd	2
	dd	_666
	dd	_263
	dd	-4
	dd	2
	dd	_667
	dd	_263
	dd	-8
	dd	2
	dd	_668
	dd	_83
	dd	-20
	dd	2
	dd	_669
	dd	_65
	dd	-24
	dd	2
	dd	_670
	dd	_65
	dd	-28
	dd	2
	dd	_671
	dd	_83
	dd	-32
	dd	0
	align	4
_515:
	dd	_144
	dd	61
	dd	3
	align	4
_517:
	dd	_144
	dd	63
	dd	3
	align	4
_520:
	dd	_144
	dd	64
	dd	3
	align	4
_528:
	dd	_144
	dd	65
	dd	3
	align	4
_533:
	dd	_144
	dd	66
	dd	3
	align	4
_541:
	dd	_144
	dd	67
	dd	4
	align	4
_555:
	dd	_144
	dd	68
	dd	5
	align	4
_559:
	dd	_144
	dd	69
	dd	6
	align	4
_569:
	dd	_144
	dd	70
	dd	7
	align	4
_579:
	dd	_144
	dd	71
	dd	8
	align	4
_583:
	dd	_144
	dd	72
	dd	9
	align	4
_585:
	dd	_144
	dd	74
	dd	9
	align	4
_586:
	dd	_144
	dd	76
	dd	8
	align	4
_590:
	dd	_144
	dd	77
	dd	9
	align	4
_591:
	dd	_144
	dd	80
	dd	7
	align	4
_595:
	dd	_144
	dd	81
	dd	8
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	72,105,49
	align	4
_596:
	dd	_144
	dd	82
	dd	8
	align	4
_599:
	dd	_144
	dd	83
	dd	8
	align	4
_600:
	dd	_144
	dd	84
	dd	8
	align	4
_601:
	dd	_144
	dd	85
	dd	8
	align	4
_615:
	dd	_144
	dd	86
	dd	9
	align	4
_619:
	dd	_144
	dd	87
	dd	9
	align	4
_620:
	dd	_144
	dd	88
	dd	9
	align	4
_621:
	dd	_144
	dd	89
	dd	10
	align	4
_630:
	dd	_144
	dd	90
	dd	11
	align	4
_639:
	dd	_144
	dd	91
	dd	12
	align	4
_643:
	dd	_144
	dd	92
	dd	13
	align	4
_645:
	dd	_144
	dd	95
	dd	13
	align	4
_646:
	dd	_144
	dd	98
	dd	12
	align	4
_650:
	dd	_144
	dd	99
	dd	13
	align	4
_651:
	dd	_144
	dd	103
	dd	11
	align	4
_655:
	dd	_144
	dd	104
	dd	12
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	104,105,50
	align	4
_656:
	dd	_144
	dd	105
	dd	12
	align	4
_659:
	dd	_144
	dd	106
	dd	12
	align	4
_660:
	dd	_144
	dd	111
	dd	8
	align	4
_661:
	dd	_144
	dd	116
	dd	3
	align	4
_662:
	dd	_144
	dd	117
	dd	3
_740:
	db	"DrawQuadTree",0
	align	4
_739:
	dd	1
	dd	_740
	dd	2
	dd	_86
	dd	_87
	dd	-4
	dd	2
	dd	_65
	dd	_83
	dd	-8
	dd	0
	align	4
_672:
	dd	_144
	dd	157
	dd	2
	align	4
_673:
	dd	_144
	dd	158
	dd	2
	align	4
_685:
	dd	_144
	dd	159
	dd	3
	align	4
_696:
	dd	_144
	dd	160
	dd	3
	align	4
_707:
	dd	_144
	dd	161
	dd	3
	align	4
_722:
	dd	_144
	dd	162
	dd	3
	align	4
_737:
	dd	_144
	dd	164
	dd	2
	align	4
_738:
	dd	_144
	dd	165
	dd	2
