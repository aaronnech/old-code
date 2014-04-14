Import rigz.timelinefx
Import rigz.tweener

Include "inc.objects.bmx"

SetGraphicsDriver GLMax2DDriver()
Graphics 1024, 768
SetBlend ALPHABLEND
SeedRnd MilliSecs()

Include "inc.global.bmx"

New TBlock.Create("L", 10, 0)
While Not KeyHit(KEY_ESCAPE)
	Cls
	DrawRect 26 * TILE_SIZE, 0, 6 * TILE_SIZE, 768
	TBlock.UpdateAll()
	If KeyHit(KEY_B) New TBlock.Create("L", Rand(1, 25), 0)
	DrawTiles()
	Flip 1
Wend
End

Include "inc.peices.bmx"