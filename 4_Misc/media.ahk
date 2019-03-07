SetTitleMatchMode, 2

#IfWinActive, VLC media player

~LButton::
MouseGetPos,XX,YY
WinGetPos,,,WW,HH, A
if ((XX >= WW*0.20) and (XX <= WW*0.80) and (YY >= HH*0.20) and (YY <= HH*0.70))
    Send {Space}
return

#IfWinActive