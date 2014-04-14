Private
?win32
Extern "win32"
	Function ExtractIconA%(hWnd%,File$z,Index%)
	Function GetActiveWindow%()
	Function SendMessage:Int(hWnd:Int,MSG:Int,wParam:Int,lParam:Int) = "SendMessageA@16"
End Extern
?

Public

Rem
	bbdoc: A function that sets the current window Icon *Windows only*
	about: Can be called with a icon file name, or just AppFile which would get an imbedded icon, call imediately after setting graphics mode
	returns: Nothing
End Rem
Function SetIcon(iconname$)	
	?Win32
	Local TheWindow% = GetActiveWindow%()
	Local icon:Int=ExtractIconA(TheWindow,iconname,0)
	Local WM_SETICON:Int = $80
	Local ICON_SMALL:Int = 0
	Local ICON_BIG:Int = 1
	sendmessage(TheWindow, WM_SETICON, ICON_BIG, icon)
	?
End Function

Rem
	bbdoc: A Clear screen function but adds a blur effect
	about: Draws a black rectangle with alpha to produce a blur effect, great for giving the effect of there being more particles than there is.
	@Alpha is the alpha setting of the black block, if set to 1, it will be the same effect as cls, the less the more blur.
	returns: Nothing
End Rem
Function BlurCls(Alpha:Float = .3)
	SetAlpha Alpha
	SetColor 0,0,0
	DrawRect 0,0,GraphicsWidth(),GraphicsHeight()
	SetColor 255,255,255
	SetAlpha 1
End Function


Rem
	bbdoc: Desktop -> image function
	about: Grabs the desktop and returns it as an image *WINDOWS ONLY*
	returns: The desktop as a TPixmap
End Rem
Function GetDesktopPixmap:TPixmap()
   
   Extern "Win32"
      Function GetDIBits(hdc:Int, bitmap:Int, Start:Int, Num:Int, bits:Byte Ptr, lpbi:Byte Ptr, usage:Int)
      Function CreateCompatibleBitmap(hdc:Int, Width:Int, Height:Int)
      Function CreateDIBSection(hdc:Int, pbmi:Byte Ptr, usage:Int, Bits:Byte Ptr, hSection:Int, Offset:Int)
      Function SelectObject(hdc:Int, obj:Int)
      Function CreateCompatibleDC(hdc:Int)
      Function GetDesktopWindow()
      Function GetWindowDC(hwnd:Int)
      Function GetDeviceCaps(hdc:Int, index:Int)
      Function DeleteDC(hdc:Int)
      Function DeleteObject(obj:Int)
      Function ReleaseDC(hwdn:Int, hdc:Int)
      Function BitBlt(hdc,x,y,w,h,src_dc,src_x,src_y,dwrop)
   End Extern


   ?Win32
   
      Type BITMAPINFO
         Field biSize:Int
         Field biWidth:Int
         Field biHeight:Int
         Field biPlanes:Short
         Field biBitCount:Short
         Field biCompression:Int
         Field biSizeImage:Int
         Field biXPelsPerMeter:Int
         Field biYPelsPerMeter:Int
         Field biClrUsed:Int
         Field biClrImportant:Int
         
         Field R:Byte
         Field G:Byte
         Field B:Byte
         Field Res:Byte
      End Type
      
      
      Const HORZRES:Int = 8
      Const VERTRES:Int = 10
   
      Local HwndDesktop:Int
      Local hdcDesktop:Int
      Local hdcMem:Int
      Local DesktopWidth:Int
      Local DesktopHeight:Int
      Local bmpMem:Int
      Local INFO:BITMAPINFO
      Local FinalPixmap:TPixmap
   
      HwndDesktop = GetDesktopWindow()
   
      If Not HwndDesktop
         Return Null
      EndIf
      
      
      hdcDesktop = GetWindowDC(HwndDesktop)
      
      If Not HdcDesktop
         Return Null
      EndIf
      
      
      hdcMem = CreateCompatibleDC(hdcDesktop)
      
      If Not HdcMem
         Return Null
      EndIf
      
      
      DesktopWidth = GetDeviceCaps(hdcDesktop, HORZRES)
      DesktopHeight = GetDeviceCaps(hdcDesktop, VERTRES)
   
      If DesktopWidth = 0 Or DesktopHeight = 0
         Return Null
      EndIf
      
      
      bmpMem  = CreateCompatibleBitmap(hdcDesktop, DesktopWidth, DesktopHeight)
   
      If Not BmpMem
         Return Null
      EndIf
      
      
      If Not SelectObject(HdcMem, bmpMem)
         Return Null
      EndIf
      
      Info                = New BITMAPINFO
      Info.bisize         = SizeOf(INFO)
      info.BiWidth        = DesktopWidth
      Info.biHeight       = DesktopHeight
      Info.biPlanes       = 1
      info.biBitCount     = 32
      Info.biCompression  = 0
      
      
      If Not BitBlt(hdcMem,0,0,Info.biWidth,Info.biHeight, hdcDesktop,0,0,ROP_SRCCOPY)   
         Return Null
      EndIf
      
      FinalPixmap = CreatePixmap(info.biWidth, info.biHeight, PF_BGRA8888)
      
      If Not GetDIBits(hdcMem, bmpMem, 0, Info.biHeight, FinalPixmap.PixelPtr(0,0), info, 0)
         Return Null
      EndIf
      
      FinalPixmap = YFlipPixmap(FinalPixmap)
      
      DeleteDC(HdcMem)
      DeleteObject(bmpMem)
      ReleaseDC(hwndDesktop, hdcDesktop)
      
      Return FinalPixmap
      
   ?
   
   ?Linux
      Return Null
   ?
   
   ?MacOs
      Return Null
   ?
End Function