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
	extrn	_bbEmptyString
	extrn	_bbEnd
	extrn	_bbFloatToInt
	extrn	_bbGCFree
	extrn	_bbMemFree
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
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
	extrn	_bbStringFromDouble
	extrn	_bbStringToCString
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_max2d_DrawPixmap
	extrn	_brl_pixmap_LoadPixmap
	extrn	_brl_pixmap_PixmapHeight
	extrn	_brl_pixmap_PixmapWidth
	extrn	_brl_pixmap_ReadPixel
	extrn	_brl_pixmap_WritePixel
	extrn	_brl_polledinput_WaitKey
	extrn	_brl_standardio_Print
	extrn	_brl_system_Notify
	extrn	_brl_system_RequestFile
	extrn	_brl_textstream_LoadText
	extrn	_luaL_checkinteger
	extrn	_luaL_newstate
	extrn	_luaL_openlibs
	extrn	_lua_close
	extrn	_lua_pushnumber
	extrn	_lua_pushstring
	extrn	_lua_settable
	extrn	_lua_tonumber
	extrn	_pub_lua_luaL_dostring
	extrn	_pub_lua_lua_register
	extrn	_pub_lua_lua_tostring
	public	__bb_LuaScript_Delete
	public	__bb_LuaScript_GetInt
	public	__bb_LuaScript_GetString
	public	__bb_LuaScript_New
	public	__bb_LuaScript_RegisterFunction
	public	__bb_LuaScript_Run
	public	__bb_LuaScript_SetVar
	public	__bb_LuaScript_Stop
	public	__bb_LuaScript_lua_state
	public	__bb_main
	public	_bb_BMX_ECHO
	public	_bb_Get_Yuv
	public	_bb_Get_rgb
	public	_bb_IntColor
	public	_bb_LUA
	public	_bb_LUA_GET_RGB
	public	_bb_LUA_GET_YUV
	public	_bb_LUA_LOADIMAGE
	public	_bb_LUA_SET_RGB
	public	_bb_LUA_SET_YUV
	public	_bb_LUA_UPDATE
	public	_bb_LUA_USERACTION
	public	_bb_LuaScript
	public	_bb_Rgb2Yuv
	public	_bb_SET_YUV
	public	_bb_Set_rgb
	public	_bb_Yuv2Rgb
	public	_bb_current_pixmap
	public	_bb_pix_h
	public	_bb_pix_w
	public	_bb_rgb
	public	_bb_set_yiq2rgb
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_269],0
	je	_270
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_270:
	mov	dword [_269],1
	push	ebp
	push	_260
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
	push	_182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_LuaScript
	call	_bbObjectRegisterType
	add	esp,4
	push	_184
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	480
	push	640
	call	_brl_graphics_Graphics
	add	esp,20
	push	_185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_187]
	and	eax,1
	cmp	eax,0
	jne	_188
	push	_22
	call	_brl_pixmap_LoadPixmap
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_current_pixmap],eax
	or	dword [_187],1
_188:
	push	_189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_187]
	and	eax,2
	cmp	eax,0
	jne	_191
	push	_bb_LuaScript
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_LUA],eax
	or	dword [_187],2
_191:
	push	_192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_187]
	and	eax,4
	cmp	eax,0
	jne	_193
	push	dword [_bb_current_pixmap]
	call	_brl_pixmap_PixmapWidth
	add	esp,4
	mov	dword [_bb_pix_w],eax
	or	dword [_187],4
_193:
	push	_194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_187]
	and	eax,8
	cmp	eax,0
	jne	_195
	push	dword [_bb_current_pixmap]
	call	_brl_pixmap_PixmapHeight
	add	esp,4
	mov	dword [_bb_pix_h],eax
	or	dword [_187],8
_195:
	push	_196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_198
	call	_brl_blitz_NullObjectError
_198:
	push	dword [_bb_pix_w]
	push	_24
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_201
	call	_brl_blitz_NullObjectError
_201:
	push	dword [_bb_pix_h]
	push	_25
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_204
	call	_brl_blitz_NullObjectError
_204:
	push	0
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_207
	call	_brl_blitz_NullObjectError
_207:
	push	0
	push	_27
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_210
	call	_brl_blitz_NullObjectError
_210:
	push	0
	push	_28
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_213
	call	_brl_blitz_NullObjectError
_213:
	push	0
	push	_29
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_216
	call	_brl_blitz_NullObjectError
_216:
	push	0
	push	_30
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_219
	call	_brl_blitz_NullObjectError
_219:
	push	0
	push	_31
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_222
	call	_brl_blitz_NullObjectError
_222:
	push	0
	push	_32
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_225
	call	_brl_blitz_NullObjectError
_225:
	push	_bb_BMX_ECHO
	push	_33
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,12
	push	_226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_228
	call	_brl_blitz_NullObjectError
_228:
	push	_34
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_231
	call	_brl_blitz_NullObjectError
_231:
	push	_35
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_234
	call	_brl_blitz_NullObjectError
_234:
	push	_bb_LUA_GET_RGB
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,12
	push	_235
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_237
	call	_brl_blitz_NullObjectError
_237:
	push	_bb_LUA_SET_RGB
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,12
	push	_238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_240
	call	_brl_blitz_NullObjectError
_240:
	push	_bb_LUA_SET_YUV
	push	_38
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,12
	push	_241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_243
	call	_brl_blitz_NullObjectError
_243:
	push	_bb_LUA_GET_YUV
	push	_39
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,12
	push	_244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_246
	call	_brl_blitz_NullObjectError
