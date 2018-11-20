@echo off
chcp 1252
mode 125, 50
:loading
cls
start "" "plugins\cmdbkg.exe" "menubg.bmp" 33 includeborders
echo .d8888b.                   888                            .d8888b.  888      d8b 888                                     
echo d88P  Y88b                  888                           d88P  Y88b 888      Y8P 888                                     
echo 888    888                  888                           888    888 888          888                                     
echo 888         8888b.  888d888 888888  8888b.  .d8888b       888        88888b.  888 888  .d88b.  88888b.   8888b.  .d8888b  
echo 888            "88b 888P"   888        "88b 88K           888        888 "88b 888 888 d8P  Y8b 888 "88b     "88b 88K      
echo 888    888 .d888888 888     888    .d888888 "Y8888b.      888    888 888  888 888 888 88888888 888  888 .d888888 "Y8888b. 
echo Y88b  d88P 888  888 888     Y88b.  888  888      X88      Y88b  d88P 888  888 888 888 Y8b.     888  888 888  888      X88 
echo  "Y8888P"  "Y888888 888      "Y888 "Y888888  88888P'       "Y8888P"  888  888 888 888  "Y8888  888  888 "Y888888  88888P'
echo.
echo.
echo.
REM /g 0 22 onde 0 é a coluna e 22 a linha a partir da qual o texto/saida de comando será printado"
"plugins\batbox.exe" /g 0 22
Title Cartas Chilenas - Menu principal
"plugins\cmdmenusel.exe" f870 " Iniciar " " As Cartas " " Sobre " " Tutorial " " Sair "
GOTO %errorlevel%
:1
	cd letter1
	start loading.bat
	exit
:2
	start "menu\index.cmd"
	exit
:3
	start "menu\about.cmd"
	exit
:4
	start "menu\tutorial.cmd"
	exit
pause 
