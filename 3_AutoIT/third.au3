HotKeySet("^{1}", "func1")
$dir = @WindowsDir

FileOpenDialog("Test, Initial directory = Win Dir",$dir,"Images (*.jpg;*.bmp)")
MsgBox(0,"","now press Ctrl + 1")
Sleep(3000)
FileOpenDialog("Test, Initial directory = C:\",$dir,"Images (*.jpg;*.bmp)")

Func func1()
    $dir = "C:\"
EndFunc