_246:
	push	_bb_LUA_UPDATE
	push	_40
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,12
	push	_247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_249
	call	_brl_blitz_NullObjectError
_249:
	push	_bb_LUA_USERACTION
	push	_41
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,12
	push	_250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_252
	call	_brl_blitz_NullObjectError
_252:
	push	_bb_LUA_LOADIMAGE
	push	_42
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,12
	push	_253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_255
	call	_brl_blitz_NullObjectError
_255:
	push	_43
	call	_brl_textstream_LoadText
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	dword [_bb_current_pixmap]
	call	_brl_max2d_DrawPixmap
	add	esp,12
	push	_257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	push	_258
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_WaitKey
	push	_259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
	jmp	_66
_66:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_LuaScript_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_273
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_LuaScript
	push	_271
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_luaL_newstate
	mov	dword [__bb_LuaScript_lua_state],eax
	push	_272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [__bb_LuaScript_lua_state]
	call	_luaL_openlibs
	add	esp,4
	mov	ebx,0
	jmp	_69
_69:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_LuaScript_Delete:
	push	ebp
	mov	ebp,esp
_72:
	mov	eax,0
	jmp	_275
_275:
	mov	esp,ebp
	pop	ebp
	ret
__bb_LuaScript_Run:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_279
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_276
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	push	dword [__bb_LuaScript_lua_state]
	call	_pub_lua_luaL_dostring
	add	esp,8
	cmp	eax,0
	je	_277
	push	_278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	dword [__bb_LuaScript_lua_state]
	call	_pub_lua_lua_tostring
	add	esp,8
	push	eax
	push	_23
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
_277:
	mov	ebx,0
	jmp	_76
_76:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_LuaScript_SetVar:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_287
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_bbStringToCString
	add	esp,4
	mov	ebx,eax
	push	ebx
	push	dword [__bb_LuaScript_lua_state]
	call	_lua_pushstring
	add	esp,8
	push	ebx
	call	_bbMemFree
	add	esp,4
	push	_285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,8
	fstp	qword [esp]
	push	dword [__bb_LuaScript_lua_state]
	call	_lua_pushnumber
	add	esp,12
	push	_286
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-10002
	push	dword [__bb_LuaScript_lua_state]
	call	_lua_settable
	add	esp,8
	mov	ebx,0
	jmp	_81
_81:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_LuaScript_RegisterFunction:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_291
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [__bb_LuaScript_lua_state]
	call	_pub_lua_lua_register
	add	esp,12
	mov	ebx,0
	jmp	_86
_86:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_LuaScript_Stop:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_296
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [__bb_LuaScript_lua_state]
	call	_lua_close
	add	esp,4
	mov	ebx,0
	jmp	_89
_89:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_LuaScript_GetInt:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_298
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	push	dword [__bb_LuaScript_lua_state]
	call	_luaL_checkinteger
	add	esp,8
	mov	ebx,eax
	jmp	_93
_93:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_LuaScript_GetString:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_301
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	push	dword [__bb_LuaScript_lua_state]
	call	_pub_lua_lua_tostring
	add	esp,8
	mov	ebx,eax
	jmp	_97
_97:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_BMX_ECHO:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbEmptyString
	push	ebp
	push	_310
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	dword [ebp-4]
	call	_pub_lua_lua_tostring
	add	esp,8
	mov	dword [ebp-8],eax
	push	_304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	dword [eax+8],0
	je	_305
	push	_306
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_brl_standardio_Print
	add	esp,4
	jmp	_307
_305:
	push	_308
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	dword [ebp-4]
	call	_lua_tonumber
	add	esp,8
	sub	esp,8
	fstp	qword [esp]
	call	_bbStringFromDouble
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
_307:
	push	_309
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_100
_100:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_LUA_GET_RGB:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	push	ebp
	push	_324
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_315
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_317
	call	_brl_blitz_NullObjectError
_317:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-8],eax
	push	_319
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_321
	call	_brl_blitz_NullObjectError
_321:
	push	2
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-12],eax
	push	_323
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [_bb_current_pixmap]
	call	_bb_Get_rgb
	add	esp,12
	mov	ebx,0
	jmp	_103
_103:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_LUA_GET_YUV:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	push	ebp
	push	_337
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_328
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_330
	call	_brl_blitz_NullObjectError
_330:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-8],eax
	push	_332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_334
	call	_brl_blitz_NullObjectError
_334:
	push	2
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-12],eax
	push	_336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [_bb_current_pixmap]
	call	_bb_Get_Yuv
	add	esp,12
	mov	ebx,0
	jmp	_106
_106:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_LUA_UPDATE:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_344
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_339
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_current_pixmap],_bbNullObject
	jne	_340
	push	_341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_109
_340:
	push	_342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	dword [_bb_current_pixmap]
	call	_brl_max2d_DrawPixmap
	add	esp,12
	push	_343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	mov	ebx,0
	jmp	_109
_109:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_LUA_USERACTION:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_349
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_348
	call	_brl_blitz_NullObjectError
_348:
	push	0
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	mov	ebx,0
	jmp	_112
_112:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_LUA_LOADIMAGE:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbEmptyString
	push	ebp
	push	_368
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	0
	push	_45
	push	_44
	call	_brl_system_RequestFile
	add	esp,16
	mov	dword [ebp-8],eax
	push	_353
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_354
	push	_355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_brl_pixmap_LoadPixmap
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_current_pixmap]
	dec	dword [eax+4]
	jnz	_359
	push	eax
	call	_bbGCFree
	add	esp,4
