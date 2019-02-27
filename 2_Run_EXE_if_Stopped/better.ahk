;This program works perfectly for below situation.
;///////////////////////
;If there is some exe running under command-line (even by another batch file)
;this program will make sure the exe keeps running. If it stops it will invoke
;another script that will make the exe (cmd) file run.
;///////////////////////

#persistent
SetTitleMatchMode,2
Loop 
{   
	Process,Exist, cmd.exe 
   	If ( ErrorLevel = 0 ) ;
	{
   		Run, autorun.ahk	;autorun.ahk is the other autohotkey script to run some batch file (with cmd.exe file)
		Sleep 2000
		WinActivate, ahk_exe notepad.exe	;Notepad is used as a logger for file running condition
		Send, {Enter} Process is RESTARTED {Enter}
		FormatTime, TimeString	;append the time and date details to the log file
		Send, %TimeString%
	}
	Else
		continue
}