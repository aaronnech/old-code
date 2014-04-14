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
	extrn	_brl_graphics_GraphicsHeight
	extrn	_brl_graphics_GraphicsWidth
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_linkedlist_ListAddLast
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawLine
	extrn	_brl_max2d_SetBlend
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_standardio_Print
	public	__bb_TQuadNode_Delete
	public	__bb_TQuadNode_New
	public	__bb_TQuadNode_SubDivide
	public	__bb_TQuadtree_CreateBaseQT
	public	__bb_TQuadtree_CreateNode
	public	__bb_TQuadtree_Delete
	public	__bb_TQuadtree_New
	public	__bb_TQuadtree_SubDivideTree
	public	__bb_main
	public	_bb_DrawQuadTree
	public	_bb_TQuadNode
	public	_bb_TQuadtree
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	cmp	dword [_116],0
	je	_117
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_117:
	mov	dword [_116],1
	mov	dword [ebp-4],_bbNullObject
	push	ebp
	push	_113
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
	push	_99
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	push	_101
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_graphics_GraphicsHeight
	push	eax
	call	_brl_graphics_GraphicsWidth
	push	eax
	push	-1
	push	-1
	call	dword [_bb_TQuadtree+48]
	add	esp,16
	mov	dword [ebp-4],eax
	push	_104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_bb_DrawQuadTree
	add	esp,4
	push	_105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_25
_27:
	push	_106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	32
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_107
	push	_108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_110
	call	_brl_blitz_NullObjectError
_110:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	_111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_bb_DrawQuadTree
	add	esp,4
_107:
_25:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_27
_26:
	push	_112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
	jmp	_61
_61:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	push	_119
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
	jmp	_64
_64:
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
_67:
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_123
	push	eax
	call	_bbGCFree
	add	esp,4
_123:
	mov	eax,0
	jmp	_121
_121:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TQuadtree_CreateBaseQT:
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
	push	_138
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TQuadtree
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-20],eax
	push	_126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_128
	call	_brl_blitz_NullObjectError
_128:
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_133
	push	eax
	call	_bbGCFree
	add	esp,4
_133:
	mov	dword [ebx+8],esi
	push	_134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_136
	call	_brl_blitz_NullObjectError
_136:
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
	push	_137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	jmp	_73
_73:
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
	push	_185
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TQuadNode
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-32],eax
	push	_146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_148
	call	_brl_blitz_NullObjectError
_148:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+8],eax
	push	_150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_152
	call	_brl_blitz_NullObjectError
_152:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+12],eax
	push	_154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_156
	call	_brl_blitz_NullObjectError
_156:
	mov	eax,dword [ebp-16]
	mov	dword [ebx+16],eax
	push	_158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_160
	call	_brl_blitz_NullObjectError
_160:
	mov	eax,dword [ebp-20]
	mov	dword [ebx+20],eax
	push	_162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_164
	call	_brl_blitz_NullObjectError
_164:
	mov	eax,dword [ebp-24]
	mov	dword [ebx+24],eax
	push	_166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_168
	call	_brl_blitz_NullObjectError
_168:
	mov	ebx,dword [ebp-4]
	inc	dword [ebx+4]
	mov	eax,dword [esi+36]
	dec	dword [eax+4]
	jnz	_173
	push	eax
	call	_bbGCFree
	add	esp,4
_173:
	mov	dword [esi+36],ebx
	push	_174
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_176
	call	_brl_blitz_NullObjectError
_176:
	mov	ebx,dword [ebp-28]
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_181
	push	eax
	call	_bbGCFree
	add	esp,4
_181:
	mov	dword [esi+28],ebx
	push	_182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_184
	call	_brl_blitz_NullObjectError
_184:
	push	dword [ebp-32]
	push	dword [ebx+8]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	ebx,_bbNullObject
	jmp	_82
_82:
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
	push	_211
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_190
	call	_brl_blitz_NullObjectError
_190:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-8],eax
	push	_192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_195
	call	_brl_blitz_NullObjectError
_195:
	mov	edi,dword [ebx+8]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_198
	call	_brl_blitz_NullObjectError
_198:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_22
_24:
	cmp	ebx,_bbNullObject
	jne	_203
	call	_brl_blitz_NullObjectError
_203:
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
	push	_204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_206
	call	_brl_blitz_NullObjectError
_206:
	mov	eax,dword [ebp-8]
	cmp	dword [esi+24],eax
	jne	_207
	push	_208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_210
	call	_brl_blitz_NullObjectError
