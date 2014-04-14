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
	extrn	_bbNullObject
	extrn	_bbStringClass
	extrn	_brl_audio_LoadSound
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_LoadImageFont
	public	__bb_main
	public	_bb_BackButton
	public	_bb_Ball2Img
	public	_bb_Ball3Img
	public	_bb_BallImg
	public	_bb_ClickSound
	public	_bb_Cursorimg
	public	_bb_EmitterImg
	public	_bb_HoverSound
	public	_bb_Leftimg
	public	_bb_Nobutton
	public	_bb_PaddleHit
	public	_bb_Paddleimg
	public	_bb_Playbuttonimg
	public	_bb_Rightimg
	public	_bb_WindowImg
	public	_bb_Yesbutton
	public	_bb_biparticle
	public	_bb_hBackButton
	public	_bb_hLeftimg
	public	_bb_hNobutton
	public	_bb_hPlaybuttonimg
	public	_bb_hRightimg
	public	_bb_hYesbutton
	public	_bb_normalfont
	public	_bb_pointsfont
	public	_bb_starparticle
	public	_bb_titleimg
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	cmp	dword [_105],0
	je	_106
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_106:
	mov	dword [_105],1
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
	mov	eax,dword [_51]
	and	eax,1
	cmp	eax,0
	jne	_52
	push	-1
	push	_22
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Playbuttonimg],eax
	or	dword [_51],1
_52:
	mov	eax,dword [_51]
	and	eax,2
	cmp	eax,0
	jne	_54
	push	-1
	push	_23
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_hPlaybuttonimg],eax
	or	dword [_51],2
_54:
	mov	eax,dword [_51]
	and	eax,4
	cmp	eax,0
	jne	_56
	push	-1
	push	_24
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Nobutton],eax
	or	dword [_51],4
_56:
	mov	eax,dword [_51]
	and	eax,8
	cmp	eax,0
	jne	_58
	push	-1
	push	_25
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_hNobutton],eax
	or	dword [_51],8
_58:
	mov	eax,dword [_51]
	and	eax,16
	cmp	eax,0
	jne	_60
	push	-1
	push	_26
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Yesbutton],eax
	or	dword [_51],16
_60:
	mov	eax,dword [_51]
	and	eax,32
	cmp	eax,0
	jne	_62
	push	-1
	push	_27
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_hYesbutton],eax
	or	dword [_51],32
_62:
	mov	eax,dword [_51]
	and	eax,64
	cmp	eax,0
	jne	_64
	push	-1
	push	_28
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Leftimg],eax
	or	dword [_51],64
_64:
	mov	eax,dword [_51]
	and	eax,128
	cmp	eax,0
	jne	_66
	push	-1
	push	_29
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_hLeftimg],eax
	or	dword [_51],128
_66:
	mov	eax,dword [_51]
	and	eax,256
	cmp	eax,0
	jne	_68
	push	-1
	push	_30
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Rightimg],eax
	or	dword [_51],256
_68:
	mov	eax,dword [_51]
	and	eax,512
	cmp	eax,0
	jne	_70
	push	-1
	push	_31
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_hRightimg],eax
	or	dword [_51],512
_70:
	mov	eax,dword [_51]
	and	eax,1024
	cmp	eax,0
	jne	_72
	push	-1
	push	_32
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_BackButton],eax
	or	dword [_51],1024
_72:
	mov	eax,dword [_51]
	and	eax,2048
	cmp	eax,0
	jne	_74
	push	-1
	push	_33
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_hBackButton],eax
	or	dword [_51],2048
_74:
	mov	eax,dword [_51]
	and	eax,4096
	cmp	eax,0
	jne	_76
	push	-1
	push	_34
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_BallImg],eax
	or	dword [_51],4096
_76:
	mov	eax,dword [_51]
	and	eax,8192
	cmp	eax,0
	jne	_78
	push	-1
	push	_35
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Ball2Img],eax
	or	dword [_51],8192
_78:
	mov	eax,dword [_51]
	and	eax,16384
	cmp	eax,0
	jne	_80
	push	-1
	push	_36
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Ball3Img],eax
	or	dword [_51],16384
_80:
	mov	eax,dword [_51]
	and	eax,32768
	cmp	eax,0
	jne	_82
	push	-1
	push	_37
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Paddleimg],eax
	or	dword [_51],32768
_82:
	mov	eax,dword [_51]
	and	eax,65536
	cmp	eax,0
	jne	_84
	push	-1
	push	_38
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Cursorimg],eax
	or	dword [_51],65536
_84:
	mov	eax,dword [_51]
	and	eax,131072
	cmp	eax,0
	jne	_86
	push	-1
	push	_39
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_biparticle],eax
	or	dword [_51],131072
_86:
	mov	eax,dword [_51]
	and	eax,262144
	cmp	eax,0
	jne	_88
	push	-1
	push	_40
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_starparticle],eax
	or	dword [_51],262144
_88:
	mov	eax,dword [_51]
	and	eax,524288
	cmp	eax,0
	jne	_90
	push	-1
	push	_41
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_EmitterImg],eax
	or	dword [_51],524288
_90:
	mov	eax,dword [_51]
	and	eax,1048576
	cmp	eax,0
	jne	_92
	push	-1
	push	_42
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_titleimg],eax
	or	dword [_51],1048576
_92:
	mov	eax,dword [_51]
	and	eax,2097152
	cmp	eax,0
	jne	_94
	push	-1
	push	_43
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_WindowImg],eax
	or	dword [_51],2097152
_94:
	mov	eax,dword [_51]
	and	eax,4194304
	cmp	eax,0
	jne	_96
	push	4
	push	36
	push	_44
	call	_brl_max2d_LoadImageFont
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_pointsfont],eax
	or	dword [_51],4194304
