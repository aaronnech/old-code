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
	extrn	_bbAppTitle
	extrn	_bbArrayNew
	extrn	_bbEmptyArray
	extrn	_bbEnd
	extrn	_bbGCFree
	extrn	_bbMilliSecs
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectFree
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawRect
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_SetColor
	extrn	_brl_polledinput_AppTerminate
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_polledinput_MouseHit
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_brl_random_SeedRnd
	public	__bb_TCreatureHandler_Copy
	public	__bb_TCreatureHandler_Delete
	public	__bb_TCreatureHandler_DrawCreatures
	public	__bb_TCreatureHandler_EraseAll
	public	__bb_TCreatureHandler_GetStatus
	public	__bb_TCreatureHandler_New
	public	__bb_TCreatureHandler_ToggleLife
	public	__bb_TCreatureHandler_UpdateCreatures
	public	__bb_main
	public	_bb_CREATURES
	public	_bb_CREATURESTMP
	public	_bb_CheckInput
	public	_bb_IsGoing
	public	_bb_ReDraw
	public	_bb_StepTimer
	public	_bb_TCreatureHandler
	public	_bb_mousegridx
	public	_bb_mousegridy
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_144],0
	je	_145
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_145:
	mov	dword [_144],1
	push	ebp
	push	_130
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
	push	_bb_TCreatureHandler
	call	_bbObjectRegisterType
	add	esp,4
	push	_95
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_22
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_100
	push	eax
	call	_bbGCFree
	add	esp,4
_100:
	mov	dword [_bbAppTitle],ebx
	push	_101
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	push	_102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	push	eax
	call	_brl_random_SeedRnd
	add	esp,4
	push	_103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_109]
	and	eax,1
	cmp	eax,0
	jne	_110
	push	60
	push	80
	push	2
	push	_107
	call	_bbArrayNew
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_CREATURES],eax
	or	dword [_109],1
_110:
	push	_111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_109]
	and	eax,2
	cmp	eax,0
	jne	_114
	push	60
	push	80
	push	2
	push	_112
	call	_bbArrayNew
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_CREATURESTMP],eax
	or	dword [_109],2
_114:
	push	_115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_47
_49:
	push	ebp
	push	_129
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_CheckInput
	push	_117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [_bb_IsGoing]
	cmp	eax,0
	je	_118
	push	ebp
	push	_121
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TCreatureHandler+52]
	push	_120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_ReDraw
	call	dword [_bbOnDebugLeaveScope]
	jmp	_122
_118:
	push	ebp
	push	_124
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_123
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_ReDraw
	call	dword [_bbOnDebugLeaveScope]
_122:
	push	_125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_AppTerminate
	cmp	eax,0
	je	_126
	push	ebp
	push	_128
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_127
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	call	dword [_bbOnDebugLeaveScope]
_126:
	call	dword [_bbOnDebugLeaveScope]
_47:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_49
_48:
	mov	ebx,0
	jmp	_67
_67:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCreatureHandler_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_147
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TCreatureHandler
	push	ebp
	push	_146
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_70
_70:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCreatureHandler_Delete:
	push	ebp
	mov	ebp,esp
_73:
	mov	eax,0
	jmp	_150
_150:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCreatureHandler_DrawCreatures:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	push	ebp
	push	_173
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	mov	dword [ebp-4],0
	jmp	_153
_25:
	push	ebp
	push	_171
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	jmp	_156
_28:
	push	ebp
	push	_169
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	push	dword [ebp-4]
	call	dword [_bb_TCreatureHandler+64]
	add	esp,8
	cmp	eax,0
	je	_158
	push	ebp
	push	_166
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,1
	mov	dword [ebp-12],eax
	push	_161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	add	eax,1
	mov	dword [ebp-16],eax
	push	_163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	200
	push	200
	push	100
	call	_brl_max2d_SetColor
	add	esp,12
	push	_164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	mov	eax,dword [ebp-16]
	imul	eax,10
	sub	eax,10
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-12]
	imul	eax,10
	sub	eax,10
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_158:
	call	dword [_bbOnDebugLeaveScope]
_26:
	add	dword [ebp-8],1
_156:
	cmp	dword [ebp-8],59
	jle	_28
_27:
	call	dword [_bbOnDebugLeaveScope]
_23:
	add	dword [ebp-4],1
_153:
	cmp	dword [ebp-4],79
	jle	_25
