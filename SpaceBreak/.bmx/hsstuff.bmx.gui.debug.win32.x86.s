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
	extrn	_brl_linkedlist_CompareObjects
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
	public	__bb_TFileMemory_Compare
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
	cmp	dword [_111],0
	je	_112
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_112:
	mov	dword [_111],1
	push	ebp
	push	_107
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
	push	_84
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_87]
	and	eax,1
	cmp	eax,0
	jne	_88
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_FileMemoryList],eax
	or	dword [_87],1
_88:
	push	_89
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	call	_brl_standardio_Print
	add	esp,4
	push	_90
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_34
	call	_brl_standardio_Print
	add	esp,4
	push	_91
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	push	_35
	call	_bb_AddHS
	add	esp,8
	push	_92
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	77
	push	_36
	call	_bb_AddHS
	add	esp,8
	push	_93
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	_37
	call	_bb_AddHS
	add	esp,8
	push	_94
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	call	_brl_standardio_Print
	add	esp,4
	push	_95
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_38
	call	_brl_standardio_Print
	add	esp,4
	push	_96
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_ReadHS
	push	_97
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	call	_brl_standardio_Print
	add	esp,4
	push	_98
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_39
	call	_brl_standardio_Print
	add	esp,4
	push	_99
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_35
	call	_bb_RemoveHS
	add	esp,4
	push	_100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	call	_brl_standardio_Print
	add	esp,4
	push	_101
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_38
	call	_brl_standardio_Print
	add	esp,4
	push	_102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_ReadHS
	push	_103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	call	_brl_standardio_Print
	add	esp,4
	push	_104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_40
	call	_brl_standardio_Print
	add	esp,4
	push	_105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_ClearHS
	push	_106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
_55:
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
	push	_115
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
	push	ebp
	push	_114
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
_58:
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
_61:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_120
	push	eax
	call	_bbGCFree
	add	esp,4
_120:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
_118:
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
	push	_122
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_121
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [_bb_FileMemoryList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	ebx,_bbNullObject
_64:
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
	push	_126
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_123
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_FileMemoryList]
	cmp	ebx,_bbNullObject
	jne	_125
	call	_brl_blitz_NullObjectError
_125:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	mov	ebx,_bbNullObject
_67:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TFileMemory_Compare:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	push	ebp
	push	_140
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_127
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TFileMemory
	push	dword [ebp-8]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	push	_129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_131
	call	_brl_blitz_NullObjectError
_131:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_133
	call	_brl_blitz_NullObjectError
_133:
	mov	eax,dword [esi+12]
	cmp	dword [ebx+12],eax
	jge	_134
	push	ebp
	push	_136
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_135
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_71
_134:
	push	ebp
	push	_139
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_138
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
_71:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
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
	push	_154
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	cmp	dword [eax+8],3
	jle	_145
	push	ebp
	push	_147
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_75
_145:
	push	_148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	1
	push	_18
	call	_brl_filesystem_OpenFile
	add	esp,12
	mov	dword [ebp-12],eax
	push	_150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_stream_StreamSize
	add	esp,4
	push	eax
	push	dword [ebp-12]
	call	_brl_stream_SeekStream
	add	esp,8
	push	_151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [ebp-12]
	call	_brl_stream_WriteString
	add	esp,8
	push	_152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	push	dword [ebp-12]
	call	_brl_stream_WriteInt
	add	esp,8
	push	_153
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_filesystem_CloseFile
	add	esp,4
	mov	ebx,0
_75:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ReadHS:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_206
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
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
	push	_161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	push	_163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_18
	call	_brl_filesystem_ReadFile
	add	esp,4
	mov	dword [ebp-8],eax
	push	_165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_19
_21:
	mov	eax,ebp
	push	eax
	push	_182
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TFileMemory
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	push	_167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_169
	call	_brl_blitz_NullObjectError
_169:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	_170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_172
	call	_brl_blitz_NullObjectError
_172:
	push	3
	push	dword [ebp-8]
	call	_brl_stream_ReadString
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_177
	push	eax
	call	_bbGCFree
	add	esp,4
_177:
	mov	dword [esi+8],ebx
	push	_178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_180
	call	_brl_blitz_NullObjectError
_180:
	push	dword [ebp-8]
	call	_brl_stream_ReadInt
	add	esp,4
	mov	dword [ebx+12],eax
	call	dword [_bbOnDebugLeaveScope]
_19:
	push	dword [ebp-8]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_21
_20:
	push	_183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_FileMemoryList]
	cmp	ebx,_bbNullObject
	jne	_185
	call	_brl_blitz_NullObjectError