_359:
	mov	dword [_bb_current_pixmap],ebx
	push	_360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_current_pixmap]
	call	_brl_pixmap_PixmapWidth
	add	esp,4
	mov	dword [_bb_pix_w],eax
	push	_361
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_current_pixmap]
	call	_brl_pixmap_PixmapHeight
	add	esp,4
	mov	dword [_bb_pix_h],eax
	push	_362
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_364
	call	_brl_blitz_NullObjectError
_364:
	push	dword [_bb_pix_w]
	push	_24
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_367
	call	_brl_blitz_NullObjectError
_367:
	push	dword [_bb_pix_h]
	push	_25
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
_354:
	mov	ebx,0
	jmp	_115
_115:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_LUA_SET_RGB:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	push	ebp
	push	_393
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_371
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_373
	call	_brl_blitz_NullObjectError
_373:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-8],eax
	push	_375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_377
	call	_brl_blitz_NullObjectError
_377:
	push	2
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-12],eax
	push	_379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	push	_383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_385
	call	_brl_blitz_NullObjectError
_385:
	push	3
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_386
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_388
	call	_brl_blitz_NullObjectError
_388:
	push	4
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-24],eax
	push	_389
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_391
	call	_brl_blitz_NullObjectError
_391:
	push	5
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-20],eax
	push	_392
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	push	dword [ebp-24]
	push	dword [ebp-16]
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [_bb_current_pixmap]
	call	_bb_Set_rgb
	add	esp,24
	mov	ebx,0
	jmp	_118
_118:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_LUA_SET_YUV:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	push	ebp
	push	_420
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_400
	call	_brl_blitz_NullObjectError
_400:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-8],eax
	push	_402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_404
	call	_brl_blitz_NullObjectError
_404:
	push	2
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-12],eax
	push	_406
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	push	_410
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_412
	call	_brl_blitz_NullObjectError
_412:
	push	3
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_413
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_415
	call	_brl_blitz_NullObjectError
_415:
	push	4
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-20],eax
	push	_416
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_418
	call	_brl_blitz_NullObjectError
_418:
	push	5
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-24],eax
	push	_419
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	push	dword [ebp-20]
	push	dword [ebp-16]
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [_bb_current_pixmap]
	call	_bb_SET_YUV
	add	esp,24
	mov	ebx,0
	jmp	_121
_121:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Get_Yuv:
	push	ebp
	mov	ebp,esp
	sub	esp,40
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	fldz
	fstp	dword [ebp-32]
	fldz
	fstp	dword [ebp-36]
	fldz
	fstp	dword [ebp-40]
	push	ebp
	push	_458
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_426
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	jne	_427
	push	_428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_126
_427:
	push	_429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [ebp-4]
	call	_brl_pixmap_ReadPixel
	add	esp,12
	mov	dword [ebp-16],eax
	push	_431
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-28]
	push	eax
	lea	eax,dword [ebp-24]
	push	eax
	lea	eax,dword [ebp-20]
	push	eax
	push	dword [ebp-16]
	call	_bb_rgb
	add	esp,16
	push	_435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_437
	call	_brl_blitz_NullObjectError
_437:
	push	dword [ebp-20]
	push	_29
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_440
	call	_brl_blitz_NullObjectError
_440:
	push	dword [ebp-24]
	push	_30
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_443
	call	_brl_blitz_NullObjectError
_443:
	push	dword [ebp-28]
	push	_31
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_444
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-32]
	fldz
	fstp	dword [ebp-36]
	fldz
	fstp	dword [ebp-40]
	push	_448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-40]
	push	eax
	lea	eax,dword [ebp-36]
	push	eax
	lea	eax,dword [ebp-32]
	push	eax
	push	dword [ebp-28]
	push	dword [ebp-24]
	push	dword [ebp-20]
	call	_bb_Rgb2Yuv
	add	esp,24
	push	_449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_451
	call	_brl_blitz_NullObjectError
_451:
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_454
	call	_brl_blitz_NullObjectError
_454:
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	_47
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_455
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_457
	call	_brl_blitz_NullObjectError
_457:
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	_48
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	mov	ebx,0
	jmp	_126
_126:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_SET_YUV:
	push	ebp
	mov	ebp,esp
	sub	esp,40
	push	ebx
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
	mov	dword [ebp-28],0
	mov	dword [ebp-32],0
	mov	dword [ebp-36],0
	mov	dword [ebp-40],0
	push	ebp
	push	_479
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	jne	_468
	push	_469
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_49
	call	_brl_standardio_Print
	add	esp,4
	push	_470
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_134
_468:
	push	_471
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-32],0
	mov	dword [ebp-36],0
	push	_475
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-36]
	push	eax
	lea	eax,dword [ebp-32]
	push	eax
	lea	eax,dword [ebp-28]
	push	eax
	push	dword [ebp-24]
	push	dword [ebp-20]
	push	dword [ebp-16]
	call	_bb_Yuv2Rgb
	add	esp,24
	push	_476
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-36]
	push	dword [ebp-32]
	push	dword [ebp-28]
	call	_bb_IntColor
	add	esp,16
	mov	dword [ebp-40],eax
	push	_478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-40]
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [ebp-4]
	call	_brl_pixmap_WritePixel
	add	esp,16
	mov	ebx,0
	jmp	_134
_134:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Get_rgb:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	push	ebp
	push	_505
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_485
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	jne	_486
	push	_487
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_139
_486:
	push	_488
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [ebp-4]
	call	_brl_pixmap_ReadPixel
	add	esp,12
	mov	dword [ebp-16],eax
	push	_490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	push	_494
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-28]
	push	eax
	lea	eax,dword [ebp-24]
	push	eax
	lea	eax,dword [ebp-20]
	push	eax
	push	dword [ebp-16]
	call	_bb_rgb
	add	esp,16
	push	_495
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_497
	call	_brl_blitz_NullObjectError