_24:
	mov	ebx,0
	jmp	_75
_75:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCreatureHandler_UpdateCreatures:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	eax,ebp
	push	eax
	push	_267
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_174
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_StepTimer],1
	push	_175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_StepTimer],10
	jge	_176
	mov	eax,ebp
	push	eax
	push	_178
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_77
_176:
	push	_179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_StepTimer],10
	jne	_180
	mov	eax,ebp
	push	eax
	push	_182
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_StepTimer],0
	call	dword [_bbOnDebugLeaveScope]
_180:
	push	_183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	jmp	_187
_31:
	mov	eax,ebp
	push	eax
	push	_265
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],0
	jmp	_190
_34:
	mov	eax,ebp
	push	eax
	push	_264
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	sub	eax,1
	push	eax
	push	dword [ebp-8]
	call	dword [_bb_TCreatureHandler+64]
	add	esp,8
	cmp	eax,0
	je	_193
	mov	eax,ebp
	push	eax
	push	_195
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_193:
	push	_196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	add	eax,1
	push	eax
	push	dword [ebp-8]
	call	dword [_bb_TCreatureHandler+64]
	add	esp,8
	cmp	eax,0
	je	_197
	mov	eax,ebp
	push	eax
	push	_199
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_197:
	push	_200
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	mov	eax,dword [ebp-8]
	sub	eax,1
	push	eax
	call	dword [_bb_TCreatureHandler+64]
	add	esp,8
	cmp	eax,0
	je	_201
	mov	eax,ebp
	push	eax
	push	_203
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_201:
	push	_204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	mov	eax,dword [ebp-8]
	add	eax,1
	push	eax
	call	dword [_bb_TCreatureHandler+64]
	add	esp,8
	cmp	eax,0
	je	_205
	mov	eax,ebp
	push	eax
	push	_207
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_205:
	push	_208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	sub	eax,1
	push	eax
	mov	eax,dword [ebp-8]
	add	eax,1
	push	eax
	call	dword [_bb_TCreatureHandler+64]
	add	esp,8
	cmp	eax,0
	je	_209
	mov	eax,ebp
	push	eax
	push	_211
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_209:
	push	_212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	add	eax,1
	push	eax
	mov	eax,dword [ebp-8]
	add	eax,1
	push	eax
	call	dword [_bb_TCreatureHandler+64]
	add	esp,8
	cmp	eax,0
	je	_213
	mov	eax,ebp
	push	eax
	push	_215
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_213:
	push	_216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	sub	eax,1
	push	eax
	mov	eax,dword [ebp-8]
	sub	eax,1
	push	eax
	call	dword [_bb_TCreatureHandler+64]
	add	esp,8
	cmp	eax,0
	je	_217
	mov	eax,ebp
	push	eax
	push	_219
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_217:
	push	_220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	add	eax,1
	push	eax
	mov	eax,dword [ebp-8]
	sub	eax,1
	push	eax
	call	dword [_bb_TCreatureHandler+64]
	add	esp,8
	cmp	eax,0
	je	_221
	mov	eax,ebp
	push	eax
	push	_223
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_221:
	push	_224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	mov	eax,dword [_bb_CREATURES]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_CREATURES]
	cmp	ebx,dword [eax+20]
	jb	_226
	call	_brl_blitz_ArrayBoundsError
_226:
	mov	esi,dword [ebp-12]
	mov	eax,dword [_bb_CREATURES]
	cmp	esi,dword [eax+24]
	jb	_228
	call	_brl_blitz_ArrayBoundsError
_228:
	mov	eax,dword [_bb_CREATURES]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	cmp	eax,0
	je	_231
	mov	eax,dword [ebp-4]
	cmp	eax,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_229
	mov	eax,dword [ebp-4]
	cmp	eax,3
	sete	al
	movzx	eax,al
_229:
_231:
	cmp	eax,0
	je	_233
	mov	eax,ebp
	push	eax
	push	_240
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_234
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	mov	eax,dword [_bb_CREATURESTMP]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_CREATURESTMP]
	cmp	esi,dword [eax+20]
	jb	_236
	call	_brl_blitz_ArrayBoundsError
_236:
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_CREATURESTMP]
	cmp	ebx,dword [eax+24]
	jb	_238
	call	_brl_blitz_ArrayBoundsError
