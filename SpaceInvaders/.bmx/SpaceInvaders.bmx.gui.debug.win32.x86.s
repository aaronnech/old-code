	format	MS COFF
	extrn	_GetActiveWindow@0
	extrn	___bb_blitz_blitz
	extrn	___bb_spaceinvaders_init
	extrn	_bbAppFile
	extrn	_bbAppTitle
	extrn	_bbConvertToInt
	extrn	_bbEnd
	extrn	_bbGCFree
	extrn	_bbIntToLong
	extrn	_bbIntTypeTag
	extrn	_bbMilliSecs
	extrn	_bbNullObject
	extrn	_bbObjectDowncast
	extrn	_bbObjectNew
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromFloat
	extrn	_bbStringFromInt
	extrn	_bb_ALIEN_LAYOUT
	extrn	_bb_AlienList
	extrn	_bb_BG
	extrn	_bb_BulletList
	extrn	_bb_CHECKALIEN
	extrn	_bb_CHECKBULLET
	extrn	_bb_EARTHHP
	extrn	_bb_ExplosionList
	extrn	_bb_FIRE_DOWN
	extrn	_bb_FIRE_TIMER
	extrn	_bb_LEVEL
	extrn	_bb_LIFES
	extrn	_bb_MainMenu
	extrn	_bb_SCORE
	extrn	_bb_SU
	extrn	_bb_SUelapsed
	extrn	_bb_SUperiod
	extrn	_bb_SUticks
	extrn	_bb_SUtime
	extrn	_bb_SetIcon
	extrn	_bb_ShowLevelUp
	extrn	_bb_TAlien
	extrn	_bb_TBullet
	extrn	_bb_TExplosion
	extrn	_bb_TPlayer
	extrn	_bb_Win
	extrn	_bb_alien1_img
	extrn	_bb_alien2_img
	extrn	_bb_alien3_img
	extrn	_bb_alien4_img
	extrn	_bb_bg_music
	extrn	_bb_boom
	extrn	_bb_enableMinimize
	extrn	_bb_explosion_img
	extrn	_bb_fire
	extrn	_bb_i
	extrn	_bb_intro
	extrn	_bb_player
	extrn	_bb_player_img
	extrn	_bb_press_ent
	extrn	_brl_audio_PlaySound
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_blitz_OutOfDataError
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawRect
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetColor
	extrn	_brl_polledinput_AppSuspended
	extrn	_brl_polledinput_AppTerminate
	extrn	_brl_polledinput_FlushKeys
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_random_SeedRnd
	extrn	_brl_retro_Left
	public	__bb_main
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	push	esi
	push	edi
	cmp	dword [_357],0
	je	_358
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_358:
	mov	dword [_357],1
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_309
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	mov	dword [_207],_208
	call	___bb_blitz_blitz
	call	___bb_spaceinvaders_init
	push	_76
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_18
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_81
	push	eax
	call	_bbGCFree
	add	esp,4
_81:
	mov	dword [_bbAppTitle],ebx
	push	_82
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	push	_83
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_GetActiveWindow@0
	push	eax
	lea	eax,dword [ebp-28]
	push	eax
	call	_bbIntToLong
	add	esp,8
	push	dword [ebp-24]
	push	dword [ebp-28]
	call	_bb_enableMinimize
	add	esp,8
	push	_84
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_GetActiveWindow@0
	push	eax
	push	dword [_bbAppFile]
	call	_bb_SetIcon
	add	esp,8
	push	_85
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	push	eax
	call	_brl_random_SeedRnd
	add	esp,4
	push	_86
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_87
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	push	dword [_bb_BG]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_88
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [_bb_bg_music]
	call	_brl_audio_PlaySound
	add	esp,8
	push	_89
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_MainMenu
	push	_90
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TPlayer
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_player]
	dec	dword [eax+4]
	jnz	_94
	push	eax
	call	_bbGCFree
	add	esp,4
_94:
	mov	dword [_bb_player],ebx
	push	_95
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_97
	call	_brl_blitz_NullObjectError
_97:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	_98
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_FlushKeys
	push	_99
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_19
_21:
	mov	eax,ebp
	push	eax
	push	_298
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_24:
	mov	eax,ebp
	push	eax
	push	_102
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_101
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	sub	eax,dword [_bb_SUtime]
	mov	dword [_bb_SUelapsed],eax
	call	dword [_bbOnDebugLeaveScope]