_185:
	push	_brl_linkedlist_CompareObjects
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,12
	push	_186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	eax,dword [_bb_FileMemoryList]
	mov	dword [ebp-16],eax
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_190
	call	_brl_blitz_NullObjectError
_190:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_22
_24:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_195
	call	_brl_blitz_NullObjectError
_195:
	push	_bb_TFileMemory
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
	mov	eax,ebp
	push	eax
	push	_201
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_198
	call	_brl_blitz_NullObjectError
_198:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_200
	call	_brl_blitz_NullObjectError
_200:
	push	_27
	push	dword [ebx+12]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_26
	push	dword [esi+8]
	push	_25
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
	call	dword [_bbOnDebugLeaveScope]
_22:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_193
	call	_brl_blitz_NullObjectError
_193:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_24
_23:
	push	_202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_brl_filesystem_CloseFile
	add	esp,4
	push	_203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_FileMemoryList]
	cmp	ebx,_bbNullObject
	jne	_205
	call	_brl_blitz_NullObjectError
_205:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	ebx,0
_77:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
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
	push	_263
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	push	_211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_18
	call	_brl_filesystem_ReadFile
	add	esp,4
	mov	dword [ebp-12],eax
	push	_213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_28
_30:
	mov	eax,ebp
	push	eax
	push	_238
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TFileMemory
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_217
	call	_brl_blitz_NullObjectError
_217:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	_218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_220
	call	_brl_blitz_NullObjectError
_220:
	push	3
	push	dword [ebp-12]
	call	_brl_stream_ReadString
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_225
	push	eax
	call	_bbGCFree
	add	esp,4
_225:
	mov	dword [esi+8],ebx
	push	_226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_228
	call	_brl_blitz_NullObjectError
_228:
	push	dword [ebp-12]
	call	_brl_stream_ReadInt
	add	esp,4
	mov	dword [ebx+12],eax
	push	_230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_232
	call	_brl_blitz_NullObjectError
