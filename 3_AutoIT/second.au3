HotKeySet("^{1}","opendialog")
While 1
    sleep(500)
WEnd



Func opendialog()
$oldtext=ControlGetText("Open","","Edit1")
ControlSetText("Open","","Edit1","c:\")
ControlSend("Open","","Edit1","{enter}")
ControlSetText("Open","","Edit1",$oldtext)
EndFunc