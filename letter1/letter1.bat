@ECHO OFF
chcp 1252
mode 125,50
Title Pr�logo
cls
cd ..
start "" "plugins\cmdbkg.exe" "assets/menubg.bmp" 33 includeborders
"plugins\batbox.exe" /g 0 15
echo Ap�s uma noite de sono, voc� acorda.
timeout /t 1 /NOBREAK > nul
echo Ent�o, depois de um longo bocejo voc� esfrega os olhos para tentar
timeout /t 1 /NOBREAK > nul
echo dissipar o sono.
timeout /t 1 /NOBREAK > nul
echo.
echo Voc� observa o ambiente ao seu redor, a direita da sua cama voc�
timeout /t 1 /NOBREAK > nul
echo v� a janela entreaberta, abaixo da janela, uma escrivaninha.
timeout /t 1 /NOBREAK > nul
echo e ao lado da escrivaninha est� a porta fechada.
timeout /t 1 /NOBREAK > nul
echo.
timeout /t 3 /NOBREAK > nul
echo O que fazer?
timeout /t 1 /NOBREAK > nul
setlocal
:doit
"plugins\cmdmenusel.exe" f870 " Andar at� a janela " " Ir at� a escrivaninha " " Abrir a porta " " Tentar dormir "
GOTO %errorlevel%
:1
cls
cd data
if exist window.close (
echo Voc� caminha at� a janela e ent�o abre ela...
timeout /t 1 /NOBREAK > nul
echo voc� sente atrav�s da janela a brisa fresca da manh�...
timeout /t 1 /NOBREAK > nul
echo Depois de algum tempo observando pela janela voc� volta e senta na cama...
timeout /t 1 /NOBREAK > nul
pause > nul
rename window.close window.open
cls
cd..
GOTO doit
) ELSE (
echo A janela j� est� aberta.
echo e voc� resolve fech�-la.
cls
GOTO doit
)
:2
echo 
endlocal