_22:
	cmp	dword [_bb_SUelapsed],0
	je	_24
_23:
	push	_103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_SUelapsed]
	cdq
	idiv	dword [_bb_SUperiod]
	mov	dword [_bb_SUticks],eax
	push	_104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_SUticks],1000
	jle	_105
	mov	eax,ebp
	push	eax
	push	_107
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_SUticks],1
	call	dword [_bbOnDebugLeaveScope]
_105:
	push	_108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_SU],1
	mov	ebx,dword [_bb_SUticks]
	jmp	_109
_27:
	mov	eax,ebp
	push	eax
	push	_112
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_SUperiod]
	add	dword [_bb_SUtime],eax
	call	dword [_bbOnDebugLeaveScope]
_25:
	add	dword [_bb_SU],1
_109:
	cmp	dword [_bb_SU],ebx
	jle	_27
_26:
	push	_113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	push	dword [_bb_BG]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_117
	call	_brl_blitz_NullObjectError
_117:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [_bb_AlienList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_121
	call	_brl_blitz_NullObjectError
_121:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_28
_30:
	cmp	ebx,_bbNullObject
	jne	_126
	call	_brl_blitz_NullObjectError
_126:
	push	_bb_TAlien
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [_bb_CHECKALIEN]
	dec	dword [eax+4]
	jnz	_130
	push	eax
	call	_bbGCFree
	add	esp,4
_130:
	mov	dword [_bb_CHECKALIEN],esi
	cmp	dword [_bb_CHECKALIEN],_bbNullObject
	je	_28
	mov	eax,ebp
	push	eax
	push	_134
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_CHECKALIEN]
	cmp	esi,_bbNullObject
	jne	_133
	call	_brl_blitz_NullObjectError
_133:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_28:
	cmp	ebx,_bbNullObject
	jne	_124
	call	_brl_blitz_NullObjectError
_124:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_30
_29:
	push	_135
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [_bb_BulletList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_138
	call	_brl_blitz_NullObjectError
_138:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_31
_33:
	cmp	ebx,_bbNullObject
	jne	_143
	call	_brl_blitz_NullObjectError
_143:
	push	_bb_TBullet
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [_bb_CHECKBULLET]
	dec	dword [eax+4]
	jnz	_147
	push	eax
	call	_bbGCFree
	add	esp,4
_147:
	mov	dword [_bb_CHECKBULLET],esi
	cmp	dword [_bb_CHECKBULLET],_bbNullObject
	je	_31
	mov	eax,ebp
	push	eax
	push	_151
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_CHECKBULLET]
	cmp	esi,_bbNullObject
	jne	_150
	call	_brl_blitz_NullObjectError
_150:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_31:
	cmp	ebx,_bbNullObject
	jne	_141
	call	_brl_blitz_NullObjectError
_141:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_33
_32:
	push	_152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	edi,dword [_bb_ExplosionList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_156
	call	_brl_blitz_NullObjectError
_156:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_34
_36:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_161
	call	_brl_blitz_NullObjectError
_161:
	push	_bb_TExplosion
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_34
	mov	eax,ebp
	push	eax
	push	_165
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_164
	call	_brl_blitz_NullObjectError
_164:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_34:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_159
	call	_brl_blitz_NullObjectError
_159:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_36
_35:
	push	_168
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	70
	push	70
	push	70
	call	_brl_max2d_SetColor
	add	esp,12
	push	_169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1114636288
	push	1145569280
	push	1141309440
	push	0
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_171
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1141309440
	push	1120403456
	push	_38
	push	4
	push	dword [_bb_EARTHHP]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	call	_brl_retro_Left
	add	esp,8
	push	eax
	push	_37
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_174
	call	_brl_blitz_NullObjectError
_174:
	push	1141800960
	push	1120403456
	push	_40
	mov	eax,dword [ebx+16]
	imul	eax,10
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_39
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1141309440
	push	1143111680
	push	dword [_bb_LIFES]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_41
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1141637120
	push	1143111680
	push	dword [_bb_LEVEL]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_42
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1141964800
	push	1143111680
	push	dword [_bb_SCORE]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_43
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_AlienList]
	cmp	ebx,_bbNullObject
	jne	_180
	call	_brl_blitz_NullObjectError
