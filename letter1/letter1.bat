@ECHO OFF
chcp 1252
mode 125,50
Title Pr�logo
cls
cd ..
start "" "plugins\cmdbkg.exe" "assets/fasebg.bmp" 33 includeborders
"plugins\batbox.exe" /g 0 15
echo Ap�s uma noite curta de sono, voc� acorda.
timeout /t 3 /NOBREAK > nul
echo Ent�o, depois de um longo bocejo voc� esfrega os olhos para tentar dissipar o sono.
timeout /t 4 /NOBREAK > nul
echo.
echo Voc� observa o ambiente ao seu redor, a direita da sua cama voc�
ping -n 2 localhost > nul
echo v� a janela entreaberta, abaixo da janela, uma escrivaninha.
ping -n 1.75 localhost > nul
echo e ao lado da escrivaninha est� a porta fechada.
echo.
echo o que voc� vai fazer agora?
GOTO stddoit
:switchdoit
findstr "Janela Aberta" "data\data.base" > nul
IF %errorlevel% NEQ 0 ( 
GOTO stddoit
) ELSE (
GOTO 2nddoit
)
:stddoit
"plugins\cmdmenusel.exe" f870 " *Ir at� a janela e abr�-la " " *Ir at� a escrivaninha " " *Tentar voltar a dormir "
GOTO %errorlevel%
:onddoit
"plugins\cmdmenusel.exe" f870 " *Ir at� a janela e fech�-la " " *Ir at� a escrivaninha " " *tentar voltar a dormir "
GOTO %errorlevel%
:orddoit
"plugins\cmdmenusel.exe" f870 " *Escrever algo no papel "
GOTO %errorlevel%
:1
	cls
	start "" "plugins\cmdbkg.exe" "assets/janela.bmp" 33 includeborders
	echo Voc� vai at� a janela, quando decide abr�-la, voc� percebe que o sol ainda est� fraco no horizonte.
	echo O nascer do sol � algo muito bonito.
	echo Ent�o voc� decide deixar a janela aberta, e retornar para a cama
	echo janela aberta > "data\data.base"
	GOTO onddoit
:5
	cls
	start "" "plugins\cmdbkg.exe" "assets/janela.bmp" 33 includeborders
	echo Apesar de o nascer do sol ser algo bonito, as frequentes rajadas de vento frio
	echo lhe encomodaram um pouco...
	echo Ent�o, novamente vai at� a janela e fecha a mesma, depois retorna para a sua cama.
	GOTO onddoit
:2
SETLOCAL
	echo Voc� vai se levanta e vai at� a escrivaninha, tem uma folha de papel em cima dela,
	echo echo e um copo de �gua. Assim como tamb�m, h� tr�s gavetas nessa escrivaninha.
	GOTO basicdothat
	:dothat
	"plugins\cmdmenusel.exe" f870 " Olhar as gavetas "
	IF %errorlevel% EQU 1 ( GOTO 2)
	:basicdothat
	"plugins\cmdmenusel.exe" f870 " Toma da �gua do copo " " Olhar as gavetas "
	GOTO %errorlevel%
:1
	cls
	echo Voc� sente sede, ent�o decide tomar a �gua do copo.
	echo voc� se atrapalha na hora de peg�-lo e acaba derrubando uma parte da �gua na escrivaninha.
	echo Mas n�o sujou , ent�o n�o faz diferen�a.
	echo voc� acaba de tomar a �gua, ent�o coloca o copo ao lado da folha de papel.
	GOTO dothat
:2
	cls
	echo Voc� abre as gavetas...
	echo Na primeira delas n�o havia nada, estava completamente vazia.
	echo Na segunda gaveta, haviam algumas folhas de papel.
	echo Na terceira gaveta estavam uma pena e uma lata pequena de tinta.
ENDLOCAL
:3
	echo Voc� deita na cama e tenta voltar a dormir...
	echo mas n�o consegue, o sono se esvaiu da sua mente.
	echo E prov�velmente n�o vai conseguir dormir agora mesmo que tente outra vez.
	cls
pause
