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
	extrn	_bbArrayNew1D
	extrn	_bbEmptyArray
	extrn	_bbFloatToInt
	extrn	_bbNullObject
	extrn	_bbObjectDowncast
	extrn	_bbStringClass
	extrn	_brl_d3d7max2d_TD3D7ImageFrame
	extrn	_brl_d3d7max2d_TD3D7Max2DDriver
	extrn	_brl_glmax2d_TGLMax2DDriver
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawRect
	extrn	_brl_max2d_GetOrigin
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d__max2dDriver
	extrn	_brl_polledinput_AppTerminate
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_polledinput_MouseDown
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	public	__bb_main
	public	_bb_DrawImageStretch
	public	_bb_cx
	public	_bb_cy
	public	_bb_drag
	public	_bb_img
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	cmp	dword [_68],0
	je	_69
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_69:
	mov	dword [_68],1
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
	push	0
	push	60
	push	0
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	mov	eax,dword [_45]
	and	eax,1
	cmp	eax,0
	jne	_46
	push	4
	push	_43
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_cx],eax
	or	dword [_45],1
_46:
	mov	eax,dword [_45]
	and	eax,2
	cmp	eax,0
	jne	_49
	push	4
	push	_47
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_cy],eax
	or	dword [_45],2
_49:
	mov	eax,dword [_bb_cx]
	fld	dword [_87]
	fstp	dword [eax+24]
	mov	eax,dword [_bb_cy]
	fld	dword [_88]
	fstp	dword [eax+24]
	mov	eax,dword [_bb_cx]
	fld	dword [_89]
	fstp	dword [eax+4+24]
	mov	eax,dword [_bb_cy]
	fld	dword [_90]
	fstp	dword [eax+4+24]
	mov	eax,dword [_bb_cx]
	fld	dword [_91]
	fstp	dword [eax+8+24]
	mov	eax,dword [_bb_cy]
	fld	dword [_92]
	fstp	dword [eax+8+24]
	mov	eax,dword [_bb_cx]
	fld	dword [_93]
	fstp	dword [eax+12+24]
	mov	eax,dword [_bb_cy]
	fld	dword [_94]
	fstp	dword [eax+12+24]
	mov	eax,dword [_45]
	and	eax,4
	cmp	eax,0
	jne	_51
	push	-1
	push	_22
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_img],eax
	or	dword [_45],4
_51:
	jmp	_23
_25:
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	0
	mov	eax,dword [_bb_cy]
	push	dword [eax+12+24]
	mov	eax,dword [_bb_cx]
	push	dword [eax+12+24]
	mov	eax,dword [_bb_cy]
	push	dword [eax+8+24]
	mov	eax,dword [_bb_cx]
	push	dword [eax+8+24]
	mov	eax,dword [_bb_cy]
	push	dword [eax+4+24]
	mov	eax,dword [_bb_cx]
	push	dword [eax+4+24]
	mov	eax,dword [_bb_cy]
	push	dword [eax+24]
	mov	eax,dword [_bb_cx]
	push	dword [eax+24]
	push	dword [_bb_img]
	call	_bb_DrawImageStretch
	add	esp,40
	mov	edi,0
	jmp	_55
_28:
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	mov	eax,dword [_bb_cx]
	fld	dword [eax+edi*4+24]
	fsub	dword [_95]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	je	_56
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	mov	eax,dword [_bb_cx]
	fld	dword [eax+edi*4+24]
	fadd	dword [_96]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_56:
	cmp	eax,0
	je	_58
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	mov	eax,dword [_bb_cy]
	fld	dword [eax+edi*4+24]
	fsub	dword [_97]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
_58:
	cmp	eax,0
	je	_60
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	mov	eax,dword [_bb_cy]
	fld	dword [eax+edi*4+24]
	fadd	dword [_98]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_60:
	cmp	eax,0
	je	_62
	push	0
	push	0
	push	250
	call	_brl_max2d_SetColor
	add	esp,12
	push	1
	call	_brl_polledinput_MouseDown
	add	esp,4
	cmp	eax,0
	je	_63
	mov	dword [_bb_drag],edi
_63:
	jmp	_64
_62:
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
_64:
	cmp	dword [_bb_drag],0
	jl	_65
	push	1
	call	_brl_polledinput_MouseDown
	add	esp,4
	cmp	eax,0
	jne	_66
	mov	dword [_bb_drag],-1
	jmp	_67
_66:
	mov	esi,dword [_bb_cx]
	mov	ebx,dword [_bb_drag]
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	fstp	dword [esi+ebx*4+24]
	mov	esi,dword [_bb_cy]
	mov	ebx,dword [_bb_drag]
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	fstp	dword [esi+ebx*4+24]
_67:
_65:
	push	1092616192
	push	1092616192
	mov	eax,dword [_bb_cy]
	fld	dword [eax+edi*4+24]
	fsub	dword [_99]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [_bb_cx]
	fld	dword [eax+edi*4+24]
	fsub	dword [_100]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
_26:
	add	edi,1
_55:
	cmp	edi,3
	jle	_28
_27:
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	call	_brl_max2d_Cls
_23:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	jne	_52
	call	_brl_polledinput_AppTerminate
_52:
	cmp	eax,0
	je	_25
_24:
	mov	eax,0
	jmp	_29
_29:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DrawImageStretch:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [ebp+8]
	fldz
	fstp	dword [ebp-4]
	fldz
	fstp	dword [ebp-8]
	push	_brl_glmax2d_TGLMax2DDriver
	push	dword [_brl_max2d__max2dDriver]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_70
	jmp	_71
