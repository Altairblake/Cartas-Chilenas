@ECHO OFF
chcp 65001
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
echo.
echo o que você vai fazer agora?
endlocal