_180:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	cmp	eax,0
	jne	_181
	mov	eax,ebp
	push	eax
	push	_269
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_LEVEL],1
	push	_183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_BulletList]
	cmp	ebx,_bbNullObject
	jne	_185
	call	_brl_blitz_NullObjectError
_185:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ExplosionList]
	cmp	ebx,_bbNullObject
	jne	_188
	call	_brl_blitz_NullObjectError
_188:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_LEVEL],11
	jne	_190
	mov	eax,ebp
	push	eax
	push	_192
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Win
	call	dword [_bbOnDebugLeaveScope]
_190:
	push	_193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_LEVEL]
	call	_bb_ShowLevelUp
	add	esp,4
	push	_194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_LEVEL]
	cmp	eax,2
	je	_197
	cmp	eax,3
	je	_198
	cmp	eax,4
	je	_199
	cmp	eax,5
	je	_200
	cmp	eax,6
	je	_201
	cmp	eax,7
	je	_202
	cmp	eax,8
	je	_203
	cmp	eax,9
	je	_204
	cmp	eax,10
	je	_205
	jmp	_196
_197:
	mov	eax,ebp
	push	eax
	push	_209
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_207],_57
	call	dword [_bbOnDebugLeaveScope]
	jmp	_196
_198:
	mov	eax,ebp
	push	eax
	push	_211
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_207],_59
	call	dword [_bbOnDebugLeaveScope]
	jmp	_196
_199:
	mov	eax,ebp
	push	eax
	push	_213
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_207],_61
	call	dword [_bbOnDebugLeaveScope]
	jmp	_196
_200:
	mov	eax,ebp
	push	eax
	push	_215
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_207],_63
	call	dword [_bbOnDebugLeaveScope]
	jmp	_196
_201:
	mov	eax,ebp
	push	eax
	push	_217
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_207],_65
	call	dword [_bbOnDebugLeaveScope]
	jmp	_196
_202:
	mov	eax,ebp
	push	eax
	push	_219
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_207],_67
	call	dword [_bbOnDebugLeaveScope]
	jmp	_196
_203:
	mov	eax,ebp
	push	eax
	push	_221
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_207],_69
	call	dword [_bbOnDebugLeaveScope]
	jmp	_196
_204:
	mov	eax,ebp
	push	eax
	push	_223
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_207],_71
	call	dword [_bbOnDebugLeaveScope]
	jmp	_196
_205:
	mov	eax,ebp
	push	eax
	push	_225
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_207],_73
	call	dword [_bbOnDebugLeaveScope]
_196:
	push	_226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],1
	jmp	_228
_46:
	mov	eax,ebp
	push	eax
	push	_267
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	jmp	_231
_49:
	mov	eax,ebp
	push	eax
	push	_263
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_234
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_207]
	mov	ebx,dword [esi]
	cmp	ebx,0
	jne	_237
	call	_brl_blitz_OutOfDataError
_237:
	mov	ebx,dword [ebx]
	add	esi,4
	push	ebx
	push	esi
	call	_bbConvertToInt
	add	esp,8
	mov	dword [ebp-16],eax
	add	esi,4
	movzx	eax,byte [ebx]
	cmp	eax,100
	jne	_238
	add	esi,4
_238:
	mov	dword [_207],esi
	push	_239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	sub	esi,1
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	esi,dword [eax+20]
	jb	_241
	call	_brl_blitz_ArrayBoundsError
_241:
	mov	ebx,dword [ebp-8]
	sub	ebx,1
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	ebx,dword [eax+24]
	jb	_243
	call	_brl_blitz_ArrayBoundsError
_243:
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edx,dword [ebp-16]
	mov	dword [eax+28],edx
	push	_245
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	sub	esi,1
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	esi,dword [eax+20]
	jb	_247
	call	_brl_blitz_ArrayBoundsError
_247:
	mov	ebx,dword [ebp-8]
	sub	ebx,1
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	ebx,dword [eax+24]
	jb	_249
	call	_brl_blitz_ArrayBoundsError
_249:
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	add	esi,ebx
	cmp	dword [eax+esi*4+28],0
	jle	_250
	mov	eax,ebp
	push	eax
	push	_260
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAlien
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-20],eax
	push	_253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-20]
	cmp	edi,_bbNullObject
	jne	_255
	call	_brl_blitz_NullObjectError
_255:
	mov	eax,dword [ebp-12]
	sub	eax,1
	mov	edx,dword [_bb_ALIEN_LAYOUT]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	esi,dword [eax+20]
	jb	_257
	call	_brl_blitz_ArrayBoundsError
