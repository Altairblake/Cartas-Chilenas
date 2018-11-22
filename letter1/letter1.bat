@ECHO OFF
chcp 1252
mode 125,50
Title Prólogo
cls
cd ..
start "" "plugins\cmdbkg.exe" "assets/fasebg.bmp" 33 includeborders
"plugins\batbox.exe" /g 0 15
echo Após uma noite curta de sono, você acorda.
timeout /t 3 /NOBREAK > nul
echo Então, depois de um longo bocejo você esfrega os olhos para tentar dissipar o sono.
timeout /t 4 /NOBREAK > nul
echo.
echo Você observa o ambiente ao seu redor, a direita da sua cama você
ping -n 2 localhost > nul
echo vê a janela entreaberta, abaixo da janela, uma escrivaninha.
ping -n 1.75 localhost > nul
echo e ao lado da escrivaninha está a porta fechada.
echo.
echo o que você vai fazer agora?
GOTO stddoit
:switchdoit
findstr "Janela Aberta" "data\data.base" > nul
IF %errorlevel% NEQ 0 ( 
GOTO stddoit
) ELSE (
GOTO 2nddoit
)
:stddoit
"plugins\cmdmenusel.exe" f870 " *Ir até a janela e abrí-la " " *Ir até a escrivaninha " " *Tentar voltar a dormir "
GOTO %errorlevel%
:onddoit
"plugins\cmdmenusel.exe" f870 " *Ir até a janela e fechá-la " " *Ir até a escrivaninha " " *tentar voltar a dormir "
GOTO %errorlevel%
:orddoit
"plugins\cmdmenusel.exe" f870 " *Escrever algo no papel "
GOTO %errorlevel%
:1
	cls
	start "" "plugins\cmdbkg.exe" "assets/janela.bmp" 33 includeborders
	echo Você vai até a janela, quando decide abrí-la, você percebe que o sol ainda está fraco no horizonte.
	echo O nascer do sol é algo muito bonito.
	echo Então você decide deixar a janela aberta, e retornar para a cama
	echo janela aberta > "data\data.base"
	GOTO onddoit
:5
	cls
	start "" "plugins\cmdbkg.exe" "assets/janela.bmp" 33 includeborders
	echo Apesar de o nascer do sol ser algo bonito, as frequentes rajadas de vento frio
	echo lhe encomodaram um pouco...
	echo Então, novamente vai até a janela e fecha a mesma, depois retorna para a sua cama.
	GOTO onddoit
:2
SETLOCAL
	echo Você vai se levanta e vai até a escrivaninha, tem uma folha de papel em cima dela,
	echo echo e um copo de água. Assim como também, há três gavetas nessa escrivaninha.
	GOTO basicdothat
	:dothat
	"plugins\cmdmenusel.exe" f870 " Olhar as gavetas "
	IF %errorlevel% EQU 1 ( GOTO 2)
	:basicdothat
	"plugins\cmdmenusel.exe" f870 " Toma da água do copo " " Olhar as gavetas "
	GOTO %errorlevel%
:1
	cls
	echo Você sente sede, então decide tomar a água do copo.
	echo você se atrapalha na hora de pegá-lo e acaba derrubando uma parte da água na escrivaninha.
	echo Mas não sujou , então não faz diferença.
	echo você acaba de tomar a água, então coloca o copo ao lado da folha de papel.
	GOTO dothat
:2
	cls
	echo Você abre as gavetas...
	echo Na primeira delas não havia nada, estava completamente vazia.
	echo Na segunda gaveta, haviam algumas folhas de papel.
	echo Na terceira gaveta estavam uma pena e uma lata pequena de tinta.
ENDLOCAL
:3
	echo Você deita na cama e tenta voltar a dormir...
	echo mas não consegue, o sono se esvaiu da sua mente.
	echo E provávelmente não vai conseguir dormir agora mesmo que tente outra vez.
	cls
pause
