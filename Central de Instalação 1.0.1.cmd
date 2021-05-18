@echo off
echo -----------------------------------
echo Bem vindo a Central de Instalacoes 
echo -----------------------------------

echo Deseja instalar um programa para este computador ou para outro?
echo [1] Este Computador
echo [2] Outro Computador
set /p inicio="Escolha uma opcao: ":
if %inicio%==1 (
color 1F
cls
goto menu)
if %inicio%==2 (
color 4F
cls
goto patr)

:menu
echo ---------------------------------------------
echo Selecione o programa que voce deseja instalar
echo ---------------------------------------------
echo [1] Adobe Reader
echo [2] 7-Zip
echo [3] PDF Creator
echo [4] Libre Office
echo [5] Google Chrome
echo [6] Mozilla Firefox
echo [7] Psexec
echo [0] Sair
echo [00] Instalar Choco (Essencial)
echo ---------------------------------------------
set /p id="Digite uma opcao: ":
echo %id%

if %id%==1 (
goto chcadobe)
if %id%==2 (
goto chc7z)
if %id%==3 (
goto chcpdfc)
if %id%==4 (
goto chclo)
if %id%==5 (
goto chcchrome)
if %id%==6 (
goto chcffox)
if %id%==7 (
goto chcpsx)
if %id%==0 (
msg /server:%COMPUTERNAME% %USERNAME% Tchau!
exit) 
if %id%==00 (
goto chcinstall)

REM funcoes
:patr
	set /p cn="Digite o patrimonio: ":
	psexec \\%cn% cmd
	cls
	echo %cn%
	goto menu
:patr
	set /p cn="Digite o patrimonio: ":
	psexec \\%cn% cmd
	cls
	echo %cn%
	goto menu
:chcadobe
	choco install adobereader --force -y
	cls
	goto menu
:chc7z
	choco install 7zip.install --force -y
	cls
	goto menu
:chcpdfc
	choco install pdfcreator --force -y
	cls
	goto menu
:chclo
	choco install libreoffice-still --force -y
	cls
	goto menu
:chcchrome
	choco install googlechrome --force -y
	cls
	goto menu
:chcffox
	choco install firefox --force -y
	cls
	goto menu
:chcpsx
	choco install psexec --force -y
	cls
	goto menu
:chcinstall
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
	cls
	goto menu

