Rem

Get FPS functions

End Rem

Private

Global fpsobject:CFps=New CFps

Type CFps
	Field ms#,oms#,fps#,mspf#
	
	Method getFps()
		ms=MilliSecs()
		mspf=ms-oms
		fps=1000*(mspf^-1)
		oms=ms
	End Method
End Type

Function internalUpdate()
	fpsobject.getFps
End Function

Function internalFPS#(update:Int)
	If update Then internalUpdate
	Return fpsobject.fps
End Function

Function internalMSPF#(update:Int)
	If update Then internalUpdate
	Return fpsobject.mspf
End Function

Public

Rem
bbdoc:	FPS updating function
about:	Updates FPS
returns: Nothing
EndRem
Function FPSUpdate()
	internalUpdate
End Function

Rem
bbdoc:	Gets FPS
about:	A function that gets the current Frames Per Second(FPS)
returns: FPS(float)
EndRem
Function FPS#(update:Int=True)
	Return internalFPS(update)
End Function

Rem
bbdoc:	Gets MSPF
about:	A function that gets the current Milliseconds Per Frame(MSPF)
returns: MSPF(float)
EndRem
Function MSPF#(update:Int=True)
	Return internalMSPF(update)
End Function