_238:
	mov	eax,dword [_bb_CREATURESTMP]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_241
_233:
	mov	eax,ebp
	push	eax
	push	_248
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	mov	eax,dword [_bb_CREATURESTMP]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_CREATURESTMP]
	cmp	esi,dword [eax+20]
	jb	_244
	call	_brl_blitz_ArrayBoundsError
_244:
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_CREATURESTMP]
	cmp	ebx,dword [eax+24]
	jb	_246
	call	_brl_blitz_ArrayBoundsError
_246:
	mov	eax,dword [_bb_CREATURESTMP]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],0
	call	dword [_bbOnDebugLeaveScope]
_241:
	push	_249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	mov	eax,dword [_bb_CREATURES]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_CREATURES]
	cmp	ebx,dword [eax+20]
	jb	_251
	call	_brl_blitz_ArrayBoundsError
_251:
	mov	esi,dword [ebp-12]
	mov	eax,dword [_bb_CREATURES]
	cmp	esi,dword [eax+24]
	jb	_253
	call	_brl_blitz_ArrayBoundsError
_253:
	mov	eax,dword [_bb_CREATURES]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_254
	mov	eax,dword [ebp-4]
	cmp	eax,3
	sete	al
	movzx	eax,al
_254:
	cmp	eax,0
	je	_256
	mov	eax,ebp
	push	eax
	push	_263
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	mov	eax,dword [_bb_CREATURESTMP]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_CREATURESTMP]
	cmp	esi,dword [eax+20]
	jb	_259
	call	_brl_blitz_ArrayBoundsError
_259:
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_CREATURESTMP]
	cmp	ebx,dword [eax+24]
	jb	_261
	call	_brl_blitz_ArrayBoundsError
_261:
	mov	eax,dword [_bb_CREATURESTMP]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],1
	call	dword [_bbOnDebugLeaveScope]
_256:
	call	dword [_bbOnDebugLeaveScope]
_32:
	add	dword [ebp-12],1
_190:
	cmp	dword [ebp-12],59
	jle	_34
_33:
	call	dword [_bbOnDebugLeaveScope]
_29:
	add	dword [ebp-8],1
_187:
	cmp	dword [ebp-8],79
	jle	_31
_30:
	push	_266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TCreatureHandler+56]
	mov	ebx,0
	jmp	_77
_77:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCreatureHandler_Copy:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	mov	eax,ebp
	push	eax
	push	_289
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	mov	dword [ebp-4],0
	jmp	_271
_37:
	mov	eax,ebp
	push	eax
	push	_287
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	jmp	_274
_40:
	mov	eax,ebp
	push	eax
	push	_285
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	mov	eax,dword [_bb_CREATURES]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_CREATURES]
	cmp	esi,dword [eax+20]
	jb	_277
	call	_brl_blitz_ArrayBoundsError
_277:
	mov	ebx,dword [ebp-8]
	mov	eax,dword [_bb_CREATURES]
	cmp	ebx,dword [eax+24]
	jb	_279
	call	_brl_blitz_ArrayBoundsError
_279:
	mov	eax,dword [_bb_CREATURES]
	add	esi,ebx
	add	eax,esi
	mov	edi,eax
	mov	eax,dword [ebp-4]
	mov	edx,dword [_bb_CREATURESTMP]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_CREATURESTMP]
	cmp	esi,dword [eax+20]
	jb	_282
	call	_brl_blitz_ArrayBoundsError
_282:
	mov	ebx,dword [ebp-8]
	mov	eax,dword [_bb_CREATURESTMP]
	cmp	ebx,dword [eax+24]
	jb	_284
	call	_brl_blitz_ArrayBoundsError
_284:
	mov	edx,dword [_bb_CREATURESTMP]
	mov	eax,esi
	add	eax,ebx
	movzx	eax,byte [edx+eax+28]
	mov	eax,eax
	mov	byte [edi+28],al
	call	dword [_bbOnDebugLeaveScope]
_38:
	add	dword [ebp-8],1
_274:
	cmp	dword [ebp-8],59
	jle	_40
_39:
	call	dword [_bbOnDebugLeaveScope]
_35:
	add	dword [ebp-4],1
_271:
	cmp	dword [ebp-4],79
	jle	_37
_36:
	mov	ebx,0
	jmp	_79
