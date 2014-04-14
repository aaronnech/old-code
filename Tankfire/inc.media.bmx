Global bg:TImage = LoadImage("Media/background.png")
Global player:TImage = LoadImage("Media/tank1.png")
Global terrain:TImage = LoadImage("Media/terrain.png")
Global explosion:TImage = LoadImage("Media/explosion.png")
MidHandleImage(explosion)

Global terrainshape:hshape = hshape.GenShape("Media/terrain.png")
Global exphole:hshape = hshape.GenShape("Media/explosion.png")
Global player1:TPlayer = New TPlayer
Global player2:TPlayer = New TPlayer
Global Turn:Int = 1
Global PLAYERS:Int = 2