_210:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
_207:
_22:
	cmp	ebx,_bbNullObject
	jne	_201
	call	_brl_blitz_NullObjectError
_201:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_24
_23:
	mov	ebx,0
	jmp	_85
_85:
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
	push	_217
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
	push	_214
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+32],eax
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],edx
	mov	ebx,0
	jmp	_88
_88:
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
_91:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_220
	push	eax
	call	_bbGCFree
	add	esp,4
_220:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_222
	push	eax
	call	_bbGCFree
	add	esp,4
_222:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_224
	push	eax
	call	_bbGCFree
	add	esp,4
_224:
	mov	eax,0
	jmp	_218
_218:
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
	push	_349
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_227
	call	_brl_blitz_NullObjectError
_227:
	mov	esi,dword [ebx+32]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_230
	call	_brl_blitz_ArrayBoundsError
_230:
	shl	ebx,2
	add	esi,ebx
	mov	dword [ebp-68],esi
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_233
	call	_brl_blitz_NullObjectError
_233:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	jne	_235
	call	_brl_blitz_NullObjectError
_235:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-40],eax
	cmp	dword [ebp-40],_bbNullObject
	jne	_237
	call	_brl_blitz_NullObjectError
_237:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-8],eax
	cmp	dword [ebp-8],_bbNullObject
	jne	_239
	call	_brl_blitz_NullObjectError
_239:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_241
	call	_brl_blitz_NullObjectError
_241:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_243
	call	_brl_blitz_NullObjectError
_243:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_245
	call	_brl_blitz_NullObjectError
_245:
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
	jnz	_249
	push	eax
	call	_bbGCFree
	add	esp,4
_249:
	mov	eax,dword [ebp-68]
	mov	dword [eax+24],ebx
	push	_250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_252
	call	_brl_blitz_NullObjectError
_252:
	mov	esi,dword [ebx+32]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_255
	call	_brl_blitz_ArrayBoundsError
_255:
	shl	ebx,2
	add	esi,ebx
	mov	dword [ebp-76],esi
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_258
	call	_brl_blitz_NullObjectError
_258:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-44],eax
	cmp	dword [ebp-44],_bbNullObject
	jne	_260
	call	_brl_blitz_NullObjectError
_260:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-56],eax
	cmp	dword [ebp-56],_bbNullObject
	jne	_262
	call	_brl_blitz_NullObjectError
_262:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	jne	_264
	call	_brl_blitz_NullObjectError
_264:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	jne	_266
	call	_brl_blitz_NullObjectError
_266:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_268
	call	_brl_blitz_NullObjectError
_268:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_270
	call	_brl_blitz_NullObjectError
_270:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_272
	call	_brl_blitz_NullObjectError
_272:
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
	jnz	_276
	push	eax
	call	_bbGCFree
	add	esp,4
_276:
	mov	eax,dword [ebp-76]
	mov	dword [eax+24],ebx
	push	_277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_279
	call	_brl_blitz_NullObjectError
_279:
	mov	esi,dword [ebx+32]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_282
	call	_brl_blitz_ArrayBoundsError
_282:
	shl	ebx,2
	add	esi,ebx
	mov	dword [ebp-80],esi
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_285
	call	_brl_blitz_NullObjectError
_285:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-48],eax
	cmp	dword [ebp-48],_bbNullObject
	jne	_287
	call	_brl_blitz_NullObjectError
_287:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-60],eax
	cmp	dword [ebp-60],_bbNullObject
	jne	_289
	call	_brl_blitz_NullObjectError
_289:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-32],eax
	cmp	dword [ebp-32],_bbNullObject
	jne	_291
	call	_brl_blitz_NullObjectError
_291:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	jne	_293
	call	_brl_blitz_NullObjectError
_293:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_295
	call	_brl_blitz_NullObjectError
_295:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_297
	call	_brl_blitz_NullObjectError
_297:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_299
	call	_brl_blitz_NullObjectError
_299:
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
	jnz	_303
	push	eax
	call	_bbGCFree
	add	esp,4
_303:
	mov	eax,dword [ebp-80]
	mov	dword [eax+24],ebx
	push	_304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_306
	call	_brl_blitz_NullObjectError
_306:
	mov	esi,dword [ebx+32]
	mov	ebx,3
	cmp	ebx,dword [esi+20]
	jb	_309
	call	_brl_blitz_ArrayBoundsError
_309:
	shl	ebx,2
	add	esi,ebx
	mov	dword [ebp-84],esi
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_312
	call	_brl_blitz_NullObjectError