_79:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCreatureHandler_ToggleLife:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	eax,ebp
	push	eax
	push	_304
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-12],eax
	push	_292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	dword [ebp-16],eax
	push	_294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	mov	eax,dword [_bb_CREATURES]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_CREATURES]
	cmp	esi,dword [eax+20]
	jb	_296
	call	_brl_blitz_ArrayBoundsError
_296:
	mov	ebx,dword [ebp-16]
	mov	eax,dword [_bb_CREATURES]
	cmp	ebx,dword [eax+24]
	jb	_298
	call	_brl_blitz_ArrayBoundsError
_298:
	mov	eax,dword [_bb_CREATURES]
	add	esi,ebx
	add	eax,esi
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	edx,dword [_bb_CREATURES]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_CREATURES]
	cmp	esi,dword [eax+20]
	jb	_301
	call	_brl_blitz_ArrayBoundsError
_301:
	mov	ebx,dword [ebp-16]
	mov	eax,dword [_bb_CREATURES]
	cmp	ebx,dword [eax+24]
	jb	_303
	call	_brl_blitz_ArrayBoundsError
_303:
	mov	edx,dword [_bb_CREATURES]
	mov	eax,esi
	add	eax,ebx
	movzx	eax,byte [edx+eax+28]
	cmp	eax,0
	sete	al
	movzx	eax,al
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [edi+28],al
	mov	ebx,0
	jmp	_83
_83:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCreatureHandler_GetStatus:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	push	ebp
	push	_326
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-12],eax
	push	_309
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	dword [ebp-16],eax
	push	_311
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	cmp	eax,79
	setg	al
	movzx	eax,al
	cmp	eax,0
	jne	_312
	mov	eax,dword [ebp-16]
	cmp	eax,59
	setg	al
	movzx	eax,al
_312:
	cmp	eax,0
	jne	_314
	mov	eax,dword [ebp-12]
	cmp	eax,0
	setl	al
	movzx	eax,al
_314:
	cmp	eax,0
	jne	_316
	mov	eax,dword [ebp-16]
	cmp	eax,0
	setl	al
	movzx	eax,al
_316:
	cmp	eax,0
	je	_318
	push	ebp
	push	_320
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_319
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-20],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_87
_318:
	push	_321
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_CREATURES]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_CREATURES]
	cmp	ebx,dword [eax+20]
	jb	_323
	call	_brl_blitz_ArrayBoundsError
_323:
	mov	esi,dword [ebp-16]
	mov	eax,dword [_bb_CREATURES]
	cmp	esi,dword [eax+24]
	jb	_325
	call	_brl_blitz_ArrayBoundsError
_325:
	mov	eax,dword [_bb_CREATURES]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	mov	byte [ebp-20],al
	jmp	_87
_87:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-20]
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCreatureHandler_EraseAll:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	push	ebp
	push	_341
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	mov	dword [ebp-4],0
	jmp	_329
_43:
	push	ebp
	push	_340
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	jmp	_332
_46:
	push	ebp
	push	_339
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	mov	eax,dword [_bb_CREATURES]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_CREATURES]
	cmp	esi,dword [eax+20]
	jb	_335
	call	_brl_blitz_ArrayBoundsError
_335:
	mov	ebx,dword [ebp-8]
	mov	eax,dword [_bb_CREATURES]
	cmp	ebx,dword [eax+24]
	jb	_337
	call	_brl_blitz_ArrayBoundsError
_337:
	mov	eax,dword [_bb_CREATURES]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],0
	call	dword [_bbOnDebugLeaveScope]
_44:
	add	dword [ebp-8],1
_332:
	cmp	dword [ebp-8],59
	jle	_46
_45:
	call	dword [_bbOnDebugLeaveScope]
_41:
	add	dword [ebp-4],1
_329:
	cmp	dword [ebp-4],79
	jle	_43
_42:
	mov	ebx,0
	jmp	_89
_89:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_CheckInput:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_359
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,10
	call	_brl_polledinput_MouseX
	cdq
	idiv	ebx
	imul	eax,10
	mov	dword [_bb_mousegridx],eax
	push	_343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,10
	call	_brl_polledinput_MouseY
	cdq
	idiv	ebx
	imul	eax,10
	mov	dword [_bb_mousegridy],eax
	push	_344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	32
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_345
	push	ebp
	push	_349
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [_bb_IsGoing]
	cmp	eax,0
	sete	al
	movzx	eax,al
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [_bb_IsGoing],al
	push	_347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_StepTimer],29
	push	_348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_ReDraw
	call	dword [_bbOnDebugLeaveScope]
