Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "crash_log" & Chr(34), 0
Set WshShell = Nothing