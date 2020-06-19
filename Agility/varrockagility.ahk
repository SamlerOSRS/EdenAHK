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
	Gui, Add, Text, Center, How many times laps would you like to do?
	Gui, Add, Text, Center, Discord: GodSpawn#4292
	Gui, Add, Edit, vloopAmount ym
	Gui, Add, Button, default, OK
	Gui, Show,, Eden Varrock Agility v1.0
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
		;first step
		Mousemove, 263, 203, 0
		sleep, 1
		click
		sleep, 4000
		;second step
		Mousemove, 191, 210, 0
		sleep, 150
		click
		sleep, 9500
		;third step
		Mousemove, 169, 176, 0
		sleep, 150
		click
		sleep, 5000
		;fourth step
		Mousemove, 208, 203, 0
		sleep, 150
		click
		sleep, 10000
		Mousemove, 316, 266, 0
		sleep, 150
		click
		sleep, 6000
		Mousemove, 471, 214, 0
		sleep, 150
		click
		sleep, 10000
		Mousemove, 450, 171, 0
		sleep, 150
		click
		
		
		sleep, 8000
		Mousemove, 276, 128, 0
		sleep, 150
		click
		sleep, 5000
		Mousemove, 261, 138, 0
		sleep, 150
		click
		sleep, 6000
		Mousemove, 61, 241, 0
		sleep, 150
		click
		sleep, 7000
	}
	exitapp
}