_497:
	push	dword [ebp-20]
	push	_29
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_498
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_500
	call	_brl_blitz_NullObjectError
_500:
	push	dword [ebp-24]
	push	_30
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_501
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_LUA]
	cmp	ebx,_bbNullObject
	jne	_503
	call	_brl_blitz_NullObjectError
_503:
	push	dword [ebp-28]
	push	_31
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,12
	push	_504
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	jmp	_139
_139:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_rgb:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	push	ebp
	push	_519
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_508
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	push	_512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	and	dword [ebp-4],16777215
	push	_513
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ecx,dword [ebp-8]
	mov	eax,dword [ebp-4]
	cdq
	and	edx,65535
	add	eax,edx
	sar	eax,16
	mov	dword [ecx],eax
	push	_514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	and	dword [ebp-4],65535
	push	_515
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ecx,dword [ebp-12]
	mov	eax,dword [ebp-4]
	cdq
	and	edx,255
	add	eax,edx
	sar	eax,8
	mov	dword [ecx],eax
	push	_516
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	and	dword [ebp-4],255
	push	_517
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-16]
	mov	eax,dword [ebp-4]
	mov	dword [edx],eax
	push	_518
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_145
_145:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_set_yiq2rgb:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	push	ebp
	push	_525
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	mov	ebx,0
	jmp	_150
_150:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Set_rgb:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
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
	mov	dword [ebp-28],0
	push	ebp
	push	_535
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	jne	_529
	push	_530
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_49
	call	_brl_standardio_Print
	add	esp,4
	push	_531
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_158
_529:
	push	_532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-24]
	push	dword [ebp-20]
	push	dword [ebp-16]
	call	_bb_IntColor
	add	esp,16
	mov	dword [ebp-28],eax
	push	_534
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [ebp-4]
	call	_brl_pixmap_WritePixel
	add	esp,16
	mov	ebx,0
	jmp	_158
_158:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_IntColor:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	push	ebp
	push	_538
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_537
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	shl	ebx,24
	mov	eax,dword [ebp-4]
	shl	eax,16
	or	ebx,eax
	mov	eax,dword [ebp-8]
	shl	eax,8
	or	ebx,eax
	or	ebx,dword [ebp-12]
	jmp	_164
_164:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Rgb2Yuv:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
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
	push	ebp
	push	_548
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_544
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-16]
	fld	dword [_671]
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fmulp	st1,st0
	fld	dword [_672]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fmulp	st1,st0
	faddp	st1,st0
	fld	dword [_673]
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fmulp	st1,st0
	faddp	st1,st0
	fstp	dword [edx]
	push	_545
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	mov	eax,dword [ebp-16]
	fsub	dword [eax]
	fmul	dword [_674]
	fstp	dword [edx]
	push	_546
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-24]
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	mov	eax,dword [ebp-16]
	fsub	dword [eax]
	fmul	dword [_675]
	fstp	dword [edx]
	push	_547
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_172
_172:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Yuv2Rgb:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
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
	push	ebp
	push	_556
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_552
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fld	dword [_679]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fmulp	st1,st0
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx],eax
	push	_553
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fld	dword [_680]
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fmulp	st1,st0
	fsubp	st1,st0
	fld	dword [_681]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fmulp	st1,st0
	fsubp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx],eax
	push	_554
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fld	dword [_682]
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fmulp	st1,st0
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx],eax
	push	_555
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_180
_180:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_269:
	dd	0
_261:
	db	"main",0
_262:
	db	"current_pixmap",0
_263:
	db	":brl.pixmap.TPixmap",0
	align	4
_bb_current_pixmap:
	dd	_bbNullObject
_264:
	db	"LUA",0
_265:
	db	":LuaScript",0
	align	4
_bb_LUA:
	dd	_bbNullObject
_266:
	db	"pix_w",0
_267:
	db	"i",0
	align	4
_bb_pix_w:
	dd	0
_268:
	db	"pix_h",0
	align	4
_bb_pix_h:
	dd	0
	align	4
_260:
	dd	1
	dd	_261
	dd	4
	dd	_262
	dd	_263
	dd	_bb_current_pixmap
	dd	4
	dd	_264
	dd	_265
	dd	_bb_LUA
	dd	4
	dd	_266
	dd	_267
	dd	_bb_pix_w
	dd	4
	dd	_268
	dd	_267
	dd	_bb_pix_h
	dd	0
_183:
	db	"D:/Programming And Webdesign/Binary Source/BlitzMax/lua/main.bmx",0
	align	4
_182:
	dd	_183
	dd	5
	dd	2
	align	4
__bb_LuaScript_lua_state:
	dd	0
_51:
	db	"LuaScript",0
_52:
	db	"New",0
_53:
	db	"()i",0
_54:
	db	"Delete",0
_55:
	db	"Run",0
_56:
	db	"($)i",0
_57:
	db	"SetVar",0
_58:
	db	"($,i)i",0
_59:
	db	"RegisterFunction",0
_60:
	db	"($,(*b)i)i",0
_61:
	db	"Stop",0
_62:
	db	"GetInt",0
_63:
	db	"(i)i",0
_64:
	db	"GetString",0
_65:
	db	"(i)$",0
	align	4
