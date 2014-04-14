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
	extrn	_bbEmptyString
	extrn	_bbEnd
	extrn	_bbGCFree
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
	extrn	_bbStringCompare
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_filesystem_CloseFile
	extrn	_brl_filesystem_OpenFile
	extrn	_brl_filesystem_ReadFile
	extrn	_brl_filesystem_WriteFile
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_linkedlist_ListAddLast
	extrn	_brl_standardio_Print
	extrn	_brl_stream_Eof
	extrn	_brl_stream_ReadInt
	extrn	_brl_stream_ReadString
	extrn	_brl_stream_SeekStream
	extrn	_brl_stream_StreamSize
	extrn	_brl_stream_WriteInt
	extrn	_brl_stream_WriteString
	public	__bb_TFileMemory_AddToList
	public	__bb_TFileMemory_Delete
	public	__bb_TFileMemory_New
	public	__bb_TFileMemory_RemoveFromList
	public	__bb_main
	public	_bb_AddHS
	public	_bb_ClearHS
	public	_bb_FileMemoryList
	public	_bb_ReadHS
	public	_bb_RemoveHS
	public	_bb_TFileMemory
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_102],0
	je	_103
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_103:
	mov	dword [_102],1
	push	ebp
	push	_98
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
	push	_bb_TFileMemory
	call	_bbObjectRegisterType
	add	esp,4
	push	_75
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_78]
	and	eax,1
	cmp	eax,0
	jne	_79
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_FileMemoryList],eax
	or	dword [_78],1
_79:
	push	_80
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	call	_brl_standardio_Print
	add	esp,4
	push	_81
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_31
	call	_brl_standardio_Print
	add	esp,4
	push	_82
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	12
	push	_32
	call	_bb_AddHS
	add	esp,8
	push	_83
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	15
	push	_33
	call	_bb_AddHS
	add	esp,8
	push	_84
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	13
	push	_34
	call	_bb_AddHS
	add	esp,8
	push	_85
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	call	_brl_standardio_Print
	add	esp,4
	push	_86
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_35
	call	_brl_standardio_Print
	add	esp,4
	push	_87
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_ReadHS
	push	_88
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	call	_brl_standardio_Print
	add	esp,4
	push	_89
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_36
	call	_brl_standardio_Print
	add	esp,4
	push	_90
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_32
	call	_bb_RemoveHS
	add	esp,4
	push	_91
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	call	_brl_standardio_Print
	add	esp,4
	push	_92
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_35
	call	_brl_standardio_Print
	add	esp,4
	push	_93
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_ReadHS
	push	_94
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	call	_brl_standardio_Print
	add	esp,4
	push	_95
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_37
	call	_brl_standardio_Print
	add	esp,4
	push	_96
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_ClearHS
	push	_97
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
_50:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TFileMemory_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_105
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TFileMemory
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	ebx,0
_53:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TFileMemory_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_56:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_110
	push	eax
	call	_bbGCFree
	add	esp,4
_110:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
_108:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TFileMemory_AddToList:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_112
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [_bb_FileMemoryList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	ebx,_bbNullObject
_59:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TFileMemory_RemoveFromList:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_116
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_FileMemoryList]
	cmp	ebx,_bbNullObject
	jne	_115
	call	_brl_blitz_NullObjectError
_115:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	mov	ebx,_bbNullObject
_62:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_AddHS:
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
	push	_126
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	cmp	dword [eax+8],3
	jle	_118
	push	_119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_66
_118:
	push	_120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	1
	push	_18
	call	_brl_filesystem_OpenFile
	add	esp,12
	mov	dword [ebp-12],eax
	push	_122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_stream_StreamSize
	add	esp,4
	push	eax
	push	dword [ebp-12]
	call	_brl_stream_SeekStream
	add	esp,8
	push	_123
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [ebp-12]
	call	_brl_stream_WriteString
	add	esp,8
	push	_124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	push	dword [ebp-12]
	call	_brl_stream_WriteInt
	add	esp,8
	push	_125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_filesystem_CloseFile
	add	esp,4
	mov	ebx,0