_312:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-52],eax
	cmp	dword [ebp-52],_bbNullObject
	jne	_314
	call	_brl_blitz_NullObjectError
_314:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-72],eax
	cmp	dword [ebp-72],_bbNullObject
	jne	_316
	call	_brl_blitz_NullObjectError
_316:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-64],eax
	cmp	dword [ebp-64],_bbNullObject
	jne	_318
	call	_brl_blitz_NullObjectError
_318:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],_bbNullObject
	jne	_320
	call	_brl_blitz_NullObjectError
_320:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-20],eax
	cmp	dword [ebp-20],_bbNullObject
	jne	_322
	call	_brl_blitz_NullObjectError
_322:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_324
	call	_brl_blitz_NullObjectError
_324:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_326
	call	_brl_blitz_NullObjectError
_326:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_328
	call	_brl_blitz_NullObjectError
_328:
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
	jnz	_332
	push	eax
	call	_bbGCFree
	add	esp,4
_332:
	mov	eax,dword [ebp-84]
	mov	dword [eax+24],ebx
	push	_333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_335
	call	_brl_blitz_NullObjectError
_335:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_337
	call	_brl_blitz_NullObjectError
_337:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_339
	call	_brl_blitz_NullObjectError
_339:
	mov	eax,dword [esi+24]
	add	eax,1
	cmp	eax,dword [ebx+12]
	jle	_340
	push	_341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_343
	call	_brl_blitz_NullObjectError
_343:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_345
	call	_brl_blitz_NullObjectError
_345:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_348
	call	_brl_blitz_NullObjectError
_348:
	mov	eax,dword [esi+24]
	add	eax,1
	mov	dword [ebx+12],eax
_340:
	mov	ebx,0
	jmp	_94
_94:
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
	push	_419
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_350
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_354
	call	_brl_blitz_NullObjectError
_354:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-60],eax
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_357
	call	_brl_blitz_NullObjectError
_357:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-64],eax
	jmp	_28
_30:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_362
	call	_brl_blitz_NullObjectError
_362:
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
	je	_28
	push	_363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_365
	call	_brl_blitz_NullObjectError
_365:
	push	dword [ebx+16]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_31
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	push	_366
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	dword [ebp-40],eax
	cmp	dword [ebp-40],_bbNullObject
	jne	_368
	call	_brl_blitz_NullObjectError
_368:
	mov	eax,dword [ebp-8]
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	jne	_370
	call	_brl_blitz_NullObjectError
_370:
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_372
	call	_brl_blitz_NullObjectError
_372:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_374
	call	_brl_blitz_NullObjectError
_374:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_376
	call	_brl_blitz_NullObjectError
_376:
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
	push	_377
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],_bbNullObject
	jne	_379
	call	_brl_blitz_NullObjectError
_379:
	mov	eax,dword [ebp-8]
	mov	dword [ebp-20],eax
	cmp	dword [ebp-20],_bbNullObject
	jne	_381
	call	_brl_blitz_NullObjectError
_381:
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_383
	call	_brl_blitz_NullObjectError
_383:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_385
	call	_brl_blitz_NullObjectError
_385:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_387
	call	_brl_blitz_NullObjectError
_387:
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
	push	_388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	dword [ebp-56],eax
	cmp	dword [ebp-56],_bbNullObject
	jne	_390
	call	_brl_blitz_NullObjectError
_390:
	mov	eax,dword [ebp-8]
	mov	dword [ebp-48],eax
	cmp	dword [ebp-48],_bbNullObject
	jne	_392
	call	_brl_blitz_NullObjectError
_392:
	mov	eax,dword [ebp-8]
	mov	dword [ebp-32],eax
	cmp	dword [ebp-32],_bbNullObject
	jne	_394
	call	_brl_blitz_NullObjectError
_394:
	mov	eax,dword [ebp-8]
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	jne	_396
	call	_brl_blitz_NullObjectError
_396:
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_398
	call	_brl_blitz_NullObjectError
_398:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_400
	call	_brl_blitz_NullObjectError
_400:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_402
	call	_brl_blitz_NullObjectError
_402:
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
	push	_403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	dword [ebp-52],eax
	cmp	dword [ebp-52],_bbNullObject
	jne	_405
	call	_brl_blitz_NullObjectError
_405:
	mov	eax,dword [ebp-8]
	mov	dword [ebp-44],eax
	cmp	dword [ebp-44],_bbNullObject
	jne	_407
	call	_brl_blitz_NullObjectError
_407:
	mov	eax,dword [ebp-8]
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	jne	_409
	call	_brl_blitz_NullObjectError