_257:
	mov	eax,dword [ebp-8]
	sub	eax,1
	mov	ebx,eax
	mov	eax,dword [_bb_ALIEN_LAYOUT]
	cmp	ebx,dword [eax+24]
	jb	_259
	call	_brl_blitz_ArrayBoundsError
_259:
	mov	edx,dword [_bb_ALIEN_LAYOUT]
	mov	eax,esi
	add	eax,ebx
	push	dword [edx+eax*4+28]
	mov	eax,dword [ebp-8]
	add	eax,1
	push	eax
	mov	eax,dword [ebp-12]
	add	eax,1
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_250:
	call	dword [_bbOnDebugLeaveScope]
_47:
	add	dword [ebp-12],1
_231:
	cmp	dword [ebp-12],20
	jle	_49
_48:
	call	dword [_bbOnDebugLeaveScope]
_44:
	add	dword [ebp-8],1
_228:
	cmp	dword [ebp-8],8
	jle	_46
_45:
	call	dword [_bbOnDebugLeaveScope]
_181:
	push	_270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_AppSuspended
	cmp	eax,0
	je	_271
	mov	eax,ebp
	push	eax
	push	_292
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_52:
	mov	eax,ebp
	push	eax
	push	_291
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_273
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [_bb_AlienList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_276
	call	_brl_blitz_NullObjectError
_276:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_53
_55:
	cmp	ebx,_bbNullObject
	jne	_281
	call	_brl_blitz_NullObjectError
_281:
	push	_bb_TAlien
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [_bb_CHECKALIEN]
	dec	dword [eax+4]
	jnz	_285
	push	eax
	call	_bbGCFree
	add	esp,4
_285:
	mov	dword [_bb_CHECKALIEN],esi
	cmp	dword [_bb_CHECKALIEN],_bbNullObject
	je	_53
	mov	eax,ebp
	push	eax
	push	_290
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_286
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_CHECKALIEN]
	cmp	esi,_bbNullObject
	jne	_288
	call	_brl_blitz_NullObjectError
_288:
	call	_bbMilliSecs
	mov	dword [esi+40],eax
	call	dword [_bbOnDebugLeaveScope]
_53:
	cmp	ebx,_bbNullObject
	jne	_279
	call	_brl_blitz_NullObjectError
_279:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_55
_54:
	call	dword [_bbOnDebugLeaveScope]
_50:
	call	_brl_polledinput_AppSuspended
	cmp	eax,0
	jne	_52
_51:
	call	dword [_bbOnDebugLeaveScope]
_271:
	push	_293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_294
	mov	eax,ebp
	push	eax
	push	_296
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_MainMenu
	call	dword [_bbOnDebugLeaveScope]
_294:
	push	_297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_19:
	call	_brl_polledinput_AppTerminate
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,1
	je	_21
_20:
	push	_299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	push	_300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_56:
	push	_301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_58:
	push	_302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_60:
	push	_303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_62:
	push	_304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_64:
	push	_305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_66:
	push	_306
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_68:
	push	_307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_70:
	push	_308
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_72:
	mov	ebx,0
_74:
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
_357:
	dd	0
_310:
	db	"SpaceInvaders",0
_311:
	db	"ReqFPS",0
_265:
	db	"i",0
	align	4
_312:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	54,48
_313:
	db	"PARENT_PLAYER",0
	align	4
_314:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	50
_315:
	db	"PARENT_ALIEN1",0
	align	4
_316:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	49
_317:
	db	"DIR_UP",0
_318:
	db	"DIR_DOWN",0
	align	4
_319:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	45,49
_320:
	db	"SUperiod",0
_321:
	db	"SUtime",0
_322:
	db	"SUelapsed",0
_323:
	db	"SU",0
_324:
	db	"SUticks",0
_325:
	db	"CHECKALIEN",0
_262:
	db	":TAlien",0
_326:
	db	"CHECKBULLET",0
_327:
	db	":TBullet",0
_328:
	db	"AlienList",0
_329:
	db	":TList",0
_330:
	db	"BulletList",0
_331:
	db	"ExplosionList",0
_332:
	db	"ALIEN_LAYOUT",0
_333:
	db	"[,]i",0
_334:
	db	"FIRE_DOWN",0
_335:
	db	"FIRE_TIMER",0
_336:
	db	"f",0