_66:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ReadHS:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],_bbNullObject
	push	ebp
	push	_161
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	push	_133
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_18
	call	_brl_filesystem_ReadFile
	add	esp,4
	mov	dword [ebp-8],eax
	push	_135
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_19
_21:
	push	_136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TFileMemory
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	push	_137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_139
	call	_brl_blitz_NullObjectError
_139:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	_140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_142
	call	_brl_blitz_NullObjectError
_142:
	push	3
	push	dword [ebp-8]
	call	_brl_stream_ReadString
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_147
	push	eax
	call	_bbGCFree
	add	esp,4
_147:
	mov	dword [ebx+8],esi
	push	_148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_150
	call	_brl_blitz_NullObjectError
_150:
	push	dword [ebp-8]
	call	_brl_stream_ReadInt
	add	esp,4
	mov	dword [ebx+12],eax
	push	_152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_154
	call	_brl_blitz_NullObjectError
_154:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_156
	call	_brl_blitz_NullObjectError
_156:
	push	_24
	push	dword [esi+12]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_23
	push	dword [ebx+8]
	push	_22
	call	_bbStringConcat
	add	esp,8
	push	eax
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
_19:
	push	dword [ebp-8]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_21
_20:
	push	_157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_brl_filesystem_CloseFile
	add	esp,4
	push	_158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_FileMemoryList]
	cmp	ebx,_bbNullObject
	jne	_160
	call	_brl_blitz_NullObjectError
_160:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	ebx,0
_68:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_RemoveHS:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_211
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	push	_166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_18
	call	_brl_filesystem_ReadFile
	add	esp,4
	mov	dword [ebp-12],eax
	push	_168
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_25
_27:
	push	_169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TFileMemory
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_172
	call	_brl_blitz_NullObjectError
_172:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	_173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_175
	call	_brl_blitz_NullObjectError
_175:
	push	3
	push	dword [ebp-12]
	call	_brl_stream_ReadString
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_180
	push	eax
	call	_bbGCFree
	add	esp,4
_180:
	mov	dword [esi+8],ebx
	push	_181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_183
	call	_brl_blitz_NullObjectError
_183:
	push	dword [ebp-12]
	call	_brl_stream_ReadInt
	add	esp,4
	mov	dword [ebx+12],eax
	push	_185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_187
	call	_brl_blitz_NullObjectError
_187:
	push	dword [ebp-4]
	push	dword [ebx+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_188
	push	_189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_191
	call	_brl_blitz_NullObjectError
_191:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
_188:
_25:
	push	dword [ebp-12]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_27
_26:
	push	_192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_filesystem_CloseFile
	add	esp,4
	push	_193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_18
	call	_brl_filesystem_WriteFile
	add	esp,4
	mov	dword [ebp-12],eax
	push	_194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	edi,dword [_bb_FileMemoryList]
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
	jmp	_28
_30:
	cmp	ebx,_bbNullObject
	jne	_203
	call	_brl_blitz_NullObjectError
_203:
	push	_bb_TFileMemory
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_28
	push	_204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_206
	call	_brl_blitz_NullObjectError
_206:
	push	dword [esi+8]
	push	dword [ebp-12]
	call	_brl_stream_WriteString
	add	esp,8
	push	_207
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_209
	call	_brl_blitz_NullObjectError
_209:
	push	dword [esi+12]
	push	dword [ebp-12]
	call	_brl_stream_WriteInt
	add	esp,8
_28:
	cmp	ebx,_bbNullObject
	jne	_201
	call	_brl_blitz_NullObjectError
_201:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_30
_29:
	push	_210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_filesystem_CloseFile
	add	esp,4
	mov	ebx,0
_71:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ClearHS:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],_bbNullObject
	push	ebp
	push	_217
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_18
	call	_brl_filesystem_WriteFile
	add	esp,4
	mov	dword [ebp-4],eax
	push	_216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_brl_filesystem_CloseFile
	add	esp,4
	mov	ebx,0
_73:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_102:
	dd	0
_99:
	db	"hstest",0
_100:
	db	"FileMemoryList",0