_409:
	mov	eax,dword [ebp-8]
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	jne	_411
	call	_brl_blitz_NullObjectError
_411:
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_413
	call	_brl_blitz_NullObjectError
_413:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_415
	call	_brl_blitz_NullObjectError
_415:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_417
	call	_brl_blitz_NullObjectError
_417:
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
_28:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_360
	call	_brl_blitz_NullObjectError
_360:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_30
_29:
	push	_418
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	mov	ebx,0
	jmp	_97
_97:
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
_116:
	dd	0
_114:
	db	"quadtreetest",0
_115:
	db	"Q",0
_59:
	db	":TQuadtree",0
	align	4
_113:
	dd	1
	dd	_114
	dd	2
	dd	_115
	dd	_59
	dd	-4
	dd	0
_33:
	db	"TQuadtree",0
_34:
	db	"Nodes",0
_35:
	db	":brl.linkedlist.TList",0
_36:
	db	"HIGHESTLEVEL",0
_37:
	db	"i",0
_38:
	db	"NodeCount",0
_39:
	db	"New",0
_40:
	db	"()i",0
_41:
	db	"Delete",0
_42:
	db	"CreateBaseQT",0
_43:
	db	"(i,i,i,i):TQuadtree",0
_44:
	db	"CreateNode",0
_45:
	db	"(i,i,i,i,i,:TQuadNode):TQuadnode",0
_46:
	db	"SubDivideTree",0
	align	4
_32:
	dd	2
	dd	_33
	dd	3
	dd	_34
	dd	_35
	dd	8
	dd	3
	dd	_36
	dd	_37
	dd	12
	dd	3
	dd	_38
	dd	_37
	dd	16
	dd	6
	dd	_39
	dd	_40
	dd	16
	dd	6
	dd	_41
	dd	_40
	dd	20
	dd	7
	dd	_42
	dd	_43
	dd	48
	dd	6
	dd	_44
	dd	_45
	dd	52
	dd	6
	dd	_46
	dd	_40
	dd	56
	dd	0
	align	4
_bb_TQuadtree:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_32
	dd	20
	dd	__bb_TQuadtree_New
	dd	__bb_TQuadtree_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TQuadtree_CreateBaseQT
	dd	__bb_TQuadtree_CreateNode
	dd	__bb_TQuadtree_SubDivideTree
_48:
	db	"TQuadNode",0
_49:
	db	"x",0
_50:
	db	"y",0
_51:
	db	"w",0
_52:
	db	"h",0
_53:
	db	"Level",0
_54:
	db	"Parent",0
_55:
	db	":TQuadNode",0
_56:
	db	"Children",0
_57:
	db	"[]:TQuadNode",0
_58:
	db	"Tree",0
_60:
	db	"SubDivide",0
	align	4
_47:
	dd	2
	dd	_48
	dd	3
	dd	_49
	dd	_37
	dd	8
	dd	3
	dd	_50
	dd	_37
	dd	12
	dd	3
	dd	_51
	dd	_37
	dd	16
	dd	3
	dd	_52
	dd	_37
	dd	20
	dd	3
	dd	_53
	dd	_37
	dd	24
	dd	3
	dd	_54
	dd	_55
	dd	28
	dd	3
	dd	_56
	dd	_57
	dd	32
	dd	3
	dd	_58
	dd	_59
	dd	36
	dd	6
	dd	_39
	dd	_40
	dd	16
	dd	6
	dd	_41
	dd	_40
	dd	20
	dd	6
	dd	_60
	dd	_40
	dd	48
	dd	0
	align	4
_bb_TQuadNode:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_47
	dd	40
	dd	__bb_TQuadNode_New
	dd	__bb_TQuadNode_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TQuadNode_SubDivide
_100:
	db	"D:/Programming And Webdesign/Binary Source/BlitzMax/Tankfire/quadtreetest.bmx",0
	align	4
_99:
	dd	_100
	dd	55
	dd	1
	align	4
_101:
	dd	_100
	dd	56
	dd	1
	align	4
_102:
	dd	_100
	dd	58
	dd	1
	align	4
_104:
	dd	_100
	dd	59
	dd	1
	align	4
_105:
	dd	_100
	dd	60
	dd	1
	align	4
_106:
	dd	_100
	dd	61
	dd	3
	align	4
_108:
	dd	_100
	dd	61
	dd	24
	align	4
_111:
	dd	_100
	dd	61
	dd	42
	align	4
_112:
	dd	_100
	dd	63
	dd	1
