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
	Gui, Add, Text, Center, How many alchs would you like to do?
	Gui, Add, Text, Center, Discord: GodSpawn#4292
	Gui, Add, Edit, vloopAmount ym
	Gui, Add, Button, default, OK
	Gui, Show,, Eden Alcher v1.0
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
	loopAmount -= 1
	Mousemove, 717, 360, 0
	sleep, 50
	click
	sleep, 50
	click
	loop % loopAmount{
		Loop{
			CoordMode, Pixel, Window
			PixelSearch, FoundX, FoundY, 717, 360, 717, 360, 0xFAF60C, 0, Fast RGB
		}
		Until ErrorLevel = 0
		If ErrorLevel = 0
		{
			click
			sleep, 150
			click
		}
	}
	exitapp
}