_101:
	db	":brl.linkedlist.TList",0
	align	4
_bb_FileMemoryList:
	dd	_bbNullObject
	align	4
_98:
	dd	1
	dd	_99
	dd	4
	dd	_100
	dd	_101
	dd	_bb_FileMemoryList
	dd	0
_39:
	db	"TFileMemory",0
_40:
	db	"initals",0
_41:
	db	"$",0
_42:
	db	"points",0
_43:
	db	"i",0
_44:
	db	"New",0
_45:
	db	"()i",0
_46:
	db	"Delete",0
_47:
	db	"AddToList",0
_48:
	db	"():TFileMemory",0
_49:
	db	"RemoveFromList",0
	align	4
_38:
	dd	2
	dd	_39
	dd	3
	dd	_40
	dd	_41
	dd	8
	dd	3
	dd	_42
	dd	_43
	dd	12
	dd	6
	dd	_44
	dd	_45
	dd	16
	dd	6
	dd	_46
	dd	_45
	dd	20
	dd	6
	dd	_47
	dd	_48
	dd	48
	dd	6
	dd	_49
	dd	_48
	dd	52
	dd	0
	align	4
_bb_TFileMemory:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_38
	dd	16
	dd	__bb_TFileMemory_New
	dd	__bb_TFileMemory_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TFileMemory_AddToList
	dd	__bb_TFileMemory_RemoveFromList
_76:
	db	"D:/KIDS/Aarons Programs/Source/BlitzMax/Breakout2/hstest.bmx",0
	align	4
_75:
	dd	_76
	dd	1
	dd	1
	align	4
_78:
	dd	0
	align	4
_80:
	dd	_76
	dd	86
	dd	1
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_81:
	dd	_76
	dd	87
	dd	1
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	50
	dw	77,97,107,105,110,103,32,51,32,72,105,103,104,115,99,111
	dw	114,101,115,44,32,98,114,105,32,49,50,44,32,115,116,114
	dw	32,49,53,44,32,97,110,100,32,101,118,114,32,49,51,46
	dw	46,46
	align	4
_82:
	dd	_76
	dd	88
	dd	1
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	98,114,105
	align	4
_83:
	dd	_76
	dd	89
	dd	1
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,116,114
	align	4
_84:
	dd	_76
	dd	90
	dd	1
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	101,118,114
	align	4
_85:
	dd	_76
	dd	91
	dd	1
	align	4
_86:
	dd	_76
	dd	92
	dd	1
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	26
	dw	82,101,97,100,105,110,103,32,72,105,103,104,32,115,99,111
	dw	114,101,32,102,105,108,101,46,46,46
	align	4
_87:
	dd	_76
	dd	93
	dd	1
	align	4
_88:
	dd	_76
	dd	94
	dd	1
	align	4
_89:
	dd	_76
	dd	95
	dd	1
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	27
	dw	68,101,108,101,116,105,110,103,32,98,114,105,39,115,32,104
	dw	105,103,104,115,99,111,114,101,46,46,46
	align	4
_90:
	dd	_76
	dd	96
	dd	1
	align	4
_91:
	dd	_76
	dd	97
	dd	1
	align	4
_92:
	dd	_76
	dd	98
	dd	1
	align	4
_93:
	dd	_76
	dd	99
	dd	1
	align	4
_94:
	dd	_76
	dd	100
	dd	1
	align	4
_95:
	dd	_76
	dd	101
	dd	1
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	67,108,101,97,114,105,110,103,32,70,105,108,101,46,46,46
	align	4
_96:
	dd	_76
	dd	102
	dd	1
	align	4
_97:
	dd	_76
	dd	104
	dd	1
_106:
	db	"Self",0
_107:
	db	":TFileMemory",0
	align	4
_105:
	dd	1
	dd	_44
	dd	2
	dd	_106
	dd	_107
	dd	-4
	dd	0
	align	4
_112:
	dd	1
	dd	_47
	dd	2
	dd	_106
	dd	_107
	dd	-4
	dd	0
	align	4
_111:
	dd	_76
	dd	7
	dd	3
	align	4