_96:
	mov	eax,dword [_51]
	and	eax,8388608
	cmp	eax,0
	jne	_98
	push	4
	push	24
	push	_44
	call	_brl_max2d_LoadImageFont
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_normalfont],eax
	or	dword [_51],8388608
_98:
	mov	eax,dword [_51]
	and	eax,16777216
	cmp	eax,0
	jne	_100
	push	0
	push	_45
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_ClickSound],eax
	or	dword [_51],16777216
_100:
	mov	eax,dword [_51]
	and	eax,33554432
	cmp	eax,0
	jne	_102
	push	0
	push	_46
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_HoverSound],eax
	or	dword [_51],33554432
_102:
	mov	eax,dword [_51]
	and	eax,67108864
	cmp	eax,0
	jne	_104
	push	0
	push	_47
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_PaddleHit],eax
	or	dword [_51],67108864
_104:
	mov	eax,0
	jmp	_48
_48:
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_105:
	dd	0
	align	4
_51:
	dd	0
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	109,101,100,105,97,47,112,108,97,121,98,117,116,116,111,110
	dw	49,46,112,110,103
	align	4
_bb_Playbuttonimg:
	dd	_bbNullObject
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	109,101,100,105,97,47,112,108,97,121,98,117,116,116,111,110
	dw	50,46,112,110,103
	align	4
_bb_hPlaybuttonimg:
	dd	_bbNullObject
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	109,101,100,105,97,47,110,111,98,117,116,116,111,110,49,46
	dw	112,110,103
	align	4
_bb_Nobutton:
	dd	_bbNullObject
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	109,101,100,105,97,47,110,111,98,117,116,116,111,110,50,46
	dw	112,110,103
	align	4
_bb_hNobutton:
	dd	_bbNullObject
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	109,101,100,105,97,47,121,101,115,98,117,116,116,111,110,49
	dw	46,112,110,103
	align	4
_bb_Yesbutton:
	dd	_bbNullObject
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	109,101,100,105,97,47,121,101,115,98,117,116,116,111,110,50
	dw	46,112,110,103
	align	4
_bb_hYesbutton:
	dd	_bbNullObject
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	109,101,100,105,97,47,108,97,114,114,111,119,46,112,110,103
	align	4
_bb_Leftimg:
	dd	_bbNullObject
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	109,101,100,105,97,47,108,97,114,114,111,119,50,46,112,110
	dw	103
	align	4
_bb_hLeftimg:
	dd	_bbNullObject
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	109,101,100,105,97,47,114,97,114,114,111,119,46,112,110,103
	align	4
_bb_Rightimg:
	dd	_bbNullObject
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	109,101,100,105,97,47,114,97,114,114,111,119,50,46,112,110
	dw	103
	align	4
_bb_hRightimg:
	dd	_bbNullObject
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	109,101,100,105,97,47,98,97,99,107,98,117,116,116,111,110
	dw	49,46,112,110,103
	align	4
_bb_BackButton:
	dd	_bbNullObject
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	109,101,100,105,97,47,98,97,99,107,98,117,116,116,111,110
	dw	50,46,112,110,103
	align	4
_bb_hBackButton:
	dd	_bbNullObject
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	109,101,100,105,97,47,98,97,108,108,46,112,110,103
	align	4
_bb_BallImg:
	dd	_bbNullObject
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	109,101,100,105,97,47,98,97,108,108,50,46,112,110,103
	align	4
_bb_Ball2Img:
	dd	_bbNullObject
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	109,101,100,105,97,47,98,97,108,108,51,46,112,110,103
	align	4
_bb_Ball3Img:
	dd	_bbNullObject
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	109,101,100,105,97,47,112,97,100,100,108,101,46,112,110,103
	align	4
_bb_Paddleimg:
	dd	_bbNullObject
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	109,101,100,105,97,47,99,117,114,115,111,114,46,112,110,103
	align	4
_bb_Cursorimg:
	dd	_bbNullObject
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	109,101,100,105,97,47,98,105,110,97,114,121,112,97,114,116
	dw	105,99,108,101,46,112,110,103
	align	4
_bb_biparticle:
	dd	_bbNullObject
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	109,101,100,105,97,47,115,116,97,114,112,97,114,116,105,99
	dw	108,101,46,112,110,103
	align	4
_bb_starparticle:
	dd	_bbNullObject
	align	4
_41:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	109,101,100,105,97,47,98,97,108,108,103,117,110,46,112,110
	dw	103
	align	4
_bb_EmitterImg:
	dd	_bbNullObject
	align	4
_42:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	109,101,100,105,97,47,116,105,116,108,101,46,112,110,103
	align	4
_bb_titleimg:
	dd	_bbNullObject
	align	4
_43:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	109,101,100,105,97,47,119,105,110,100,111,119,46,112,110,103
	align	4
_bb_WindowImg:
	dd	_bbNullObject
	align	4
_44:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	109,101,100,105,97,47,114,97,110,100,105,46,116,116,102
	align	4
_bb_pointsfont:
	dd	_bbNullObject
	align	4
_bb_normalfont:
	dd	_bbNullObject
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	109,101,100,105,97,47,99,108,105,99,107,46,119,97,118
	align	4
_bb_ClickSound:
	dd	_bbNullObject
	align	4
_46:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	109,101,100,105,97,47,104,111,118,101,114,46,119,97,118
	align	4
_bb_HoverSound:
	dd	_bbNullObject
	align	4
_47:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	109,101,100,105,97,47,112,97,100,100,108,101,104,105,116,46
	dw	119,97,118
	align	4
_bb_PaddleHit:
	dd	_bbNullObject