_120:
	db	"Self",0
	align	4
_119:
	dd	1
	dd	_39
	dd	2
	dd	_120
	dd	_59
	dd	-4
	dd	0
_139:
	db	"_x",0
_140:
	db	"_y",0
_141:
	db	"_w",0
_142:
	db	"_h",0
_143:
	db	"QT",0
	align	4
_138:
	dd	1
	dd	_42
	dd	2
	dd	_139
	dd	_37
	dd	-4
	dd	2
	dd	_140
	dd	_37
	dd	-8
	dd	2
	dd	_141
	dd	_37
	dd	-12
	dd	2
	dd	_142
	dd	_37
	dd	-16
	dd	2
	dd	_143
	dd	_59
	dd	-20
	dd	0
	align	4
_124:
	dd	_100
	dd	7
	dd	3
	align	4
_126:
	dd	_100
	dd	8
	dd	3
	align	4
_134:
	dd	_100
	dd	9
	dd	3
	align	4
_137:
	dd	_100
	dd	11
	dd	3
_186:
	db	"_level",0
_187:
	db	"N",0
	align	4
_185:
	dd	1
	dd	_44
	dd	2
	dd	_120
	dd	_59
	dd	-4
	dd	2
	dd	_139
	dd	_37
	dd	-8
	dd	2
	dd	_140
	dd	_37
	dd	-12
	dd	2
	dd	_141
	dd	_37
	dd	-16
	dd	2
	dd	_142
	dd	_37
	dd	-20
	dd	2
	dd	_186
	dd	_37
	dd	-24
	dd	2
	dd	_54
	dd	_55
	dd	-28
	dd	2
	dd	_187
	dd	_55
	dd	-32
	dd	0
	align	4
_144:
	dd	_100
	dd	15
	dd	3
	align	4
_146:
	dd	_100
	dd	16
	dd	3
	align	4
_150:
	dd	_100
	dd	17
	dd	3
	align	4
_154:
	dd	_100
	dd	18
	dd	3
	align	4
_158:
	dd	_100
	dd	19
	dd	3
	align	4
_162:
	dd	_100
	dd	20
	dd	3
	align	4
_166:
	dd	_100
	dd	21
	dd	3
	align	4
_174:
	dd	_100
	dd	22
	dd	3
	align	4
_182:
	dd	_100
	dd	24
	dd	3
_212:
	db	"HL",0
	align	4
_211:
	dd	1
	dd	_46
	dd	2
	dd	_120
	dd	_59
	dd	-4
	dd	2
	dd	_212
	dd	_37
	dd	-8
	dd	2
	dd	_37
	dd	_55
	dd	-12
	dd	0
	align	4
_188:
	dd	_100
	dd	28
	dd	3
	align	4
_192:
	dd	_100
	dd	29
	dd	3
	align	4
_204:
	dd	_100
	dd	30
	dd	4
	align	4
_208:
	dd	_100
	dd	30
	dd	20
	align	4
_217:
	dd	1
	dd	_39
	dd	2
	dd	_120
	dd	_55
	dd	-4
	dd	0
_214:
	db	":TQuadNode",0
	align	4
_349:
	dd	1
	dd	_60
	dd	2
	dd	_120
	dd	_55
	dd	-4
	dd	0
	align	4
_225:
	dd	_100
	dd	45
	dd	3
	align	4
_250:
	dd	_100
	dd	46
	dd	3
	align	4
_277:
	dd	_100
	dd	47
	dd	3
	align	4
_304:
	dd	_100
	dd	48
	dd	3
	align	4
_333:
	dd	_100
	dd	49
	dd	3
	align	4
_341:
	dd	_100
	dd	49
	dd	36
_420:
	db	"DrawQuadTree",0
	align	4
_419:
	dd	1
	dd	_420
	dd	2
	dd	_58
	dd	_59
	dd	-4
	dd	2
	dd	_37
	dd	_55
	dd	-8
	dd	0
	align	4
_350:
	dd	_100
	dd	66
	dd	2
	align	4
_351:
	dd	_100
	dd	67
	dd	2
	align	4
_363:
	dd	_100
	dd	68
	dd	3
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	119,32
	align	4
_366:
	dd	_100
	dd	69
	dd	3
	align	4
_377:
	dd	_100
	dd	70
	dd	3
	align	4
_388:
	dd	_100
	dd	71
	dd	3
	align	4
_403:
	dd	_100
	dd	72
	dd	3
	align	4
_418:
	dd	_100
	dd	74
	dd	2
