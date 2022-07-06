; Contains hotkeys for reloading and editing the scripts
; UTF-8
; cmd /e:on /c

; Reload the script with Hotkey - Works!
>^R::
	Reload
return

; Edit the Current Script using VSCode
>^E::
	SetTitleMatchMode, 2
	IfWinNotExist, Autohotkey Scripts - Visual Studio Code
	{
		RunWait *RunAs code.exe %A_ScriptDir%
	}
	Else
	{
		WinActivate, Autohotkey Scripts - Visual Studio Code
	}
	SetTitleMatchMode, 1
return