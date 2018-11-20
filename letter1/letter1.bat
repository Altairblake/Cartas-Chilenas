@ECHO OFF
chcp 1252
mode 125,50
Title Prólogo
cls
cd ..
start "" "plugins\cmdbkg.exe" "assets/menubg.bmp" 33 includeborders
"plugins\batbox.exe" /g 0 15
echo Após uma noite de sono, você acorda.
timeout /t 1 /NOBREAK > nul
echo Então, depois de um longo bocejo você esfrega os olhos para tentar
timeout /t 1 /NOBREAK > nul
echo dissipar o sono.
timeout /t 1 /NOBREAK > nul
echo.
echo Você observa o ambiente ao seu redor, a direita da sua cama você
timeout /t 1 /NOBREAK > nul
echo vê a janela entreaberta, abaixo da janela, uma escrivaninha.
timeout /t 1 /NOBREAK > nul
echo e ao lado da escrivaninha está a porta fechada.
timeout /t 1 /NOBREAK > nul
echo.
timeout /t 3 /NOBREAK > nul
echo O que fazer?
timeout /t 1 /NOBREAK > nul
setlocal
:doit
"plugins\cmdmenusel.exe" f870 " Andar até a janela " " Ir até a escrivaninha " " Abrir a porta " " Tentar dormir "
GOTO %errorlevel%
:1
cls
cd data
if exist window.close (
echo Você caminha até a janela e então abre ela...
timeout /t 1 /NOBREAK > nul
echo você sente através da janela a brisa fresca da manhã...
timeout /t 1 /NOBREAK > nul
echo Depois de algum tempo observando pela janela você volta e senta na cama...
timeout /t 1 /NOBREAK > nul
pause > nul
rename window.close window.open
cls
cd..
GOTO doit
) ELSE (
echo A janela já está aberta.
echo e você resolve fechá-la.
cls
GOTO doit
)
:2
echo 
endlocal