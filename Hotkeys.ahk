; Main Hotkey script. This script contains all of the AHK commands for the system
; UTF-8
; cmd /e:on /c

;;;;;;;;;;;;;;;;;;
; Starting Items ;
;;;;;;;;;;;;;;;;;;
#SingleInstance Force ; Force the program to exit if it's already running in another instance
#Hotstring C O ; When you type a Hotstring, it is case sensitive, Omit the char that actuates the hotstring
#Hotstring EndChars `t ; Sets the key to press to actuate a hotstring
SendMode Input
SetWorkingDir %A_ScriptDir%

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Show a Toast notification that the listener has started ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
TrayTip, AutoHotKey has started and loaded the following file, %A_ScriptName%, 1, 49

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Install a Tray Icon Menu Handler for Auto-start on boot ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
InstallFunc := Func("InstallStartupHook")
Menu, Tray, Add, Install Launch On Startup Hook, % InstallFunc
InstallStartupHook(ItemName, ItemPos, MenuName)
{
	; Install startup in system registry for current user
	RegWrite, REG_SZ, HKCU\Software\Microsoft\Windows\CurrentVersion\Run, Hotkeys, start %A_ScriptFullPath%
}

;;;;;;;;;;;;
; Includes ;
;;;;;;;;;;;;
; Multicopy and sequential paste
#Include, %A_ScriptDir%\ClipQueue.ahk
; Hotkeys to reload and edit the script
#Include, %A_ScriptDir%\ScriptManagement.ahk
; Snippets to make typing Spanish easier
#Include, %A_ScriptDir%\Spanish.ahk
; Snippets to insert the current time and date
#Include, %A_ScriptDir%\Timestamp.ahk
; Open Source Autocorrect Module 
#Include, %A_ScriptDir%\AutoCorrect.ahk
; Personal Data that is secret
#If FileExist("_secrets.ahk")
	#Include, %A_ScriptDir%\_secrets.ahk
#If

;;;;;;;;;;;;;;;;;;;;;;;;;
; Hibernate with Hotkey ;
;;;;;;;;;;;;;;;;;;;;;;;;;
^#!F1::
	Run *RunAs rundll32.exe powrprof.dll`,SetSuspendState Hibernate
return

;;;;;;;;;;;;
; Snippets ;
;;;;;;;;;;;;
::sci(tm)::science™
::Sci(tm)::Science™