_345:
	push	_350
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseHit
	add	esp,4
	cmp	eax,0
	je	_351
	push	ebp
	push	_354
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ecx,10
	mov	eax,dword [_bb_mousegridy]
	cdq
	idiv	ecx
	push	eax
	mov	ecx,10
	mov	eax,dword [_bb_mousegridx]
	cdq
	idiv	ecx
	push	eax
	call	dword [_bb_TCreatureHandler+60]
	add	esp,8
	push	_353
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_ReDraw
	call	dword [_bbOnDebugLeaveScope]
_351:
	push	_355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	call	_brl_polledinput_MouseHit
	add	esp,4
	cmp	eax,0
	je	_356
	push	ebp
	push	_358
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TCreatureHandler+68]
	call	dword [_bbOnDebugLeaveScope]
_356:
	mov	ebx,0
	jmp	_91
_91:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ReDraw:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	ebp
	push	_378
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_361
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_362
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TCreatureHandler+48]
	push	_363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_364
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [_bb_IsGoing]
	cmp	eax,0
	je	_365
	push	ebp
	push	_367
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_366
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	_50
	call	_brl_max2d_DrawText
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
	jmp	_368
_365:
	push	ebp
	push	_370
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_369
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	_51
	call	_brl_max2d_DrawText
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_368:
	push	_371
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	0
	push	_52
	call	_brl_max2d_DrawText
	add	esp,12
	push	_372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1109393408
	push	0
	push	_374
	call	_brl_max2d_DrawText
	add	esp,12
	push	_375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	mov	eax,dword [_bb_mousegridy]
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [_bb_mousegridx]
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_376
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_377
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_graphics_Flip
	add	esp,4
	mov	ebx,0
	jmp	_93
_93:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_144:
	dd	0
_131:
	db	"new file",0
_132:
	db	"GRIDSIZE",0
_133:
	db	"i",0
	align	4
_134:
	dd	_bbStringClass
	dd	2147483646
	dd	2
	dw	49,48
_135:
	db	"SPEED",0
_136:
	db	"IsGoing",0
_137:
	db	"b",0
_bb_IsGoing:
	db	0
_138:
	db	"mousegridx",0
	align	4
_bb_mousegridx:
	dd	0
_139:
	db	"mousegridy",0
	align	4
_bb_mousegridy:
	dd	0
_140:
	db	"StepTimer",0
	align	4
_bb_StepTimer:
	dd	9
_141:
	db	"CREATURES",0
_142:
	db	"[,]b",0
	align	4
_bb_CREATURES:
	dd	_bbEmptyArray
_143:
	db	"CREATURESTMP",0
	align	4
_bb_CREATURESTMP:
	dd	_bbEmptyArray
	align	4
_130:
	dd	1
	dd	_131
	dd	1
	dd	_132
	dd	_133
	dd	_134
	dd	1
	dd	_135
	dd	_133
	dd	_134
	dd	4
	dd	_136
	dd	_137
	dd	_bb_IsGoing
	dd	4
	dd	_138
	dd	_133
	dd	_bb_mousegridx
	dd	4
	dd	_139
	dd	_133
	dd	_bb_mousegridy
	dd	4
	dd	_140
	dd	_133
	dd	_bb_StepTimer
	dd	4
	dd	_141
	dd	_142
	dd	_bb_CREATURES
	dd	4
	dd	_143
	dd	_142
	dd	_bb_CREATURESTMP
	dd	0
_55:
	db	"TCreatureHandler",0
_56:
	db	"New",0
_57:
	db	"()i",0
_58:
	db	"Delete",0
_59:
	db	"DrawCreatures",0
_60:
	db	"UpdateCreatures",0
_61:
	db	"Copy",0
_62:
	db	"ToggleLife",0
_63:
	db	"(i,i)i",0
_64:
	db	"GetStatus",0
_65:
	db	"(i,i)b",0
_66:
	db	"EraseAll",0
	align	4