_116:
	dd	1
	dd	_49
	dd	2
	dd	_106
	dd	_107
	dd	-4
	dd	0
	align	4
_113:
	dd	_76
	dd	11
	dd	3
_127:
	db	"AddHS",0
_128:
	db	"p",0
_129:
	db	"file",0
_130:
	db	":brl.stream.TStream",0
	align	4
_126:
	dd	1
	dd	_127
	dd	2
	dd	_43
	dd	_41
	dd	-4
	dd	2
	dd	_128
	dd	_43
	dd	-8
	dd	2
	dd	_129
	dd	_130
	dd	-12
	dd	0
	align	4
_117:
	dd	_76
	dd	19
	dd	2
	align	4
_119:
	dd	_76
	dd	20
	dd	3
	align	4
_120:
	dd	_76
	dd	23
	dd	2
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	104,115,46,100,97,116,97
	align	4
_122:
	dd	_76
	dd	24
	dd	2
	align	4
_123:
	dd	_76
	dd	26
	dd	2
	align	4
_124:
	dd	_76
	dd	27
	dd	2
	align	4
_125:
	dd	_76
	dd	29
	dd	2
_162:
	db	"ReadHS",0
_163:
	db	"filestore",0
	align	4
_161:
	dd	1
	dd	_162
	dd	2
	dd	_163
	dd	_107
	dd	-4
	dd	2
	dd	_129
	dd	_130
	dd	-8
	dd	0
	align	4
_131:
	dd	_76
	dd	34
	dd	2
	align	4
_133:
	dd	_76
	dd	35
	dd	2
	align	4
_135:
	dd	_76
	dd	36
	dd	3
	align	4
_136:
	dd	_76
	dd	38
	dd	4
	align	4
_137:
	dd	_76
	dd	39
	dd	4
	align	4
_140:
	dd	_76
	dd	40
	dd	4
	align	4
_148:
	dd	_76
	dd	41
	dd	4
	align	4
_152:
	dd	_76
	dd	43
	dd	4
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	32,80,111,105,110,116,115
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	72,105,103,104,32,83,99,111,114,101,58,32
	align	4
_157:
	dd	_76
	dd	47
	dd	2
	align	4
_158:
	dd	_76
	dd	48
	dd	2
_212:
	db	"RemoveHS",0
_213:
	db	"b",0
	align	4
_211:
	dd	1
	dd	_212
	dd	2
	dd	_43
	dd	_41
	dd	-4
	dd	2
	dd	_163
	dd	_107
	dd	-8
	dd	2
	dd	_129
	dd	_130
	dd	-12
	dd	2
	dd	_213
	dd	_107
	dd	-16
	dd	0
	align	4
_164:
	dd	_76
	dd	53
	dd	2
	align	4
_166:
	dd	_76
	dd	54
	dd	2
	align	4
_168:
	dd	_76
	dd	55
	dd	3
	align	4
_169:
	dd	_76
	dd	57
	dd	4
	align	4
_170:
	dd	_76
	dd	58
	dd	4
	align	4
_173:
	dd	_76
	dd	59
	dd	4
	align	4
_181:
	dd	_76
	dd	60
	dd	4
	align	4
_185:
	dd	_76
	dd	62
	dd	4
	align	4
_189:
	dd	_76
	dd	63
	dd	5
	align	4
_192:
	dd	_76
	dd	70
	dd	2
	align	4
_193:
	dd	_76
	dd	72
	dd	2
	align	4
_194:
	dd	_76
	dd	73
	dd	3
	align	4
_204:
	dd	_76
	dd	74
	dd	4
	align	4
_207:
	dd	_76
	dd	75
	dd	4
	align	4
_210:
	dd	_76
	dd	77
	dd	2
_218:
	db	"ClearHS",0
	align	4
_217:
	dd	1
	dd	_218
	dd	2
	dd	_129
	dd	_130
	dd	-4
	dd	0
	align	4
_214:
	dd	_76
	dd	81
	dd	2
	align	4
_216:
	dd	_76
	dd	82
	dd	2
