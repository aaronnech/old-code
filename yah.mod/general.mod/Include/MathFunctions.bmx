Rem
bbdoc: AngleToDX. A trig function
about: A trig function to return an angle's X direction. Useful for astroid games ect.
returns: The angle's X Direction (+1 thru -1)
EndRem
Function AngleToDX:Float(angle:Int)
	Return Sin(angle)
End Function

Rem
bbdoc: AngleToDY. A trig function
about: A trig function to return an angle's Y direction. Useful for astroid games ect.
returns: The angle's Y Direction (+1 thru -1)
EndRem
Function AngleToDY:Float(angle:Int)
	Return -Cos(angle)
End Function


Rem
bbdoc: angle finding function
about: Finds the angle between two points
returns: The angle between two given points
End Rem
Function PointsToAngle:Float(x1:Float,y1:Float,x2:Float,y2:Float)
Local direction#= ATan2(y1-y2,x1-x2)+180

While direction > 360
	direction:-180
Wend

While direction<0
	direction:+180
Wend

Return direction

EndFunction

Rem
bbdoc: Distance between two given points
about: Finds the Distance in pixels between two given points
returns: The Distance between two given points
End Rem
Function PointsToDistance#(x1#,y1#,x2#,y2#)
	Return Sqr(((x1-x2)*(x1-x2))+((y1-y2)*(y1-y2)))
End Function