_54:
	dd	2
	dd	_55
	dd	6
	dd	_56
	dd	_57
	dd	16
	dd	6
	dd	_58
	dd	_57
	dd	20
	dd	7
	dd	_59
	dd	_57
	dd	48
	dd	7
	dd	_60
	dd	_57
	dd	52
	dd	7
	dd	_61
	dd	_57
	dd	56
	dd	7
	dd	_62
	dd	_63
	dd	60
	dd	7
	dd	_64
	dd	_65
	dd	64
	dd	7
	dd	_66
	dd	_57
	dd	68
	dd	0
	align	4
_bb_TCreatureHandler:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_54
	dd	8
	dd	__bb_TCreatureHandler_New
	dd	__bb_TCreatureHandler_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TCreatureHandler_DrawCreatures
	dd	__bb_TCreatureHandler_UpdateCreatures
	dd	__bb_TCreatureHandler_Copy
	dd	__bb_TCreatureHandler_ToggleLife
	dd	__bb_TCreatureHandler_GetStatus
	dd	__bb_TCreatureHandler_EraseAll
_96:
	db	"D:/Programming And Webdesign/Binary Source/BlitzMax/Game of Life/Game of Life/new file.bmx",0
	align	4
_95:
	dd	_96
	dd	2
	dd	1
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	84,104,101,32,71,97,109,101,32,111,102,32,76,105,102,101
	align	4
_101:
	dd	_96
	dd	3
	dd	1
	align	4
_102:
	dd	_96
	dd	4
	dd	1
	align	4
_103:
	dd	_96
	dd	8
	dd	1
	align	4
_104:
	dd	_96
	dd	9
	dd	1
	align	4
_105:
	dd	_96
	dd	10
	dd	1
	align	4
_106:
	dd	_96
	dd	11
	dd	1
	align	4
_109:
	dd	0
_107:
	db	"b",0
	align	4
_111:
	dd	_96
	dd	12
	dd	1
_112:
	db	"b",0
	align	4
_115:
	dd	_96
	dd	106
	dd	1
	align	4
_129:
	dd	3
	dd	0
	dd	0
	align	4
_116:
	dd	_96
	dd	107
	dd	3
	align	4
_117:
	dd	_96
	dd	108
	dd	3
	align	4
_121:
	dd	3
	dd	0
	dd	0
	align	4
_119:
	dd	_96
	dd	109
	dd	4
	align	4
_120:
	dd	_96
	dd	110
	dd	4
	align	4
_124:
	dd	3
	dd	0
	dd	0
	align	4
_123:
	dd	_96
	dd	112
	dd	4
	align	4
_125:
	dd	_96
	dd	114
	dd	3
	align	4
_128:
	dd	3
	dd	0
	dd	0
	align	4
_127:
	dd	_96
	dd	114
	dd	21
_148:
	db	"Self",0
_149:
	db	":TCreatureHandler",0
	align	4
_147:
	dd	1
	dd	_56
	dd	2
	dd	_148
	dd	_149
	dd	-4
	dd	0
	align	4
_146:
	dd	3
	dd	0
	dd	0
	align	4
_173:
	dd	1
	dd	_59
	dd	0
	align	4
_151:
	dd	_96
	dd	20
	dd	3
_172:
	db	"X",0
	align	4
_171:
	dd	3
	dd	0
	dd	2
	dd	_172
	dd	_133
	dd	-4
	dd	0
	align	4
_154:
	dd	_96
	dd	21
	dd	4
_170:
	db	"Y",0
	align	4
_169:
	dd	3
	dd	0
	dd	2
	dd	_170
	dd	_133
	dd	-8
	dd	0
	align	4
_157:
	dd	_96
	dd	22
	dd	5
_167:
	db	"DrawX",0
_168:
	db	"DrawY",0
	align	4
_166:
	dd	3
	dd	0
	dd	2
	dd	_167
	dd	_133
	dd	-12
	dd	2
	dd	_168
	dd	_133
	dd	-16
	dd	0
	align	4
_159:
	dd	_96
	dd	23
	dd	6
	align	4
_161:
	dd	_96
	dd	24
	dd	6
	align	4
_163:
	dd	_96
	dd	26
	dd	6
	align	4
_164:
	dd	_96
	dd	27
	dd	6
	align	4
_165:
	dd	_96
	dd	28
	dd	6
_268:
	db	"aliveneighbors",0
	align	4
_267:
	dd	1
	dd	_60
	dd	2
	dd	_268
	dd	_133
	dd	-4
	dd	0
	align	4
_174:
	dd	_96
	dd	35
	dd	3
	align	4
