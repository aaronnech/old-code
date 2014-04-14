Include "inc.engine.bmx"

Graphics 1024, 768
HideMouse()
SetBlend ALPHABLEND
SeedRnd MilliSecs()
DrawText "Loading...",0,0
Flip

Include "inc.media.bmx"



While Not KeyHit(KEY_ESCAPE)
	Cls
	
	DrawImage bg, 0, 0
	terrainshape.Draw()
	TPlayer.DrawAll()
	Select Turn
		Case 1
			player1.Update()
		Case 2
			player2.Update()
	End Select
	TExplosion.UpdateAll()
	TBullet.UpdateAll()
	drawCross(MouseX(), MouseY())
	DrawText terrainshape.lines.Count(), 0, 20
	DrawText ("FPS:" + (Int(CountFPS())), 0, 60)
	
	Flip 1
Wend
End

Function drawCross(x:Int, y:Int)
	DrawLine x - 10, y - 10, x + 10, y + 10
	DrawLine x + 10, y - 10, x - 10, y + 10
End Function
Global fps:Float, fpst:Float, fpsc:Float
Function CountFPS:Float()
	If fpst < MilliSecs() Then
		fpst=MilliSecs()+1000
		fps = fpsc
		fpsc = 0
	Else
		fpsc = fpsc + 1
	End If
	Return fps
End Function