_337:
	db	"LIFES",0
_338:
	db	"LEVEL",0
_339:
	db	"SCORE",0
_340:
	db	"EARTHHP",0
_341:
	db	"player",0
_342:
	db	":TPlayer",0
_343:
	db	"BG",0
_344:
	db	":TImage",0
_345:
	db	"intro",0
_346:
	db	"player_img",0
_347:
	db	"press_ent",0
_348:
	db	"alien1_img",0
_349:
	db	"alien2_img",0
_350:
	db	"alien3_img",0
_351:
	db	"alien4_img",0
_352:
	db	"explosion_img",0
_353:
	db	"fire",0
_354:
	db	":TSound",0
_355:
	db	"boom",0
_356:
	db	"bg_music",0
	align	4
_309:
	dd	1
	dd	_310
	dd	1
	dd	_311
	dd	_265
	dd	_312
	dd	1
	dd	_313
	dd	_265
	dd	_314
	dd	1
	dd	_315
	dd	_265
	dd	_316
	dd	1
	dd	_317
	dd	_265
	dd	_316
	dd	1
	dd	_318
	dd	_265
	dd	_319
	dd	4
	dd	_320
	dd	_265
	dd	_bb_SUperiod
	dd	4
	dd	_321
	dd	_265
	dd	_bb_SUtime
	dd	4
	dd	_322
	dd	_265
	dd	_bb_SUelapsed
	dd	4
	dd	_323
	dd	_265
	dd	_bb_SU
	dd	4
	dd	_324
	dd	_265
	dd	_bb_SUticks
	dd	4
	dd	_265
	dd	_265
	dd	_bb_i
	dd	4
	dd	_325
	dd	_262
	dd	_bb_CHECKALIEN
	dd	4
	dd	_326
	dd	_327
	dd	_bb_CHECKBULLET
	dd	4
	dd	_328
	dd	_329
	dd	_bb_AlienList
	dd	4
	dd	_330
	dd	_329
	dd	_bb_BulletList
	dd	4
	dd	_331
	dd	_329
	dd	_bb_ExplosionList
	dd	4
	dd	_332
	dd	_333
	dd	_bb_ALIEN_LAYOUT
	dd	4
	dd	_334
	dd	_265
	dd	_bb_FIRE_DOWN
	dd	4
	dd	_335
	dd	_336
	dd	_bb_FIRE_TIMER
	dd	4
	dd	_337
	dd	_265
	dd	_bb_LIFES
	dd	4
	dd	_338
	dd	_265
	dd	_bb_LEVEL
	dd	4
	dd	_339
	dd	_265
	dd	_bb_SCORE
	dd	4
	dd	_340
	dd	_336
	dd	_bb_EARTHHP
	dd	4
	dd	_341
	dd	_342
	dd	_bb_player
	dd	4
	dd	_343
	dd	_344
	dd	_bb_BG
	dd	4
	dd	_345
	dd	_344
	dd	_bb_intro
	dd	4
	dd	_346
	dd	_344
	dd	_bb_player_img
	dd	4
	dd	_347
	dd	_344
	dd	_bb_press_ent
	dd	4
	dd	_348
	dd	_344
	dd	_bb_alien1_img
	dd	4
	dd	_349
	dd	_344
	dd	_bb_alien2_img
	dd	4
	dd	_350
	dd	_344
	dd	_bb_alien3_img
	dd	4
	dd	_351
	dd	_344
	dd	_bb_alien4_img
	dd	4
	dd	_352
	dd	_344
	dd	_bb_explosion_img
	dd	4
	dd	_353
	dd	_354
	dd	_bb_fire
	dd	4
	dd	_355
	dd	_354
	dd	_bb_boom
	dd	4
	dd	_356
	dd	_354
	dd	_bb_bg_music
	dd	0
	align	4
_208:
_57:
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
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
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
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
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
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
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
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
_59:
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
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
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
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
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
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
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
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
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
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
	dd	0
	dd	_bbIntTypeTag
	dd	0
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
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
_61:
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
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	3
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
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
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
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
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
	dd	3
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	1
	dd	_bbIntTypeTag
	dd	3
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
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
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
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
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
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	0
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
	dd	0
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
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
_63:
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
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
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
	dd	2
	dd	_bbIntTypeTag
	dd	2
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
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
_65:
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
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
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
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
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
_67:
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
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
_69:
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
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
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
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
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
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
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
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
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
_71:
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
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
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
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
	dd	2
	dd	_bbIntTypeTag
	dd	2
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
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
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
_73:
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	4
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	3
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
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
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
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
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
	dd	0
	dd	_bbIntTypeTag
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
_207:
	dd	0
