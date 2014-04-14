'Needed externs
?win32
Extern "win32"
	Function ExtractIconA%(hWnd%,File$z,Index%)
	Function GetActiveWindow%()
	Function SendMessage:Int(hWnd:Int,MSG:Int,wParam:Int,lParam:Int) = "SendMessageA@16"
End Extern
?


' -----------------------------------------------------------------------------
' ccSetIcon
' -----------------------------------------------------------------------------
Function ccSetIcon(iconname$, TheWindow%)	
	?Win32
	Local icon=ExtractIconA(TheWindow,iconname,0)
	Local WM_SETICON = $80
	Local ICON_SMALL = 0
	Local ICON_BIG = 1
'	sendmessage(TheWindow, WM_SETICON, ICON_SMALL, icon) 'don't need this
	sendmessage(TheWindow, WM_SETICON, ICON_BIG, icon)
'	SetClassLongA(TheWindow,-14,icon)'obsolete as it doesn't work with Windows XP Theme!
	?
End Function

'call it like this
ccSetIcon(AppFile, GetActiveWindow())
