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
	extrn	_bbHandleToObject
	extrn	_bbNullObject
	extrn	_bbObjectDowncast
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbSin
	extrn	_bbStringClass
	extrn	_brl_max2d_AutoMidHandle
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetRotation
	extrn	_brl_max2d_TImage
	extrn	_brl_max2d_TileImage
	extrn	_brl_polledinput_KeyDown
	public	__bb_main
	public	_bb_UpdateBG
	public	_bb_UpdatePlayer
	public	_bb_pdx
	public	_bb_pdy
	public	_bb_protation
	public	_bb_px
	public	_bb_py
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	cmp	dword [_46],0
	je	_47
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_47:
	mov	dword [_46],1
	mov	dword [ebp-4],_bbNullObject
	push	ebp
	push	_33
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
	push	_25
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_max2d_AutoMidHandle
	add	esp,4
	push	_27
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	_18
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	dword [ebp-4],eax
	push	_29
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_AutoMidHandle
	add	esp,4
	push	_30
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_31
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_32
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
_19:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_UpdateBG:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],0
	push	ebp
	push	_55
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_48
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	fld	dword [_bb_py]
	fdiv	dword [_97]
	fchs
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_bb_px]
	fdiv	dword [_98]
	fchs
	sub	esp,4
	fstp	dword [esp]
	push	_brl_max2d_TImage
	push	dword [ebp-4]
	call	_bbHandleToObject
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	call	_brl_max2d_TileImage
	add	esp,16
	push	_50
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1060320051
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_51
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	fld	dword [_bb_py]
	fdiv	dword [_99]
	fchs
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_bb_px]
	fdiv	dword [_100]
	fchs
	sub	esp,4
	fstp	dword [esp]
	push	_brl_max2d_TImage
	push	dword [ebp-4]
	call	_bbHandleToObject
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	call	_brl_max2d_TileImage
	add	esp,16
	push	_52
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1053609165
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_53
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	fld	dword [_bb_py]
	fchs
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_bb_px]
	fchs
	sub	esp,4
	fstp	dword [esp]
	push	_brl_max2d_TImage
	push	dword [ebp-4]
	call	_bbHandleToObject
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	call	_brl_max2d_TileImage
	add	esp,16
	push	_54
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	mov	ebx,0
_21:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_UpdatePlayer:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	mov	dword [ebp-4],0
	push	ebp
	push	_92
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_58
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	38
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_59
	push	_60
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_pdx]
	fstp	qword [ebp-12]
	mov	eax,dword [_bb_protation]
	mov	dword [ebp+-24],eax
	fild	dword [ebp+-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	qword [_103]
	fmulp	st1,st0
	fld	qword [ebp-12]
	faddp	st1,st0
	fstp	qword [ebp-12]
	fld	qword [ebp-12]
	fstp	dword [_bb_pdx]
	push	_61
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_pdy]
	fstp	qword [ebp-20]
	mov	eax,dword [_bb_protation]
	mov	dword [ebp+-24],eax
	fild	dword [ebp+-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fchs
	fld	qword [_104]
	fmulp	st1,st0
	fld	qword [ebp-20]
	faddp	st1,st0
	fstp	qword [ebp-20]
	fld	qword [ebp-20]
	fstp	dword [_bb_pdy]
_59:
	push	_62
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	37
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_63
	push	_64
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [_bb_protation],4
_63:
	push	_65
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	39
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_66
	push	_67
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_protation],4
_66:
	push	_68
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_pdx]
	fld	dword [_105]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_69
	push	_70
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_106]
	fstp	dword [_bb_pdx]
_69:
	push	_71
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_pdx]
	fld	dword [_107]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_72
	push	_73
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_108]
	fstp	dword [_bb_pdx]
_72:
	push	_74
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_pdy]
	fld	dword [_109]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_75
	push	_76
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_110]
	fstp	dword [_bb_pdy]
_75:
	push	_77
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_pdy]
	fld	dword [_111]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_78
	push	_79
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_112]
	fstp	dword [_bb_pdy]
_78:
	push	_80
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_protation],360
	jle	_81
	push	_82
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [_bb_protation],360
_81:
	push	_83
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_protation],0
	jge	_84
	push	_85
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_protation],360
_84:
	push	_86
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_px]
	fadd	dword [_bb_pdx]
	fstp	dword [_bb_px]
	push	_87
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_py]
	fadd	dword [_bb_pdy]
	fstp	dword [_bb_py]
	push	_88
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_protation]
	mov	dword [ebp+-24],eax
	fild	dword [ebp+-24]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_89
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	1133903872
	push	1137180672
	push	_brl_max2d_TImage
	push	dword [ebp-4]
	call	_bbHandleToObject
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_91
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	mov	ebx,0
_23:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_46:
	dd	0
_34:
	db	"init",0
_35:
	db	"ACCELERATION",0
_36:
	db	"f",0
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	48,46,49,48,48,48,48,48,48,48,49
_38:
	db	"player_img",0