_77:
	db	"D:/KIDS/Aarons Programs/Source/BlitzMax/SpaceInvaders/SpaceInvaders.bmx",0
	align	4
_76:
	dd	_77
	dd	9
	dd	1
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	83,112,97,99,101,32,73,110,118,97,100,101,114,115
	align	4
_82:
	dd	_77
	dd	10
	dd	1
	align	4
_83:
	dd	_77
	dd	12
	dd	1
	align	4
_84:
	dd	_77
	dd	13
	dd	1
	align	4
_85:
	dd	_77
	dd	14
	dd	1
	align	4
_86:
	dd	_77
	dd	15
	dd	1
	align	4
_87:
	dd	_77
	dd	16
	dd	1
	align	4
_88:
	dd	_77
	dd	17
	dd	1
	align	4
_89:
	dd	_77
	dd	20
	dd	1
	align	4
_90:
	dd	_77
	dd	23
	dd	1
	align	4
_95:
	dd	_77
	dd	24
	dd	1
	align	4
_98:
	dd	_77
	dd	27
	dd	1
	align	4
_99:
	dd	_77
	dd	28
	dd	1
	align	4
_298:
	dd	3
	dd	0
	dd	0
	align	4
_100:
	dd	_77
	dd	32
	dd	2
	align	4
_102:
	dd	3
	dd	0
	dd	0
	align	4
_101:
	dd	_77
	dd	31
	dd	3
	align	4
_103:
	dd	_77
	dd	33
	dd	2
	align	4
_104:
	dd	_77
	dd	34
	dd	2
	align	4
_107:
	dd	3
	dd	0
	dd	0
	align	4
_106:
	dd	_77
	dd	34
	dd	23
	align	4
_108:
	dd	_77
	dd	35
	dd	2
	align	4
_112:
	dd	3
	dd	0
	dd	0
	align	4
_111:
	dd	_77
	dd	36
	dd	3
	align	4
_113:
	dd	_77
	dd	39
	dd	2
	align	4
_114:
	dd	_77
	dd	41
	dd	2
	align	4
_115:
	dd	_77
	dd	46
	dd	2
	align	4
_118:
	dd	_77
	dd	49
	dd	2
	align	4
_134:
	dd	3
	dd	0
	dd	0
	align	4
_131:
	dd	_77
	dd	50
	dd	3
	align	4
_135:
	dd	_77
	dd	54
	dd	2
	align	4
_151:
	dd	3
	dd	0
	dd	0
	align	4
_148:
	dd	_77
	dd	55
	dd	3
	align	4
_152:
	dd	_77
	dd	59
	dd	2
_166:
	db	"AllEXPs",0
_167:
	db	":TExplosion",0
	align	4
_165:
	dd	3
	dd	0
	dd	2
	dd	_166
	dd	_167
	dd	-4
	dd	0
	align	4
_162:
	dd	_77
	dd	60
	dd	3
	align	4
_168:
	dd	_77
	dd	64
	dd	2
	align	4
_169:
	dd	_77
	dd	65
	dd	2
	align	4
_170:
	dd	_77
	dd	66
	dd	2
	align	4
_171:
	dd	_77
	dd	67
	dd	2
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	37,47,49,48,48,37,32,68,101,115,116,114,111,121,101,100
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	69,97,114,116,104,32,83,116,97,116,117,115,58,32
	align	4
_172:
	dd	_77
	dd	68
	dd	2
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	37,47,49,48,48,37
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	80,108,97,121,101,114,32,83,104,105,101,108,100,58,32
	align	4
_175:
	dd	_77
	dd	69
	dd	2
	align	4
_41:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	76,105,102,101,115,58,32
	align	4
_176:
	dd	_77
	dd	70
	dd	2
	align	4
_42:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	76,101,118,101,108,58,32
	align	4
_177:
	dd	_77
	dd	71
	dd	2
	align	4
_43:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	83,99,111,114,101,58,32
	align	4
_178:
	dd	_77
	dd	74
	dd	2
	align	4
_269:
	dd	3
	dd	0
	dd	0
	align	4
_182:
	dd	_77
	dd	75
	dd	3
	align	4
