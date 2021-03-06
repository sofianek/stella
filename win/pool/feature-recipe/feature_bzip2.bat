@echo off
call %*
goto :eof

:feature_bzip2
	set "FEAT_NAME=bzip2"
	set "FEAT_LIST_SCHEMA=1_0_6:source"
	set "FEAT_DEFAULT_VERSION=1_0_6"
	set "FEAT_DEFAULT_ARCH="
	set "FEAT_DEFAULT_FLAVOUR=source"
goto :eof


:feature_bzip2_1_0_6
	set "FEAT_VERSION=1_0_6"
	set FEAT_SOURCE_DEPENDENCIES=
	set FEAT_BINARY_DEPENDENCIES=

	set "FEAT_SOURCE_URL=http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz"
	set "FEAT_SOURCE_URL_FILENAME=bzip2-1.0.6.tar.gz"
	set "FEAT_SOURCE_URL_PROTOCOL=HTTP_ZIP"
	
	set FEAT_BINARY_URL=
	set FEAT_BINARY_URL_FILENAME=
	set FEAT_BINARY_URL_PROTOCOL=
	
	set FEAT_SOURCE_CALLBACK=feature_bzip2_patch
	set FEAT_BINARY_CALLBACK=
	set FEAT_ENV_CALLBACK=

	set "FEAT_INSTALL_TEST=!FEAT_INSTALL_ROOT!\lib\libbz2.lib"
	set "FEAT_SEARCH_PATH=!FEAT_INSTALL_ROOT!\bin"
goto :eof

:feature_bzip2_patch
	REM patches from https://github.com/philr/bzip2-windows (carefull : patch files endline must be windows style)
	copy /Y "!STELLA_PATCH!\bzip2\*.diff" "!SRC_DIR!\"
	copy /Y "!STELLA_PATCH!\bzip2\version.rc" "!SRC_DIR!\"

	cd /D "!SRC_DIR!"
	for %%i in ("!SRC_DIR!"\*.diff) do (
	 	patch --verbose -u -p1 < %%i
	)
goto :eof

:feature_bzip2_install_source
	set "INSTALL_DIR=!FEAT_INSTALL_ROOT!"
	set "SRC_DIR=!STELLA_APP_FEATURE_ROOT!\!FEAT_NAME!-!FEAT_VERSION!-src"
	
	call %STELLA_COMMON%\common-build.bat :set_toolset "CUSTOM" "CONFIG_TOOL NONE BUILD_TOOL nmake COMPIL_FRONTEND cl"

	call %STELLA_COMMON%\common.bat :get_resource "!FEAT_NAME!" "!FEAT_SOURCE_URL!" "!FEAT_SOURCE_URL_PROTOCOL!" "!SRC_DIR!" "STRIP"	

	call %STELLA_COMMON%\common-feature.bat :feature_callback

	set "AUTO_INSTALL_CONF_FLAG_POSTFIX="
	set "AUTO_INSTALL_BUILD_FLAG_POSTFIX=/f makefile.msc all"
	

	call %STELLA_COMMON%\common-build.bat :auto_build "!FEAT_NAME!" "!SRC_DIR!" "!INSTALL_DIR!" "NO_CONFIG NO_OUT_OF_TREE_BUILD SOURCE_KEEP NO_INSPECT"

	mkdir "!INSTALL_DIR!\bin"
	mkdir "!INSTALL_DIR!\lib"
	mkdir "!INSTALL_DIR!\include"

	copy /Y "!SRC_DIR!\*.exe" "!INSTALL_DIR!\bin\" 2>NUL
	copy /Y "!SRC_DIR!\*.dll" "!INSTALL_DIR!\bin\" 2>NUL
	copy /Y "!SRC_DIR!\*.lib" "!INSTALL_DIR!\lib\" 2>NUL
	copy /Y "!SRC_DIR!\*.h" "!INSTALL_DIR!\include\" 2>NUL

	call %STELLA_COMMON%\common.bat :del_folder "!SRC_DIR!"

	call %STELLA_COMMON%\common-build.bat :inspect_and_fix_build "!INSTALL_DIR!"
goto :eof



