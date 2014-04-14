import brl.blitz
import brl.appstub
import brl.audio
import brl.bank
import brl.bankstream
import brl.basic
import brl.bmploader
import brl.d3d7max2d
import brl.directsoundaudio
import brl.eventqueue
import brl.freeaudioaudio
import brl.freetypefont
import brl.gnet
import brl.jpgloader
import brl.maxutil
import brl.oggloader
import brl.openalaudio
import brl.pngloader
import brl.reflection
import brl.retro
import brl.tgaloader
import brl.timer
import brl.wavloader
import pub.freejoy
import pub.freeprocess
import pub.glew
import pub.macos
ReqFPS%=60
PARENT_PLAYER%=2
PARENT_ALIEN1%=1
DIR_UP%=1
DIR_DOWN%=-1
TExplosion^brl.blitz.Object{
.FrameTimer#&
.Current_Frame%&
.x%&
.y%&
.size%&
-New%()="_bb_TExplosion_New"
-Delete%()="_bb_TExplosion_Delete"
-Create%(bx%,by%,bsize%=1)="_bb_TExplosion_Create"
-Update%()="_bb_TExplosion_Update"
}="bb_TExplosion"
TAlien^brl.blitz.Object{
.x%&
.y%&
.orgx%&
.lr%&
.Alien:brl.max2d.TImage&
.IMGFrame%&
.IMGFrameTimer#&
.shoottimer%&
.shoottime%&
-New%()="_bb_TAlien_New"
-Delete%()="_bb_TAlien_Delete"
-Create%(PX%,PY%,A_Type%)="_bb_TAlien_Create"
-Update%()="_bb_TAlien_Update"
-Shoot%()="_bb_TAlien_Shoot"
-BlowUp%()="_bb_TAlien_BlowUp"
}="bb_TAlien"
TPlayer^brl.blitz.Object{
.x%&
.y%&
.HP%&
.Mobile%&
-New%()="_bb_TPlayer_New"
-Delete%()="_bb_TPlayer_Delete"
-Create%()="_bb_TPlayer_Create"
-Update%()="_bb_TPlayer_Update"
-Shoot%()="_bb_TPlayer_Shoot"
-Hit%()="_bb_TPlayer_Hit"
-Die%()="_bb_TPlayer_Die"
}="bb_TPlayer"
TBullet^brl.blitz.Object{
.x%&
.y%&
.direction%&
.speed%&
.par%&
-New%()="_bb_TBullet_New"
-Delete%()="_bb_TBullet_Delete"
-Create%(parent%,PX%,PY%)="_bb_TBullet_Create"
-Update%()="_bb_TBullet_Update"
}="bb_TBullet"
GetActiveWindow%()S="GetActiveWindow@0"
IsZoomed%(hwnd%)S="IsZoomed@4"
ExtractIconA%(hWnd%,File$z,Index%)S="ExtractIconA@12"
SendMessage%(hWnd%,MSG%,wParam%,lParam%)S="SendMessageA@16"
enableMinimize%(hWnd%%)="bb_enableMinimize"
SetIcon%(iconname$,TheWindow%)="bb_SetIcon"
RectsOverlap%(x0%,y0%,w0%,h0%,x2%,y2%,w2%,h2%)="bb_RectsOverlap"
ShowLevelUp%(lv%)="bb_ShowLevelUp"
GameOver%()="bb_GameOver"
MainMenu%()="bb_MainMenu"
Win%()="bb_Win"
SUperiod%&=mem("bb_SUperiod")
SUtime%&=mem("bb_SUtime")
SUelapsed%&=mem("bb_SUelapsed")
SU%&=mem("bb_SU")
SUticks%&=mem("bb_SUticks")
i%&=mem("bb_i")
CHECKALIEN:TAlien&=mem:p("bb_CHECKALIEN")
CHECKBULLET:TBullet&=mem:p("bb_CHECKBULLET")
AlienList:brl.linkedlist.TList&=mem:p("bb_AlienList")
BulletList:brl.linkedlist.TList&=mem:p("bb_BulletList")
ExplosionList:brl.linkedlist.TList&=mem:p("bb_ExplosionList")
ALIEN_LAYOUT%&[,]&=mem:p("bb_ALIEN_LAYOUT")
FIRE_DOWN%&=mem("bb_FIRE_DOWN")
FIRE_TIMER#&=mem:f("bb_FIRE_TIMER")
LIFES%&=mem("bb_LIFES")
LEVEL%&=mem("bb_LEVEL")
SCORE%&=mem("bb_SCORE")
EARTHHP#&=mem:f("bb_EARTHHP")
player:TPlayer&=mem:p("bb_player")
BG:brl.max2d.TImage&=mem:p("bb_BG")
intro:brl.max2d.TImage&=mem:p("bb_intro")
player_img:brl.max2d.TImage&=mem:p("bb_player_img")
press_ent:brl.max2d.TImage&=mem:p("bb_press_ent")
alien1_img:brl.max2d.TImage&=mem:p("bb_alien1_img")
alien2_img:brl.max2d.TImage&=mem:p("bb_alien2_img")
alien3_img:brl.max2d.TImage&=mem:p("bb_alien3_img")
alien4_img:brl.max2d.TImage&=mem:p("bb_alien4_img")
explosion_img:brl.max2d.TImage&=mem:p("bb_explosion_img")
fire:brl.audio.TSound&=mem:p("bb_fire")
boom:brl.audio.TSound&=mem:p("bb_boom")
bg_music:brl.audio.TSound&=mem:p("bb_bg_music")
