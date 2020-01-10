@echo off
adb tcpip 5555

set /p answer=Do you want to use default configuration? (y/n) : 

if "%answer%"=="y" (
set ipdevice=192.168.43.1
)

if "%answer%"=="n" (
set /p ipdevice=Enter ip address of your device then : 
)

adb connect %ipdevice%:5555
pause