_175:
	dd	_96
	dd	36
	dd	3
	align	4
_178:
	dd	3
	dd	0
	dd	0
	align	4
_177:
	dd	_96
	dd	36
	dd	24
	align	4
_179:
	dd	_96
	dd	37
	dd	3
	align	4
_182:
	dd	3
	dd	0
	dd	0
	align	4
_181:
	dd	_96
	dd	37
	dd	24
	align	4
_183:
	dd	_96
	dd	38
	dd	3
	align	4
_185:
	dd	_96
	dd	39
	dd	3
	align	4
_265:
	dd	3
	dd	0
	dd	2
	dd	_172
	dd	_133
	dd	-8
	dd	0
	align	4
_188:
	dd	_96
	dd	40
	dd	4
	align	4
_264:
	dd	3
	dd	0
	dd	2
	dd	_170
	dd	_133
	dd	-12
	dd	0
	align	4
_191:
	dd	_96
	dd	41
	dd	5
	align	4
_192:
	dd	_96
	dd	43
	dd	6
	align	4
_195:
	dd	3
	dd	0
	dd	0
	align	4
_194:
	dd	_96
	dd	43
	dd	46
	align	4
_196:
	dd	_96
	dd	44
	dd	6
	align	4
_199:
	dd	3
	dd	0
	dd	0
	align	4
_198:
	dd	_96
	dd	44
	dd	46
	align	4
_200:
	dd	_96
	dd	45
	dd	6
	align	4
_203:
	dd	3
	dd	0
	dd	0
	align	4
_202:
	dd	_96
	dd	45
	dd	46
	align	4
_204:
	dd	_96
	dd	46
	dd	6
	align	4
_207:
	dd	3
	dd	0
	dd	0
	align	4
_206:
	dd	_96
	dd	46
	dd	46
	align	4
_208:
	dd	_96
	dd	47
	dd	6
	align	4
_211:
	dd	3
	dd	0
	dd	0
	align	4
_210:
	dd	_96
	dd	47
	dd	50
	align	4
_212:
	dd	_96
	dd	48
	dd	6
	align	4
_215:
	dd	3
	dd	0
	dd	0
	align	4
_214:
	dd	_96
	dd	48
	dd	50
	align	4
_216:
	dd	_96
	dd	49
	dd	6
	align	4
_219:
	dd	3
	dd	0
	dd	0
	align	4
_218:
	dd	_96
	dd	49
	dd	50
	align	4
_220:
	dd	_96
	dd	50
	dd	6
	align	4
_223:
	dd	3
	dd	0
	dd	0
	align	4
_222:
	dd	_96
	dd	50
	dd	50
	align	4
_224:
	dd	_96
	dd	53
	dd	6
	align	4
_240:
	dd	3
	dd	0
	dd	0
	align	4
_234:
	dd	_96
	dd	54
	dd	7
	align	4
_248:
	dd	3
	dd	0
	dd	0
	align	4
_242:
	dd	_96
	dd	56
	dd	7
	align	4
_249:
	dd	_96
	dd	58
	dd	6
	align	4
_263:
	dd	3
	dd	0
	dd	0
	align	4
_257:
	dd	_96
	dd	58
	dd	52
	align	4
_266:
	dd	_96
	dd	62
	dd	3
	align	4
_289:
	dd	1
	dd	_61
	dd	0
	align	4
_269:
	dd	_96
	dd	67
	dd	3
_288:
	db	"x",0
	align	4
_287:
	dd	3
	dd	0
	dd	2
	dd	_288
	dd	_133
	dd	-4
	dd	0
	align	4
_272:
	dd	_96
	dd	68
	dd	4
_286:
	db	"y",0
	align	4
_285:
	dd	3
	dd	0
	dd	2
	dd	_286
	dd	_133
	dd	-8
	dd	0
	align	4
_275:
	dd	_96
	dd	69
	dd	5
_305:
	db	"_x",0
_306:
	db	"_y",0
	align	4
_304:
	dd	1
	dd	_62
	dd	2
	dd	_305
	dd	_133
	dd	-4
	dd	2
	dd	_306
	dd	_133
	dd	-8
	dd	2
	dd	_288
	dd	_133
	dd	-12
	dd	2
	dd	_286
	dd	_133
	dd	-16
	dd	0
	align	4
_290:
	dd	_96
	dd	76
	dd	3
	align	4
