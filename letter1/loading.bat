echo off
Title Loading
color f
mode 103,5
set counter=0
set counterb=000
set core=北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北北
set "valuecore=                                                                                                    "
setLocal EnableDelayedExpansion
:start
cls
echo.赡哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪幕
echo.�%valuecore:~0,100%�
echo.饶哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪哪募
if %counter% GEQ 100 set msg=complete& set counterb=10000& goto exit
echo. %counterb:~0,-2%%%
set /a counter=counter+1
set /a counterb=counterb+100
set "valuecore=!core:~0,%counter%!                                                                                                    "
set delay=0
:delay
if %delay%==1 goto start
set /a delay=delay+1
goto delay
:exit
echo. %counterb:~0,-2%%% %msg%
ENDLOCAL
start letter1.bat
exit