_70:
	push	_brl_d3d7max2d_TD3D7Max2DDriver
	push	dword [_brl_max2d__max2dDriver]
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+132]
	add	esp,4
	cmp	eax,0
	jne	_74
	mov	eax,0
	jmp	_41
_74:
	push	_brl_d3d7max2d_TD3D7ImageFrame
	fld	dword [ebp+44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	edi,eax
	fld	dword [ebx+32]
	fchs
	fstp	dword [ebp-12]
	fld	dword [ebp-12]
	fstp	dword [ebp-24]
	fld	dword [ebx+36]
	fchs
	fstp	dword [ebp-16]
	fld	dword [ebp-16]
	fstp	dword [ebp-20]
	fldz
	fstp	dword [ebp-4]
	fldz
	fstp	dword [ebp-8]
	lea	eax,dword [ebp-8]
	push	eax
	lea	eax,dword [ebp-4]
	push	eax
	call	_brl_max2d_GetOrigin
	add	esp,8
	fld	dword [ebp+12]
	fadd	dword [ebp-4]
	fstp	dword [ebp+12]
	fld	dword [ebp+16]
	fadd	dword [ebp-8]
	fstp	dword [ebp+16]
	fld	dword [ebp+20]
	fadd	dword [ebp-4]
	fstp	dword [ebp+20]
	fld	dword [ebp+24]
	fadd	dword [ebp-8]
	fstp	dword [ebp+24]
	fld	dword [ebp+28]
	fadd	dword [ebp-4]
	fstp	dword [ebp+28]
	fld	dword [ebp+32]
	fadd	dword [ebp-8]
	fstp	dword [ebp+32]
	fld	dword [ebp+36]
	fadd	dword [ebp-4]
	fstp	dword [ebp+36]
	fld	dword [ebp+40]
	fadd	dword [ebp-4]
	fstp	dword [ebp+40]
	mov	eax,dword [edi+24]
	lea	eax,dword [eax+24]
	mov	ebx,eax
	mov	eax,ebx
	fld	dword [ebp-12]
	fmul	dword [esi+28]
	fld	dword [ebp-16]
	fmul	dword [esi+32]
	faddp	st1,st0
	fadd	dword [ebp+12]
	fstp	dword [ebx]
	fld	dword [ebp-12]
	fmul	dword [esi+36]
	fld	dword [ebp-16]
	fmul	dword [esi+40]
	faddp	st1,st0
	fadd	dword [ebp+16]
	fstp	dword [ebx+4]
	mov	edx,dword [esi+20]
	mov	dword [eax+12],edx
	fld	dword [ebp-24]
	fmul	dword [esi+28]
	fld	dword [ebp-16]
	fmul	dword [esi+32]
	faddp	st1,st0
	fadd	dword [ebp+20]
	fstp	dword [ebx+24]
	fld	dword [ebp-24]
	fmul	dword [esi+36]
	fld	dword [ebp-16]
	fmul	dword [esi+40]
	faddp	st1,st0
	fadd	dword [ebp+24]
	fstp	dword [ebx+28]
	mov	edx,dword [esi+20]
	mov	dword [eax+36],edx
	fld	dword [ebp-24]
	fmul	dword [esi+28]
	fld	dword [ebp-20]
	fmul	dword [esi+32]
	faddp	st1,st0
	fadd	dword [ebp+28]
	fstp	dword [ebx+48]
	fld	dword [ebp-24]
	fmul	dword [esi+36]
	fld	dword [ebp-20]
	fmul	dword [esi+40]
	faddp	st1,st0
	fadd	dword [ebp+32]
	fstp	dword [ebx+52]
	mov	edx,dword [esi+20]
	mov	dword [eax+60],edx
	fld	dword [ebp-12]
	fmul	dword [esi+28]
	fld	dword [ebp-20]
	fmul	dword [esi+32]
	faddp	st1,st0
	fadd	dword [ebp+36]
	fstp	dword [ebx+72]
	fld	dword [ebp-12]
	fmul	dword [esi+36]
	fld	dword [ebp-20]
	fmul	dword [esi+40]
	faddp	st1,st0
	fadd	dword [ebp+40]
	fstp	dword [ebx+76]
	mov	edx,dword [esi+20]
	mov	dword [eax+84],edx
	mov	eax,esi
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+152]
	add	esp,8
	mov	eax,dword [esi+8]
	push	0
	push	4
	push	ebx
	push	322
	push	6
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
_71:
	mov	eax,0
	jmp	_41
_41:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_68:
	dd	0
	align	4
_45:
	dd	0
_43:
	db	"f",0
	align	4
_bb_cx:
	dd	_bbEmptyArray
_47:
	db	"f",0
	align	4
_bb_cy:
	dd	_bbEmptyArray
	align	4
_87:
	dd	0x42c80000
	align	4
_88:
	dd	0x42c80000
	align	4
_89:
	dd	0x43640000
	align	4
_90:
	dd	0x42c80000
	align	4
_91:
	dd	0x43640000
	align	4
_92:
	dd	0x43640000
	align	4
_93:
	dd	0x42c80000
	align	4
_94:
	dd	0x43640000
	align	4
_bb_drag:
	dd	-1
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	109,101,100,105,97,47,112,97,100,100,108,101,46,112,110,103
	align	4
_bb_img:
	dd	_bbNullObject
	align	4
_95:
	dd	0x40a00000
	align	4
_96:
	dd	0x40a00000
	align	4
_97:
	dd	0x40a00000
	align	4
_98:
	dd	0x40a00000
	align	4
_99:
	dd	0x40a00000
	align	4
_100:
	dd	0x40a00000
