
'global variables
Global SCREEN:String = "MENU"
Global GIFT:Byte
Global player:TPlayer
Global playerpoints:Float[] = [0.0, 0.0, 45.0, 0.0, 45.0, 100.0, 0.0, 100.0]
Global enemypoints:Float[] = [0.0, 0.0, 100.0, 0.0, 100.0, 45.0, 0.0, 45.0]
Global SnowStorm:TSnowStorm = New TSnowStorm
Global level:Float
Global popuplist:TList = CreateList()
Global Tutorial:TTutorial = New TTutorial
Global POINTS:Int

'Sound
Global clonk:TSound = LoadSound("media/clonk.wav")
Global cash:TSound = LoadSound("media/cash.wav")
Global scream:TSound = LoadSound("media/scream.wav")
Global peoplechan:TChannel = AllocChannel()
Global people:TSound = LoadSound("media/crowd.wav", SOUND_LOOP)
Global jinglebellschan:TChannel = AllocChannel()
Global jinglebells:TSound = LoadSound("media/jb.ogg", SOUND_LOOP)
Global throwsound:TSound = LoadSound("media/throw.wav")
Global snow:TSound = LoadSound("media/snowpick.wav")
Global explosion:TSound = loadsound("media/explosion.wav")

'Graphics
Global Playbuttonimg:TImage = LoadImage("media/playbutton.png")
Global hPlaybuttonimg:TImage = LoadImage("media/hplaybutton.png")
Global nobuttonimg:TImage = LoadImage("media/nobutton.png")
Global hnobuttonimg:TImage = LoadImage("media/hnobutton.png")
Global yesbuttonimg:TImage = LoadImage("media/yesbutton.png")
Global hyesbuttonimg:TImage = LoadImage("media/hyesbutton.png")
Global bflakeimage:TImage = LoadImage("media/flake.png")
Global gflakeimage:TImage = LoadImage("media/greenflake.png")
Global rflakeimage:TImage = LoadImage("media/redflake.png")
Global bgimage:TImage = LoadImage("media/background.png")
Global bgimage2:TImage = LoadImage("media/background2.png")
Global logoimg:TImage = LoadImage("media/logo.png")
Global fireimage:TImage = LoadImage("media/fire.png")
Global playerimg:TImage = LoadImage("media/player.png")
	SetImageHandle(playerimg, 22.5, 90)
Global enemyimg:TImage = LoadImage("media/enemy.png")
Global giftimg:TImage = LoadImage("media/gift.png")
Global endzone:TImage = LoadImage("media/endzone.png")
Global popupimg:TImage = LoadImage("media/popup.png")
Global quitwindow:TImage = LoadImage("media/quit.png")
	MidHandleImage(quitwindow)
Global snowballimg:TImage = LoadImage("media/snowball.png")
Global snowpileimg:TImage = LoadImage("media/snowpile.png")
Global newspaper:TImage = LoadImage("media/news.png")
Global mouse:TImage = LoadImage("media/mouse.png")
Global BGSS:TImage