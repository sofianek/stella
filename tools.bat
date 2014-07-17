@setlocal enableExtensions enableDelayedExpansion
@echo off
echo ***************************************************************
echo ** EXECUTING : %~n0

call %~dp0\conf.bat

:: arguments
set "params=action:"install" name:"default ninja jom cmake packer perl ruby2 nasm python27 vagrant-git ruby19 openssh list""
set "options=-arch:"#x64 x86" -f: -v: -vv:"
call %STELLA_COMMON%\argopt.bat :argopt %*
if "%ARGOPT_FLAG_ERROR%"=="1" goto :usage
if "%ARGOPT_FLAG_HELP%"=="1" goto :usage

:: setting env
call %STELLA_COMMON%\common.bat :init_env

if "%action%"=="install" (

	if "%name%"=="default" (
		call :init_tools
	)
	if "%name%"=="ninja" (
		call %STELLA_COMMON%\common-tools.bat :ninja
	)
	if "%name%"=="jom" (
		call %STELLA_COMMON%\common-tools.bat :jom
	)
	if "%name%"=="cmake" (
		call %STELLA_COMMON%\common-tools.bat :cmake
	)
	if "%name%"=="packer" (
		call %STELLA_COMMON%\common-tools.bat :packer
	)
	if "%name%"=="perl" (
		call %STELLA_COMMON%\common-tools.bat :perl
	)
	if "%name%"=="nasm" (
		call %STELLA_COMMON%\common-tools.bat :nasm
	)
	if "%name%"=="python27" (
		call %STELLA_COMMON%\common-tools.bat :python27
	)
	if "%name%"=="vagrant-git" (
		call %STELLA_COMMON%\common-tools.bat :vagrant_git
	)
	if "%name%"=="openssh" (
		call %STELLA_COMMON%\common-tools.bat :openssh
	)
	if "%name%"=="ruby2" (
		call %STELLA_COMMON%\common-tools.bat :ruby2
		call %STELLA_COMMON%\common-tools.bat :rdevkit2
	)

	if "%name%"=="ruby19" (
		call %STELLA_COMMON%\common-tools.bat :ruby19
		call %STELLA_COMMON%\common-tools.bat :rdevkit19
	)

	if "%name%"=="list" (
		echo "default ninja jom cmake packer perl nasm python27 vagrant-git openssh ruby2 (with rdevki2) ruby19 (with rdevkit19)"
	)

	goto :end
)

goto :usage


:usage
   echo USAGE :
   echo %~n0 %ARGOPT_HELP_SYNTAX%
goto :end



:init_tools
	echo ** Initialize Tools
	if not exist "%TOOL_ROOT%" mkdir "%TOOL_ROOT%"
	
	call %STELLA_COMMON%\common-tools.bat :unzip
	call %STELLA_COMMON%\common-tools.bat :wget
	call %STELLA_COMMON%\common-tools.bat :sevenzip
	call %STELLA_COMMON%\common-tools.bat :patch
	call %STELLA_COMMON%\common-tools.bat :gnumake
goto :eof



:end
echo ** END **
cd /D %_CURRENT_RUNNING_DIR%
@echo on
@endlocal