_50:
	dd	2
	dd	_51
	dd	6
	dd	_52
	dd	_53
	dd	16
	dd	6
	dd	_54
	dd	_53
	dd	20
	dd	6
	dd	_55
	dd	_56
	dd	48
	dd	6
	dd	_57
	dd	_58
	dd	52
	dd	6
	dd	_59
	dd	_60
	dd	56
	dd	6
	dd	_61
	dd	_53
	dd	60
	dd	6
	dd	_62
	dd	_63
	dd	64
	dd	6
	dd	_64
	dd	_65
	dd	68
	dd	0
	align	4
_bb_LuaScript:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_50
	dd	8
	dd	__bb_LuaScript_New
	dd	__bb_LuaScript_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_LuaScript_Run
	dd	__bb_LuaScript_SetVar
	dd	__bb_LuaScript_RegisterFunction
	dd	__bb_LuaScript_Stop
	dd	__bb_LuaScript_GetInt
	dd	__bb_LuaScript_GetString
	align	4
_184:
	dd	_183
	dd	1
	dd	1
	align	4
_185:
	dd	_183
	dd	2
	dd	1
	align	4
_187:
	dd	0
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	99,111,110,116,97,99,116,115,49,46,106,112,103
	align	4
_189:
	dd	_183
	dd	47
	dd	1
	align	4
_192:
	dd	_183
	dd	49
	dd	1
	align	4
_194:
	dd	_183
	dd	50
	dd	1
	align	4
_196:
	dd	_183
	dd	53
	dd	1
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	119,105,100,116,104
	align	4
_199:
	dd	_183
	dd	54
	dd	1
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	104,101,105,103,104,116
	align	4
_202:
	dd	_183
	dd	55
	dd	1
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	82,71,66
	align	4
_205:
	dd	_183
	dd	56
	dd	1
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	120
	align	4
_208:
	dd	_183
	dd	57
	dd	1
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	121
	align	4
_211:
	dd	_183
	dd	58
	dd	1
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	82,69,68
	align	4
_214:
	dd	_183
	dd	59
	dd	1
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	71,82,69,69,78
	align	4
_217:
	dd	_183
	dd	60
	dd	1
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	66,76,85,69
	align	4
_220:
	dd	_183
	dd	61
	dd	1
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	65,76,80,72,65
	align	4
_223:
	dd	_183
	dd	66
	dd	1
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	101,99,104,111
	align	4
_226:
	dd	_183
	dd	67
	dd	1
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	38
	dw	101,99,104,111,40,39,83,105,122,101,32,105,115,58,39,46
	dw	46,119,105,100,116,104,46,46,39,32,120,32,39,46,46,104
	dw	101,105,103,104,116,41
	align	4
_229:
	dd	_183
	dd	68
	dd	1
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	101,99,104,111,40,39,82,71,66,58,39,46,46,82,71,66
	dw	41
	align	4
_232:
	dd	_183
	dd	70
	dd	1
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	103,101,116,95,114,103,98
	align	4
_235:
	dd	_183
	dd	71
	dd	1
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	115,101,116,95,114,103,98
	align	4
_238:
	dd	_183
	dd	72
	dd	1
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	115,101,116,95,121,117,118
	align	4
_241:
	dd	_183
	dd	73
	dd	1
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	103,101,116,95,121,117,118
	align	4
_244:
	dd	_183
	dd	76
	dd	1
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	117,112,100,97,116,101
	align	4
_247:
	dd	_183
	dd	77
	dd	1
	align	4
_41:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	85,115,101,114,65,99,116,105,111,110
	align	4
_250:
	dd	_183
	dd	78
	dd	1
	align	4
_42:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	76,111,97,100,73,109,97,103,101
	align	4
_253:
	dd	_183
	dd	81
	dd	1
	align	4
_43:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	76,117,97,95,115,99,114,105,112,116,49,46,108,117,97
	align	4
_256:
	dd	_183
	dd	83
	dd	1
	align	4
_257:
	dd	_183
	dd	84
	dd	1
	align	4
_258:
	dd	_183
	dd	95
	dd	1
	align	4
_259:
	dd	_183
	dd	96
	dd	1
_274:
	db	"Self",0
	align	4
_273:
	dd	1
	dd	_52
	dd	2
	dd	_274
	dd	_265
	dd	-4
	dd	0
	align	4
_271:
	dd	_183
	dd	8
	dd	3
	align	4
_272:
	dd	_183
	dd	9
	dd	3
_280:
	db	"source",0
_281:
	db	"$",0
	align	4
_279:
	dd	1
	dd	_55
	dd	2
	dd	_274
	dd	_265
	dd	-4
	dd	2
	dd	_280
	dd	_281
	dd	-8
	dd	0
	align	4
_276:
	dd	_183
	dd	15
	dd	3
	align	4
_278:
	dd	_183
	dd	16
	dd	4
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	69,114,114,111,114,58,32
_288:
	db	"_name",0
_289:
	db	"value",0
	align	4
_287:
	dd	1
	dd	_57
	dd	2
	dd	_274
	dd	_265
	dd	-4
	dd	2
	dd	_288
	dd	_281
	dd	-8
	dd	2
	dd	_289
	dd	_267
	dd	-12
	dd	0
	align	4
_282:
	dd	_183
	dd	22
	dd	3
	align	4
_285:
	dd	_183
	dd	23
	dd	3
	align	4
_286:
	dd	_183
	dd	24
	dd	3
_292:
	db	"_luaName",0
_293:
	db	"fun",0
_294:
	db	"(*b)i",0
	align	4
_291:
	dd	1
	dd	_59
	dd	2
	dd	_274
	dd	_265
	dd	-4
	dd	2
	dd	_292
	dd	_281
	dd	-8
	dd	2
	dd	_293
	dd	_294
	dd	-12
	dd	0
	align	4
