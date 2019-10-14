#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoEnv
SendMode Input
~F8::Suspend
~End::ExitApp
~F11::Reload
;;;-x sol
;;;+x sag
;-y yukari
;;;+y assa

~RButton & ~LButton::
Loop
{
	If GetKeyState("LButton", "RButton") {
		loop, 8
		{
			mouseXY(0,5)
			mouseXY(-5,0)
			Sleep,25
		}
		loop, 8
		{
			mouseXY(0,5)
			mouseXY(5,0)
			Sleep,25
		}
		
    }
    else
		break
}
Return

mouseXY(x,y)
{
;
DllCall("mouse_event",int,1,int,x,int,y,uint,0,uint,0)
}





 
