@echo off

color b

title IP-CONNECTER

:greeting
cls

ECHO d888888b d8888b.        d8888b. d888888b d8b   db  d888b  d88888b d8888b. 
ECHO   `88'   88  `8D        88  `8D   `88'   888o  88 88' Y8b 88'     88  `8D 
ECHO    88    88oodD'        88oodD'    88    88V8o 88 88      88ooooo 88oobY' 
ECHO    88    88~~~   C8888D 88~~~      88    88 V8o88 88  ooo 88~~~~~ 88`8b   
ECHO   .88.   88             88        .88.   88  V888 88. ~8~ 88.     88 `88. 
ECHO Y888888P 88             88      Y888888P VP   V8P  Y888P  Y88888P 88   YD 
                                                                          
                                                                          
                                                                
                                                                          
                                                                          
                                                                          
                                                                                                                 
set /p IP=Enter IP::
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo CONNECTED.) 
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top 