_290:
	dd	_183
	dd	28
	dd	3
	align	4
_296:
	dd	1
	dd	_61
	dd	2
	dd	_274
	dd	_265
	dd	-4
	dd	0
	align	4
_295:
	dd	_183
	dd	32
	dd	3
_299:
	db	"_index",0
	align	4
_298:
	dd	1
	dd	_62
	dd	2
	dd	_274
	dd	_265
	dd	-4
	dd	2
	dd	_299
	dd	_267
	dd	-8
	dd	0
	align	4
_297:
	dd	_183
	dd	36
	dd	3
	align	4
_301:
	dd	1
	dd	_64
	dd	2
	dd	_274
	dd	_265
	dd	-4
	dd	2
	dd	_299
	dd	_267
	dd	-8
	dd	0
	align	4
_300:
	dd	_183
	dd	40
	dd	3
_311:
	db	"BMX_ECHO",0
_312:
	db	"ls",0
_313:
	db	"*b",0
_314:
	db	"msg",0
	align	4
_310:
	dd	1
	dd	_311
	dd	2
	dd	_312
	dd	_313
	dd	-4
	dd	2
	dd	_314
	dd	_281
	dd	-8
	dd	0
	align	4
_302:
	dd	_183
	dd	99
	dd	2
	align	4
_304:
	dd	_183
	dd	100
	dd	2
	align	4
_306:
	dd	_183
	dd	101
	dd	4
	align	4
_308:
	dd	_183
	dd	103
	dd	3
	align	4
_309:
	dd	_183
	dd	106
	dd	2
_325:
	db	"LUA_GET_RGB",0
_326:
	db	"x",0
_327:
	db	"Y",0
	align	4
_324:
	dd	1
	dd	_325
	dd	2
	dd	_312
	dd	_313
	dd	-4
	dd	2
	dd	_326
	dd	_267
	dd	-8
	dd	2
	dd	_327
	dd	_267
	dd	-12
	dd	0
	align	4
_315:
	dd	_183
	dd	110
	dd	2
	align	4
_319:
	dd	_183
	dd	111
	dd	2
	align	4
_323:
	dd	_183
	dd	112
	dd	2
_338:
	db	"LUA_GET_YUV",0
	align	4
_337:
	dd	1
	dd	_338
	dd	2
	dd	_312
	dd	_313
	dd	-4
	dd	2
	dd	_326
	dd	_267
	dd	-8
	dd	2
	dd	_327
	dd	_267
	dd	-12
	dd	0
	align	4
_328:
	dd	_183
	dd	115
	dd	2
	align	4
_332:
	dd	_183
	dd	116
	dd	2
	align	4
_336:
	dd	_183
	dd	117
	dd	2
_345:
	db	"LUA_UPDATE",0
	align	4
_344:
	dd	1
	dd	_345
	dd	2
	dd	_312
	dd	_313
	dd	-4
	dd	0
	align	4
_339:
	dd	_183
	dd	126
	dd	2
	align	4
_341:
	dd	_183
	dd	126
	dd	25
	align	4
_342:
	dd	_183
	dd	127
	dd	2
	align	4
_343:
	dd	_183
	dd	128
	dd	1
_350:
	db	"LUA_USERACTION",0
	align	4
_349:
	dd	1
	dd	_350
	dd	2
	dd	_312
	dd	_313
	dd	-4
	dd	0
	align	4
_346:
	dd	_183
	dd	134
	dd	2
_369:
	db	"LUA_LOADIMAGE",0
_370:
	db	"file",0
	align	4
_368:
	dd	1
	dd	_369
	dd	2
	dd	_312
	dd	_313
	dd	-4
	dd	2
	dd	_370
	dd	_281
	dd	-8
	dd	0
	align	4
_351:
	dd	_183
	dd	138
	dd	2
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	73,109,97,103,101,115,58,98,109,112,44,112,110,103,44,116
	dw	103,97
	align	4
_44:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	76,111,97,100,32,97,110,32,105,109,97,103,101
	align	4
_353:
	dd	_183
	dd	139
	dd	2
	align	4
_355:
	dd	_183
	dd	140
	dd	3
	align	4
_360:
	dd	_183
	dd	142
	dd	3
	align	4
_361:
	dd	_183
	dd	143
	dd	3
	align	4
_362:
	dd	_183
	dd	144
	dd	3
	align	4
_365:
	dd	_183
	dd	145
	dd	3
_394:
	db	"LUA_SET_RGB",0
_395:
	db	"re",0
_396:
	db	"bl",0
_397:
	db	"gr",0
	align	4
_393:
	dd	1
	dd	_394
	dd	2
	dd	_312
	dd	_313
	dd	-4
	dd	2
	dd	_326
	dd	_267
	dd	-8
	dd	2
	dd	_327
	dd	_267
	dd	-12
	dd	2
	dd	_395
	dd	_267
	dd	-16
	dd	2
	dd	_396
	dd	_267
	dd	-20
	dd	2
	dd	_397
	dd	_267
	dd	-24
	dd	0
	align	4
_371:
	dd	_183
	dd	152
	dd	2
	align	4
_375:
	dd	_183
	dd	153
	dd	2
	align	4
_379:
	dd	_183
	dd	154
	dd	2
	align	4
_383:
	dd	_183
	dd	156
	dd	2
	align	4
_386:
	dd	_183
	dd	157
	dd	2
	align	4
_389:
	dd	_183
	dd	158
	dd	2
	align	4
_392:
	dd	_183
	dd	160
	dd	2
