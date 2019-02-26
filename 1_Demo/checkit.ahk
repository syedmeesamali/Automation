#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
F2::
DetectHiddenWindows,on
ScriptOn := ScriptOn<1 ? 1:0
If ScriptOn = 1
	{
	Run,hello.ahk
	}
Else
	{
	SetTitleMatchMode,2
	WinKill,hello.ahk
	}
Return