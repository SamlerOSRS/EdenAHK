#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance, force
Coordmode, client
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
!::gui()
@::pause
#::exitapp

gui(){
	global
	Gui, Add, Text, Center, How many times would you like to loop the script?
	Gui, Add, Text, Center, Discord: GodSpawn#4292
	Gui, Add, Edit, vloopAmount ym
	Gui, Add, Button, default, OK
	Gui, Show,, Eden Ashweed Buyer v1.0
	return

	GuiClose:
	ButtonOK:
	Gui, Submit
	Gui, Destroy
	main()
	return

}

main(){
	global
	loop % loopAmount{
		TopLoop:
		Mousemove, 683, 163, 0
		sleep, 50
		click
		sleep, 12500
		Mousemove, 339, 255, 0
		sleep, 50
		click, right
		sleep, 50
		Mousemove, 334, 295
		sleep, 50
		click
		sleep, 2000
		Buyer:
		Loop{
			CoordMode, Pixel, Window
			PixelSearch, FoundX, FoundY, 449, 68, 449, 68, 0x483E33, 0, Fast RGB
		}
		Until ErrorLevel = 0
		If ErrorLevel = 0
		{
			Random, ass, 1, 3
		}
		sleep, 100
		Mousemove, 195, 209, 0
		sleep, 50
		click, right
		sleep, 50
		Mousemove, 195, 296, 0
		sleep, 50
		click
		sleep, 50
		Mousemove, 290, 211, 0
		sleep, 50
		click, right
		sleep, 50
		Mousemove, 290, 297, 0
		sleep, 50
		click
		sleep, 50
		CoordMode, Pixel, Window
		PixelSearch, FoundX, FoundY, 710, 479, 710, 479, 0x3D352B, 0, Fast RGB
		If ErrorLevel = 0
		{
			GoTo, Buyer
		}
		sleep, 50
		Send {Esc}
		sleep, 150
		Mousemove, 116, 37, 0
		sleep, 50
		click
		Loop{
			CoordMode, Pixel, Window
			PixelSearch, FoundX, FoundY, 452, 50, 452, 50, 0x494034, 0, Fast RGB
		}
		Until ErrorLevel = 0
		If ErrorLevel = 0
		{
			Random, ass, 1, 3
		}
		sleep, 15	
		Mousemove, 449, 345, 0
		sleep, 50
		click
		sleep, 300
		sleep, 150
		Mousemove, 95, 130, 0
		sleep, 50
		click, right
		Mousemove, 95, 246, 0
		sleep, 50
		click, left
		sleep, 600
		Send {Esc}
		sleep, 300
	}
}