_421:
	db	"LUA_SET_YUV",0
_422:
	db	"LS",0
_423:
	db	"Y1",0
_424:
	db	"U1",0
_425:
	db	"V1",0
	align	4
_420:
	dd	1
	dd	_421
	dd	2
	dd	_422
	dd	_313
	dd	-4
	dd	2
	dd	_326
	dd	_267
	dd	-8
	dd	2
	dd	_327
	dd	_267
	dd	-12
	dd	2
	dd	_423
	dd	_267
	dd	-16
	dd	2
	dd	_424
	dd	_267
	dd	-20
	dd	2
	dd	_425
	dd	_267
	dd	-24
	dd	0
	align	4
_398:
	dd	_183
	dd	164
	dd	2
	align	4
_402:
	dd	_183
	dd	165
	dd	2
	align	4
_406:
	dd	_183
	dd	166
	dd	2
	align	4
_410:
	dd	_183
	dd	168
	dd	2
	align	4
_413:
	dd	_183
	dd	169
	dd	2
	align	4
_416:
	dd	_183
	dd	170
	dd	2
	align	4
_419:
	dd	_183
	dd	172
	dd	2
_459:
	db	"Get_Yuv",0
_460:
	db	"_pix",0
_461:
	db	"y",0
_462:
	db	"asrgb",0
_463:
	db	"y1",0
_464:
	db	"f",0
_465:
	db	"u1",0
_466:
	db	"v1",0
	align	4
_458:
	dd	1
	dd	_459
	dd	2
	dd	_460
	dd	_263
	dd	-4
	dd	2
	dd	_326
	dd	_267
	dd	-8
	dd	2
	dd	_461
	dd	_267
	dd	-12
	dd	2
	dd	_462
	dd	_267
	dd	-16
	dd	2
	dd	_395
	dd	_267
	dd	-20
	dd	2
	dd	_397
	dd	_267
	dd	-24
	dd	2
	dd	_396
	dd	_267
	dd	-28
	dd	2
	dd	_463
	dd	_464
	dd	-32
	dd	2
	dd	_465
	dd	_464
	dd	-36
	dd	2
	dd	_466
	dd	_464
	dd	-40
	dd	0
	align	4
_426:
	dd	_183
	dd	176
	dd	2
	align	4
_428:
	dd	_183
	dd	176
	dd	15
	align	4
_429:
	dd	_183
	dd	178
	dd	2
	align	4
_431:
	dd	_183
	dd	180
	dd	2
	align	4
_435:
	dd	_183
	dd	181
	dd	2
	align	4
_438:
	dd	_183
	dd	182
	dd	2
	align	4
_441:
	dd	_183
	dd	183
	dd	2
	align	4
_444:
	dd	_183
	dd	185
	dd	2
	align	4
_448:
	dd	_183
	dd	187
	dd	2
	align	4
_449:
	dd	_183
	dd	189
	dd	2
	align	4
_46:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	89,49
	align	4
_452:
	dd	_183
	dd	190
	dd	2
	align	4
_47:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	85,49
	align	4
_455:
	dd	_183
	dd	191
	dd	2
	align	4
_48:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	86,49
_480:
	db	"SET_YUV",0
_481:
	db	"r",0
_482:
	db	"g",0
_483:
	db	"b",0
_484:
	db	"col",0
	align	4
_479:
	dd	1
	dd	_480
	dd	2
	dd	_460
	dd	_263
	dd	-4
	dd	2
	dd	_326
	dd	_267
	dd	-8
	dd	2
	dd	_461
	dd	_267
	dd	-12
	dd	2
	dd	_463
	dd	_267
	dd	-16
	dd	2
	dd	_465
	dd	_267
	dd	-20
	dd	2
	dd	_466
	dd	_267
	dd	-24
	dd	2
	dd	_481
	dd	_267
	dd	-28
	dd	2
	dd	_482
	dd	_267
	dd	-32
	dd	2
	dd	_483
	dd	_267
	dd	-36
	dd	2
	dd	_484
	dd	_267
	dd	-40
	dd	0
	align	4
_467:
	dd	_183
	dd	196
	dd	2
	align	4
_469:
	dd	_183
	dd	196
	dd	15
	align	4
_49:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	78,111,32,112,105,120
	align	4
_470:
	dd	_183
	dd	196
	dd	30
	align	4
_471:
	dd	_183
	dd	197
	dd	2
	align	4
_475:
	dd	_183
	dd	199
	dd	2
	align	4
_476:
	dd	_183
	dd	201
	dd	2
	align	4
_478:
	dd	_183
	dd	202
	dd	2
_506:
	db	"Get_rgb",0
_507:
	db	"ssrgb",0
	align	4
_505:
	dd	1
	dd	_506
	dd	2
	dd	_460
	dd	_263
	dd	-4
	dd	2
	dd	_326
	dd	_267
	dd	-8
	dd	2
	dd	_461
	dd	_267
	dd	-12
	dd	2
	dd	_507
	dd	_267
	dd	-16
	dd	2
	dd	_395
	dd	_267
	dd	-20
	dd	2
	dd	_397
	dd	_267
	dd	-24
	dd	2
	dd	_396
	dd	_267
	dd	-28
	dd	0
	align	4
_485:
	dd	_183
	dd	208
	dd	2
	align	4
_487:
	dd	_183
	dd	208
	dd	15
	align	4
_488:
	dd	_183
	dd	210
	dd	2
	align	4
_490:
	dd	_183
	dd	212
	dd	2
	align	4
_494:
	dd	_183
	dd	214
	dd	2
	align	4