_292:
	dd	_96
	dd	77
	dd	3
	align	4
_294:
	dd	_96
	dd	78
	dd	3
	align	4
_326:
	dd	1
	dd	_64
	dd	2
	dd	_305
	dd	_133
	dd	-4
	dd	2
	dd	_306
	dd	_133
	dd	-8
	dd	2
	dd	_288
	dd	_133
	dd	-12
	dd	2
	dd	_286
	dd	_133
	dd	-16
	dd	0
	align	4
_307:
	dd	_96
	dd	83
	dd	3
	align	4
_309:
	dd	_96
	dd	84
	dd	3
	align	4
_311:
	dd	_96
	dd	86
	dd	3
	align	4
_320:
	dd	3
	dd	0
	dd	0
	align	4
_319:
	dd	_96
	dd	87
	dd	4
	align	4
_321:
	dd	_96
	dd	90
	dd	3
	align	4
_341:
	dd	1
	dd	_66
	dd	0
	align	4
_327:
	dd	_96
	dd	96
	dd	3
	align	4
_340:
	dd	3
	dd	0
	dd	2
	dd	_172
	dd	_133
	dd	-4
	dd	0
	align	4
_330:
	dd	_96
	dd	97
	dd	4
	align	4
_339:
	dd	3
	dd	0
	dd	2
	dd	_170
	dd	_133
	dd	-8
	dd	0
	align	4
_333:
	dd	_96
	dd	98
	dd	5
_360:
	db	"CheckInput",0
	align	4
_359:
	dd	1
	dd	_360
	dd	0
	align	4
_342:
	dd	_96
	dd	119
	dd	3
	align	4
_343:
	dd	_96
	dd	120
	dd	3
	align	4
_344:
	dd	_96
	dd	121
	dd	3
	align	4
_349:
	dd	3
	dd	0
	dd	0
	align	4
_346:
	dd	_96
	dd	121
	dd	24
	align	4
_347:
	dd	_96
	dd	121
	dd	46
	align	4
_348:
	dd	_96
	dd	121
	dd	61
	align	4
_350:
	dd	_96
	dd	122
	dd	3
	align	4
_354:
	dd	3
	dd	0
	dd	0
	align	4
_352:
	dd	_96
	dd	122
	dd	18
	align	4
_353:
	dd	_96
	dd	122
	dd	92
	align	4
_355:
	dd	_96
	dd	123
	dd	3
	align	4
_358:
	dd	3
	dd	0
	dd	0
	align	4
_357:
	dd	_96
	dd	123
	dd	18
_379:
	db	"ReDraw",0
	align	4
_378:
	dd	1
	dd	_379
	dd	0
	align	4
_361:
	dd	_96
	dd	127
	dd	2
	align	4
_362:
	dd	_96
	dd	128
	dd	3
	align	4
_363:
	dd	_96
	dd	129
	dd	3
	align	4
_364:
	dd	_96
	dd	131
	dd	4
	align	4
_367:
	dd	3
	dd	0
	dd	0
	align	4
_366:
	dd	_96
	dd	132
	dd	5
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	30
	dw	80,114,101,115,115,32,83,112,97,99,101,32,116,111,32,83
	dw	84,79,80,32,83,105,109,117,108,97,116,105,111,110
	align	4
_370:
	dd	3
	dd	0
	dd	0
	align	4
_369:
	dd	_96
	dd	134
	dd	5
	align	4
_51:
	dd	_bbStringClass
	dd	2147483647
	dd	31
	dw	80,114,101,115,115,32,83,112,97,99,101,32,116,111,32,83
	dw	84,65,82,84,32,83,105,109,117,108,97,116,105,111,110
	align	4
_371:
	dd	_96
	dd	136
	dd	4
	align	4
_52:
	dd	_bbStringClass
	dd	2147483647
	dd	31
	dw	85,115,101,32,116,104,101,32,82,77,66,32,116,111,32,100
	dw	101,108,101,116,101,32,97,108,108,32,99,101,108,108,115
	align	4
_372:
	dd	_96
	dd	137
	dd	4
	align	4
_374:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	83,112,101,101,100,58,32,49,48
	align	4
_375:
	dd	_96
	dd	139
	dd	4
	align	4
_376:
	dd	_96
	dd	140
	dd	3
	align	4
_377:
	dd	_96
	dd	141
	dd	2