_232:
	push	dword [ebp-4]
	push	dword [ebx+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_233
	mov	eax,ebp
	push	eax
	push	_237
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_234
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_236
	call	_brl_blitz_NullObjectError
_236:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_233:
	call	dword [_bbOnDebugLeaveScope]
_28:
	push	dword [ebp-12]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_30
_29:
	push	_239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_filesystem_CloseFile
	add	esp,4
	push	_240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_18
	call	_brl_filesystem_WriteFile
	add	esp,4
	mov	dword [ebp-12],eax
	push	_241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	edi,dword [_bb_FileMemoryList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_245
	call	_brl_blitz_NullObjectError
_245:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_31
_33:
	cmp	ebx,_bbNullObject
	jne	_250
	call	_brl_blitz_NullObjectError
_250:
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
	je	_31
	mov	eax,ebp
	push	eax
	push	_257
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_253
	call	_brl_blitz_NullObjectError
_253:
	push	dword [esi+8]
	push	dword [ebp-12]
	call	_brl_stream_WriteString
	add	esp,8
	push	_254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_256
	call	_brl_blitz_NullObjectError
_256:
	push	dword [esi+12]
	push	dword [ebp-12]
	call	_brl_stream_WriteInt
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_31:
	cmp	ebx,_bbNullObject
	jne	_248
	call	_brl_blitz_NullObjectError
_248:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_33
_32:
	push	_259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_filesystem_CloseFile
	add	esp,4
	push	_260
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_FileMemoryList]
	cmp	ebx,_bbNullObject
	jne	_262
	call	_brl_blitz_NullObjectError
_262:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	ebx,0
_80:
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
	push	_268
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_18
	call	_brl_filesystem_WriteFile
	add	esp,4
	mov	dword [ebp-4],eax
	push	_267
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_brl_filesystem_CloseFile
	add	esp,4
	mov	ebx,0
_82:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_111:
	dd	0
_108:
	db	"hsstuff",0
_109:
	db	"FileMemoryList",0
_110:
	db	":brl.linkedlist.TList",0
	align	4
_bb_FileMemoryList:
	dd	_bbNullObject
	align	4
_107:
	dd	1
	dd	_108
	dd	4
	dd	_109
	dd	_110
	dd	_bb_FileMemoryList
	dd	0
_42:
	db	"TFileMemory",0
_43:
	db	"initals",0
_44:
	db	"$",0
_45:
	db	"points",0
_46:
	db	"i",0
_47:
	db	"New",0
_48:
	db	"()i",0
_49:
	db	"Delete",0
_50:
	db	"AddToList",0
_51:
	db	"():TFileMemory",0
_52:
	db	"RemoveFromList",0
_53:
	db	"Compare",0
_54:
	db	"(:Object)i",0
	align	4
_41:
	dd	2
	dd	_42
	dd	3
	dd	_43
	dd	_44
	dd	8
	dd	3
	dd	_45
	dd	_46
	dd	12
	dd	6
	dd	_47
	dd	_48
	dd	16
	dd	6
	dd	_49
	dd	_48
	dd	20
	dd	6
	dd	_50
	dd	_51
	dd	48
	dd	6
	dd	_52
	dd	_51
	dd	52
	dd	6
	dd	_53
	dd	_54
	dd	28
	dd	0
	align	4
_bb_TFileMemory:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_41
	dd	16
	dd	__bb_TFileMemory_New
	dd	__bb_TFileMemory_Delete
	dd	_bbObjectToString
	dd	__bb_TFileMemory_Compare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TFileMemory_AddToList
	dd	__bb_TFileMemory_RemoveFromList
_85:
	db	"D:/KIDS/Aarons Programs/Source/BlitzMax/Breakout2/hsstuff.bmx",0
	align	4
_84:
	dd	_85
	dd	3
	dd	1
	align	4
_87:
	dd	0
	align	4
_89:
	dd	_85
	dd	104
	dd	1
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_90:
	dd	_85
	dd	105
	dd	1
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	50
	dw	77,97,107,105,110,103,32,51,32,72,105,103,104,115,99,111
	dw	114,101,115,44,32,98,114,105,32,49,50,44,32,115,116,114
	dw	32,49,53,44,32,97,110,100,32,101,118,114,32,49,51,46
	dw	46,46
	align	4
_91:
	dd	_85
	dd	107
	dd	1
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	98,114,105
	align	4
_92:
	dd	_85
	dd	108
	dd	1
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,116,114
	align	4
_93:
	dd	_85
	dd	109
	dd	1
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	101,118,114
	align	4
_94:
	dd	_85
	dd	110
	dd	1
	align	4
_95:
	dd	_85
	dd	111
	dd	1
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	26
	dw	82,101,97,100,105,110,103,32,72,105,103,104,32,115,99,111
	dw	114,101,32,102,105,108,101,46,46,46
	align	4
_96:
	dd	_85
	dd	113
	dd	1
	align	4
_97:
	dd	_85
	dd	114
	dd	1
	align	4
_98:
	dd	_85
	dd	115
	dd	1
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	27
	dw	68,101,108,101,116,105,110,103,32,98,114,105,39,115,32,104
	dw	105,103,104,115,99,111,114,101,46,46,46
	align	4
_99:
	dd	_85
	dd	116
	dd	1
	align	4
_100:
	dd	_85
	dd	117
	dd	1
	align	4
_101:
	dd	_85
	dd	118
	dd	1
	align	4
_102:
	dd	_85
	dd	119
	dd	1
	align	4
_103:
	dd	_85
	dd	120
	dd	1
	align	4
_104:
	dd	_85
	dd	121
	dd	1
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	67,108,101,97,114,105,110,103,32,70,105,108,101,46,46,46
	align	4
_105:
	dd	_85
	dd	122
	dd	1
	align	4
_106:
	dd	_85
	dd	124
	dd	1
_116:
	db	"Self",0
_117:
	db	":TFileMemory",0
	align	4
_115:
	dd	1
	dd	_47
	dd	2
	dd	_116
	dd	_117
	dd	-4
	dd	0
	align	4
_114:
	dd	3
	dd	0
	dd	0
	align	4
_122:
	dd	1
	dd	_50
	dd	2
	dd	_116
	dd	_117
	dd	-4
	dd	0
	align	4
_121:
	dd	_85
	dd	9
	dd	3
	align	4
_126:
	dd	1
	dd	_52
	dd	2
	dd	_116
	dd	_117
	dd	-4
	dd	0
	align	4
_123:
	dd	_85
	dd	13
	dd	3
_141:
	db	"p",0
_142:
	db	":Object",0
_143:
	db	"pr",0
	align	4
_140:
	dd	1
	dd	_53
	dd	2
	dd	_116
	dd	_117
	dd	-4
	dd	2
	dd	_141
	dd	_142
	dd	-8
	dd	2
	dd	_143
	dd	_117
	dd	-12
	dd	0
	align	4
_127:
	dd	_85
	dd	18
	dd	3
	align	4
_129:
	dd	_85
	dd	20
	dd	3
	align	4
_136:
	dd	3
	dd	0
	dd	0
	align	4
_135:
	dd	_85
	dd	21
	dd	4
	align	4
_139:
	dd	3
	dd	0
	dd	0
	align	4
_138:
	dd	_85
	dd	23
	dd	4
_155:
	db	"AddHS",0
_156:
	db	"file",0
_157:
	db	":brl.stream.TStream",0
	align	4
_154:
	dd	1
	dd	_155
	dd	2
	dd	_46
	dd	_44
	dd	-4
	dd	2
	dd	_141
	dd	_46
	dd	-8
	dd	2
	dd	_156
	dd	_157
	dd	-12
	dd	0
	align	4
_144:
	dd	_85
	dd	32
	dd	2
	align	4
_147:
	dd	3
	dd	0
	dd	0
	align	4
_146:
	dd	_85
	dd	33
	dd	3
	align	4
_148:
	dd	_85
	dd	36
	dd	2
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	104,115,46,100,97,116,97
	align	4
_150:
	dd	_85
	dd	37
	dd	2
	align	4
_151:
	dd	_85
	dd	39
	dd	2
	align	4
_152:
	dd	_85
	dd	40
	dd	2
	align	4
_153:
	dd	_85
	dd	42
	dd	2
_207:
	db	"ReadHS",0
_208:
	db	"filestore",0
	align	4
_206:
	dd	1
	dd	_207
	dd	2
	dd	_208
	dd	_117
	dd	-4
	dd	2
	dd	_156
	dd	_157
	dd	-8
	dd	0
	align	4
_158:
	dd	_85
	dd	47
	dd	2
	align	4
_161:
	dd	_85
	dd	48
	dd	2
	align	4
_163:
	dd	_85
	dd	49
	dd	2
	align	4
_165:
	dd	_85
	dd	50
	dd	3
	align	4
_182:
	dd	3
	dd	0
	dd	0
	align	4
_166:
	dd	_85
	dd	52
	dd	4
	align	4
_167:
	dd	_85
	dd	53
	dd	4
	align	4
_170:
	dd	_85
	dd	54
	dd	4
	align	4
_178:
	dd	_85
	dd	55
	dd	4
	align	4
_183:
	dd	_85
	dd	59
	dd	3
	align	4
_186:
	dd	_85
	dd	60
	dd	3
	align	4
_201:
	dd	3
	dd	0
	dd	2
	dd	_46
	dd	_117
	dd	-12
	dd	0
	align	4
_196:
	dd	_85
	dd	61
	dd	4
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	32,80,111,105,110,116,115
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	72,105,103,104,32,83,99,111,114,101,58,32
	align	4
_202:
	dd	_85
	dd	64
	dd	2
	align	4
_203:
	dd	_85
	dd	65
	dd	2
_264:
	db	"RemoveHS",0
	align	4
_263:
	dd	1
	dd	_264
	dd	2
	dd	_46
	dd	_44
	dd	-4
	dd	2
	dd	_208
	dd	_117
	dd	-8
	dd	2
	dd	_156
	dd	_157
	dd	-12
	dd	0
	align	4
_209:
	dd	_85
	dd	70
	dd	2
	align	4
_211:
	dd	_85
	dd	71
	dd	2
	align	4
_213:
	dd	_85
	dd	72
	dd	3
	align	4
_238:
	dd	3
	dd	0
	dd	0
	align	4
_214:
	dd	_85
	dd	74
	dd	4
	align	4
_215:
	dd	_85
	dd	75
	dd	4
	align	4
_218:
	dd	_85
	dd	76
	dd	4
	align	4
_226:
	dd	_85
	dd	77
	dd	4
	align	4
_230:
	dd	_85
	dd	79
	dd	4
	align	4
_237:
	dd	3
	dd	0
	dd	0
	align	4
_234:
	dd	_85
	dd	80
	dd	5
	align	4
_239:
	dd	_85
	dd	87
	dd	2
	align	4
_240:
	dd	_85
	dd	89
	dd	2
	align	4
_241:
	dd	_85
	dd	90
	dd	3
_258:
	db	"b",0
	align	4
_257:
	dd	3
	dd	0
	dd	2
	dd	_258
	dd	_117
	dd	-16
	dd	0
	align	4
_251:
	dd	_85
	dd	91
	dd	4
	align	4
_254:
	dd	_85
	dd	92
	dd	4
	align	4
_259:
	dd	_85
	dd	94
	dd	2
	align	4
_260:
	dd	_85
	dd	95
	dd	2
_269:
	db	"ClearHS",0
	align	4
_268:
	dd	1
	dd	_269
	dd	2
	dd	_156
	dd	_157
	dd	-4
	dd	0
	align	4
_265:
	dd	_85
	dd	99
	dd	2
	align	4
_267:
	dd	_85
	dd	100
	dd	2