_495:
	dd	_183
	dd	215
	dd	2
	align	4
_498:
	dd	_183
	dd	216
	dd	2
	align	4
_501:
	dd	_183
	dd	217
	dd	2
	align	4
_504:
	dd	_183
	dd	219
	dd	2
_520:
	db	"rgb",0
_521:
	db	"pixelValue",0
_522:
	db	"red",0
_523:
	db	"green",0
_524:
	db	"blue",0
	align	4
_519:
	dd	1
	dd	_520
	dd	2
	dd	_521
	dd	_267
	dd	-4
	dd	5
	dd	_522
	dd	_267
	dd	-8
	dd	5
	dd	_523
	dd	_267
	dd	-12
	dd	5
	dd	_524
	dd	_267
	dd	-16
	dd	2
	dd	_481
	dd	_267
	dd	-20
	dd	2
	dd	_482
	dd	_267
	dd	-24
	dd	2
	dd	_483
	dd	_267
	dd	-28
	dd	0
	align	4
_508:
	dd	_183
	dd	225
	dd	2
	align	4
_512:
	dd	_183
	dd	226
	dd	2
	align	4
_513:
	dd	_183
	dd	227
	dd	2
	align	4
_514:
	dd	_183
	dd	228
	dd	2
	align	4
_515:
	dd	_183
	dd	229
	dd	2
	align	4
_516:
	dd	_183
	dd	230
	dd	2
	align	4
_517:
	dd	_183
	dd	231
	dd	2
	align	4
_518:
	dd	_183
	dd	232
	dd	2
_526:
	db	"set_yiq2rgb",0
_527:
	db	"q",0
	align	4
_525:
	dd	1
	dd	_526
	dd	2
	dd	_461
	dd	_464
	dd	-4
	dd	2
	dd	_267
	dd	_464
	dd	-8
	dd	2
	dd	_527
	dd	_464
	dd	-12
	dd	0
_536:
	db	"Set_rgb",0
	align	4
_535:
	dd	1
	dd	_536
	dd	2
	dd	_460
	dd	_263
	dd	-4
	dd	2
	dd	_326
	dd	_267
	dd	-8
	dd	2
	dd	_461
	dd	_267
	dd	-12
	dd	2
	dd	_481
	dd	_267
	dd	-16
	dd	2
	dd	_482
	dd	_267
	dd	-20
	dd	2
	dd	_483
	dd	_267
	dd	-24
	dd	2
	dd	_484
	dd	_267
	dd	-28
	dd	0
	align	4
_528:
	dd	_183
	dd	242
	dd	2
	align	4
_530:
	dd	_183
	dd	242
	dd	15
	align	4
_531:
	dd	_183
	dd	242
	dd	30
	align	4
_532:
	dd	_183
	dd	244
	dd	2
	align	4
_534:
	dd	_183
	dd	245
	dd	2
_539:
	db	"IntColor",0
_540:
	db	"R",0
_541:
	db	"G",0
_542:
	db	"B",0
_543:
	db	"A",0
	align	4
_538:
	dd	1
	dd	_539
	dd	2
	dd	_540
	dd	_267
	dd	-4
	dd	2
	dd	_541
	dd	_267
	dd	-8
	dd	2
	dd	_542
	dd	_267
	dd	-12
	dd	2
	dd	_543
	dd	_267
	dd	-16
	dd	0
	align	4
_537:
	dd	_183
	dd	251
	dd	6
_549:
	db	"Rgb2Yuv",0
_550:
	db	"U",0
_551:
	db	"V",0
	align	4
_548:
	dd	1
	dd	_549
	dd	2
	dd	_540
	dd	_267
	dd	-4
	dd	2
	dd	_542
	dd	_267
	dd	-8
	dd	2
	dd	_541
	dd	_267
	dd	-12
	dd	5
	dd	_327
	dd	_464
	dd	-16
	dd	5
	dd	_550
	dd	_464
	dd	-20
	dd	5
	dd	_551
	dd	_464
	dd	-24
	dd	0
	align	4
_544:
	dd	_183
	dd	258
	dd	2
	align	4
_671:
	dd	0x3e991687
	align	4
_672:
	dd	0x3f1645a2
	align	4
_673:
	dd	0x3de978d5
	align	4
_545:
	dd	_183
	dd	259
	dd	2
	align	4
_674:
	dd	0x3f10a3d7
	align	4
_546:
	dd	_183
	dd	260
	dd	2
	align	4
_675:
	dd	0x3f36872b
	align	4
_547:
	dd	_183
	dd	264
	dd	2
_557:
	db	"Yuv2Rgb",0
	align	4
_556:
	dd	1
	dd	_557
	dd	2
	dd	_327
	dd	_267
	dd	-4
	dd	2
	dd	_550
	dd	_267
	dd	-8
	dd	2
	dd	_551
	dd	_267
	dd	-12
	dd	5
	dd	_540
	dd	_267
	dd	-16
	dd	5
	dd	_541
	dd	_267
	dd	-20
	dd	5
	dd	_542
	dd	_267
	dd	-24
	dd	0
	align	4
_552:
	dd	_183
	dd	270
	dd	2
	align	4
_679:
	dd	0x3fb39581
	align	4
_553:
	dd	_183
	dd	271
	dd	2
	align	4
_680:
	dd	0x3eb020c5
	align	4
_681:
	dd	0x3f36c8b4
	align	4
_554:
	dd	_183
	dd	272
	dd	2
	align	4
_682:
	dd	0x3fe28f5c
	align	4
_555:
	dd	_183
	dd	273
	dd	2