_39:
	db	":brl.max2d.TImage",0
_40:
	db	"px",0
	align	4
_bb_px:
	dd	0x43c80000
_41:
	db	"py",0
	align	4
_bb_py:
	dd	0x43960000
_42:
	db	"pdx",0
	align	4
_bb_pdx:
	dd	0x0
_43:
	db	"pdy",0
	align	4
_bb_pdy:
	dd	0x0
_44:
	db	"protation",0
_45:
	db	"i",0
	align	4
_bb_protation:
	dd	0
	align	4
_33:
	dd	1
	dd	_34
	dd	1
	dd	_35
	dd	_36
	dd	_37
	dd	2
	dd	_38
	dd	_39
	dd	-4
	dd	4
	dd	_40
	dd	_36
	dd	_bb_px
	dd	4
	dd	_41
	dd	_36
	dd	_bb_py
	dd	4
	dd	_42
	dd	_36
	dd	_bb_pdx
	dd	4
	dd	_43
	dd	_36
	dd	_bb_pdy
	dd	4
	dd	_44
	dd	_45
	dd	_bb_protation
	dd	0
_26:
	db	"D:/KIDS/Aarons Programs/Source/BlitzMax/360shooter/init.bmx",0
	align	4
_25:
	dd	_26
	dd	9
	dd	1
	align	4
_27:
	dd	_26
	dd	10
	dd	1
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	77,101,100,105,97,47,112,108,97,121,101,114,46,112,110,103
	align	4
_29:
	dd	_26
	dd	11
	dd	1
	align	4
_30:
	dd	_26
	dd	12
	dd	1
	align	4
_31:
	dd	_26
	dd	13
	dd	1
	align	4
_32:
	dd	_26
	dd	14
	dd	1
_56:
	db	"UpdateBG",0
_57:
	db	"img",0
	align	4
_55:
	dd	1
	dd	_56
	dd	2
	dd	_57
	dd	_45
	dd	-4
	dd	0
	align	4
_48:
	dd	_26
	dd	33
	dd	2
	align	4
_97:
	dd	0x40800000
	align	4
_98:
	dd	0x40800000
	align	4
_50:
	dd	_26
	dd	34
	dd	2
	align	4
_51:
	dd	_26
	dd	35
	dd	2
	align	4
_99:
	dd	0x40000000
	align	4
_100:
	dd	0x40000000
	align	4
_52:
	dd	_26
	dd	36
	dd	2
	align	4
_53:
	dd	_26
	dd	37
	dd	2
	align	4
_54:
	dd	_26
	dd	38
	dd	2
_93:
	db	"UpdatePlayer",0
	align	4
_92:
	dd	1
	dd	_93
	dd	2
	dd	_38
	dd	_45
	dd	-4
	dd	0
	align	4
_58:
	dd	_26
	dd	44
	dd	2
	align	4
_60:
	dd	_26
	dd	45
	dd	3
	align	8
_103:
	dd	0xa0000000,0x3fb99999
	align	4
_61:
	dd	_26
	dd	46
	dd	3
	align	8
_104:
	dd	0xa0000000,0x3fb99999
	align	4
_62:
	dd	_26
	dd	49
	dd	2
	align	4
_64:
	dd	_26
	dd	50
	dd	3
	align	4
_65:
	dd	_26
	dd	53
	dd	2
	align	4
_67:
	dd	_26
	dd	54
	dd	3
	align	4
_68:
	dd	_26
	dd	57
	dd	2
	align	4
_105:
	dd	0x41700000
	align	4
_70:
	dd	_26
	dd	57
	dd	14
	align	4
_106:
	dd	0x41700000
	align	4
_71:
	dd	_26
	dd	58
	dd	2
	align	4
_107:
	dd	0xc1700000
	align	4
_73:
	dd	_26
	dd	58
	dd	15
	align	4
_108:
	dd	0xc1700000
	align	4
_74:
	dd	_26
	dd	59
	dd	2
	align	4
_109:
	dd	0x41700000
	align	4
_76:
	dd	_26
	dd	59
	dd	14
	align	4
_110:
	dd	0x41700000
	align	4
_77:
	dd	_26
	dd	60
	dd	2
	align	4
_111:
	dd	0xc1700000
	align	4
_79:
	dd	_26
	dd	60
	dd	15
	align	4
_112:
	dd	0xc1700000
	align	4
_80:
	dd	_26
	dd	62
	dd	2
	align	4
_82:
	dd	_26
	dd	62
	dd	21
	align	4
_83:
	dd	_26
	dd	63
	dd	2
	align	4
_85:
	dd	_26
	dd	63
	dd	19
	align	4
_86:
	dd	_26
	dd	65
	dd	2
	align	4
_87:
	dd	_26
	dd	66
	dd	2
	align	4
_88:
	dd	_26
	dd	69
	dd	2
	align	4
_89:
	dd	_26
	dd	70
	dd	2
	align	4
_91:
	dd	_26
	dd	71
	dd	2
