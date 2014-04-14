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
	extrn	_bbHandleFromObject
	extrn	_bbHandleToObject
	extrn	_bbNullObject
	extrn	_bbObjectDowncast
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_brl_audio_LoadSound
	extrn	_brl_audio_PlaySound
	extrn	_brl_audio_TSound
	extrn	_brl_standardio_Input
	public	__bb_main
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	cmp	dword [_31],0
	je	_32
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_32:
	mov	dword [_31],1
	mov	dword [ebp-4],0
	push	ebp
	push	_27
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
	push	_22
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_18
	call	_brl_audio_LoadSound
	add	esp,8
	push	eax
	call	_bbHandleFromObject
	add	esp,4
	mov	dword [ebp-4],eax
	push	_25
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_brl_audio_TSound
	push	dword [ebp-4]
	call	_bbHandleToObject
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	call	_brl_audio_PlaySound
	add	esp,8
	push	_26
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_19
	call	_brl_standardio_Input
	add	esp,4
	mov	ebx,0
	jmp	_20
_20:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_31:
	dd	0
_28:
	db	"test",0
_29:
	db	"sound",0
_30:
	db	"i",0
	align	4
_27:
	dd	1
	dd	_28
	dd	2
	dd	_29
	dd	_30
	dd	-4
	dd	0
_23:
	db	"D:/KIDS/Aarons Programs/Source/BlitzMax/BallDodge/test.bmx",0
	align	4
_22:
	dd	_23
	dd	1
	dd	1
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	73,109,97,103,101,115,47,98,111,117,110,99,101,46,119,97
	dw	118
	align	4
_25:
	dd	_23
	dd	2
	dd	1
	align	4
_26:
	dd	_23
	dd	4
	dd	1
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	80,114,101,115,115,32,97,110,121,32,107,101,121,32,116,111
	dw	32,99,111,110,116,105,110,117,101