_183:
	dd	_77
	dd	76
	dd	3
	align	4
_186:
	dd	_77
	dd	77
	dd	3
	align	4
_189:
	dd	_77
	dd	78
	dd	3
	align	4
_192:
	dd	3
	dd	0
	dd	0
	align	4
_191:
	dd	_77
	dd	79
	dd	4
	align	4
_193:
	dd	_77
	dd	81
	dd	3
	align	4
_194:
	dd	_77
	dd	82
	dd	3
	align	4
_209:
	dd	3
	dd	0
	dd	0
	align	4
_206:
	dd	_77
	dd	84
	dd	5
	align	4
_211:
	dd	3
	dd	0
	dd	0
	align	4
_210:
	dd	_77
	dd	86
	dd	5
	align	4
_213:
	dd	3
	dd	0
	dd	0
	align	4
_212:
	dd	_77
	dd	88
	dd	5
	align	4
_215:
	dd	3
	dd	0
	dd	0
	align	4
_214:
	dd	_77
	dd	90
	dd	5
	align	4
_217:
	dd	3
	dd	0
	dd	0
	align	4
_216:
	dd	_77
	dd	92
	dd	5
	align	4
_219:
	dd	3
	dd	0
	dd	0
	align	4
_218:
	dd	_77
	dd	94
	dd	5
	align	4
_221:
	dd	3
	dd	0
	dd	0
	align	4
_220:
	dd	_77
	dd	96
	dd	5
	align	4
_223:
	dd	3
	dd	0
	dd	0
	align	4
_222:
	dd	_77
	dd	98
	dd	5
	align	4
_225:
	dd	3
	dd	0
	dd	0
	align	4
_224:
	dd	_77
	dd	100
	dd	5
	align	4
_226:
	dd	_77
	dd	102
	dd	3
_268:
	db	"y",0
	align	4
_267:
	dd	3
	dd	0
	dd	2
	dd	_268
	dd	_265
	dd	-8
	dd	0
	align	4
_229:
	dd	_77
	dd	103
	dd	4
_264:
	db	"x",0
_266:
	db	"Datastorage",0
	align	4
_263:
	dd	3
	dd	0
	dd	2
	dd	_264
	dd	_265
	dd	-12
	dd	2
	dd	_266
	dd	_265
	dd	-16
	dd	0
	align	4
_232:
	dd	_77
	dd	104
	dd	5
	align	4
_234:
	dd	_77
	dd	105
	dd	5
	align	4
_239:
	dd	_77
	dd	106
	dd	5
	align	4
_245:
	dd	_77
	dd	107
	dd	5
_261:
	db	"Alien",0
	align	4
_260:
	dd	3
	dd	0
	dd	2
	dd	_261
	dd	_262
	dd	-20
	dd	0
	align	4
_251:
	dd	_77
	dd	108
	dd	6
	align	4
_253:
	dd	_77
	dd	109
	dd	6
	align	4
_270:
	dd	_77
	dd	116
	dd	2
	align	4
_292:
	dd	3
	dd	0
	dd	0
	align	4
_272:
	dd	_77
	dd	121
	dd	2
	align	4
_291:
	dd	3
	dd	0
	dd	0
	align	4
_273:
	dd	_77
	dd	118
	dd	2
	align	4
_290:
	dd	3
	dd	0
	dd	0
	align	4
_286:
	dd	_77
	dd	119
	dd	3
	align	4
_293:
	dd	_77
	dd	125
	dd	2
	align	4
_296:
	dd	3
	dd	0
	dd	0
	align	4
_295:
	dd	_77
	dd	125
	dd	24
	align	4
_297:
	dd	_77
	dd	128
	dd	2
	align	4
_299:
	dd	_77
	dd	130
	dd	1
	align	4
_300:
	dd	_77
	dd	155
	dd	1
	align	4
_301:
	dd	_77
	dd	165
	dd	1
	align	4
_302:
	dd	_77
	dd	175
	dd	1
	align	4
_303:
	dd	_77
	dd	185
	dd	1
	align	4
_304:
	dd	_77
	dd	195
	dd	1
	align	4
_305:
	dd	_77
	dd	205
	dd	1
	align	4
_306:
	dd	_77
	dd	215
	dd	1
	align	4
_307:
	dd	_77
	dd	225
	dd	1
	align	4
_308:
	dd	_77
	dd	235
	dd	1
