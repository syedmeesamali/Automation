#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;This script will run if what it is running is not running e.g. notepad
IfWinNotExist, Untitled - Notepad
{
    run, Notepad.exe
    WinActivate  ; Automatically uses the window found above.
    WinWaitActive, Untitled - Notepad
    Send, 7 lines{!}{Enter}
    return
}