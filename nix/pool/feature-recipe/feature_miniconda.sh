if [ ! "$_miniconda_INCLUDED_" == "1" ]; then
_miniconda_INCLUDED_=1

# NOTE :
# to install full anaconda  distribution use :
# conda install anaconda

# to create a new python2 env 'test_env'
# conda create -n test_env python=2

# to switch to new python env :
# source activate test_env
# to desactivate new python env :
# deactivate test_env

function feature_miniconda() {
	FEAT_NAME=miniconda
	FEAT_LIST_SCHEMA="4_2_12_PYTHON3@x64:binary 4_2_12_PYTHON3@x86:binary 4_2_12_PYTHON2@x64:binary 4_2_12_PYTHON2@x86:binary 4_1_11_PYTHON2@x64:binary 4_1_11_PYTHON2@x86:binary 4_1_11_PYTHON3@x64:binary 4_1_11_PYTHON3@x86:binary"
	FEAT_DEFAULT_VERSION=4_2_12_PYTHON2
	FEAT_DEFAULT_ARCH=x64
	FEAT_DEFAULT_FLAVOUR="binary"
}


function feature_miniconda_4_2_12_PYTHON3() {
	FEAT_VERSION=4_2_12_PYTHON3

	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=
	FEAT_SOURCE_URL_FILENAME=
	FEAT_SOURCE_URL_PROTOCOL=

	if [ "$STELLA_CURRENT_PLATFORM" == "darwin" ]; then
		FEAT_BINARY_URL_x86=
		FEAT_BINARY_URL_FILENAME_x86=
		FEAT_BINARY_URL_PROTOCOL_x86=

		FEAT_BINARY_URL_x64=https://repo.continuum.io/miniconda/Miniconda3-4.2.12-MacOSX-x86_64.sh
		FEAT_BINARY_URL_FILENAME_x64=Miniconda3-4.2.12-MacOSX-x86_64.sh
		FEAT_BINARY_URL_PROTOCOL_x64=HTTP
	fi

	if [ "$STELLA_CURRENT_PLATFORM" == "linux" ]; then
		FEAT_BINARY_URL_x86=https://repo.continuum.io/miniconda/Miniconda3-4.2.12-Linux-x86.sh
		FEAT_BINARY_URL_FILENAME_x86=Miniconda3-4.2.12-Linux-x86.sh
		FEAT_BINARY_URL_PROTOCOL_x86=HTTP

		FEAT_BINARY_URL_x64=https://repo.continuum.io/miniconda/Miniconda3-4.2.12-Linux-x86_64.sh
		FEAT_BINARY_URL_FILENAME_x64=Miniconda3-4.2.12-Linux-x86_64.sh
		FEAT_BINARY_URL_PROTOCOL_x64=HTTP
	fi

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=


	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/conda
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin

}


function feature_miniconda_4_2_12_PYTHON2() {
	FEAT_VERSION=4_2_12_PYTHON2

	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=
	FEAT_SOURCE_URL_FILENAME=
	FEAT_SOURCE_URL_PROTOCOL=

	if [ "$STELLA_CURRENT_PLATFORM" == "darwin" ]; then
		FEAT_BINARY_URL_x86=
		FEAT_BINARY_URL_FILENAME_x86=
		FEAT_BINARY_URL_PROTOCOL_x86=

		FEAT_BINARY_URL_x64=https://repo.continuum.io/miniconda/Miniconda2-4.2.12-MacOSX-x86_64.sh
		FEAT_BINARY_URL_FILENAME_x64=Miniconda2-4.2.12-MacOSX-x86_64.sh
		FEAT_BINARY_URL_PROTOCOL_x64=HTTP
	fi

	if [ "$STELLA_CURRENT_PLATFORM" == "linux" ]; then
		FEAT_BINARY_URL_x86=https://repo.continuum.io/miniconda/Miniconda2-4.2.12-Linux-x86.sh
		FEAT_BINARY_URL_FILENAME_x86=Miniconda3-4.2.12-Linux-x86.sh
		FEAT_BINARY_URL_PROTOCOL_x86=HTTP

		FEAT_BINARY_URL_x64=https://repo.continuum.io/miniconda/Miniconda2-4.2.12-Linux-x86_64.sh
		FEAT_BINARY_URL_FILENAME_x64=Miniconda3-4.2.12-Linux-x86_64.sh
		FEAT_BINARY_URL_PROTOCOL_x64=HTTP
	fi

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=


	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/conda
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin

}

function feature_miniconda_4_1_11_PYTHON3() {
	FEAT_VERSION=4_1_11_PYTHON3

	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=
	FEAT_SOURCE_URL_FILENAME=
	FEAT_SOURCE_URL_PROTOCOL=

	if [ "$STELLA_CURRENT_PLATFORM" == "darwin" ]; then
		FEAT_BINARY_URL_x86=
		FEAT_BINARY_URL_FILENAME_x86=
		FEAT_BINARY_URL_PROTOCOL_x86=

		FEAT_BINARY_URL_x64=https://repo.continuum.io/miniconda/Miniconda3-4.1.11-MacOSX-x86_64.sh
		FEAT_BINARY_URL_FILENAME_x64=Miniconda3-4.1.11-MacOSX-x86_64.sh
		FEAT_BINARY_URL_PROTOCOL_x64=HTTP
	fi

	if [ "$STELLA_CURRENT_PLATFORM" == "linux" ]; then
		FEAT_BINARY_URL_x86=https://repo.continuum.io/miniconda/Miniconda3-4.1.11-Linux-x86.sh
		FEAT_BINARY_URL_FILENAME_x86=Miniconda3-4.1.11-Linux-x86.sh
		FEAT_BINARY_URL_PROTOCOL_x86=HTTP

		FEAT_BINARY_URL_x64=https://repo.continuum.io/miniconda/Miniconda3-4.1.11-Linux-x86_64.sh
		FEAT_BINARY_URL_FILENAME_x64=Miniconda3-4.1.11-Linux-x86_64.sh
		FEAT_BINARY_URL_PROTOCOL_x64=HTTP
	fi

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=


	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/conda
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin

}


function feature_miniconda_4_1_11_PYTHON2() {
	FEAT_VERSION=4_1_11_PYTHON2

	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=
	FEAT_SOURCE_URL_FILENAME=
	FEAT_SOURCE_URL_PROTOCOL=

	if [ "$STELLA_CURRENT_PLATFORM" == "darwin" ]; then
		FEAT_BINARY_URL_x86=
		FEAT_BINARY_URL_FILENAME_x86=
		FEAT_BINARY_URL_PROTOCOL_x86=

		FEAT_BINARY_URL_x64=https://repo.continuum.io/miniconda/Miniconda2-4.1.11-MacOSX-x86_64.sh
		FEAT_BINARY_URL_FILENAME_x64=Miniconda2-4.1.11-MacOSX-x86_64.sh
		FEAT_BINARY_URL_PROTOCOL_x64=HTTP
	fi

	if [ "$STELLA_CURRENT_PLATFORM" == "linux" ]; then
		FEAT_BINARY_URL_x86=https://repo.continuum.io/miniconda/Miniconda2-4.1.11-Linux-x86.sh
		FEAT_BINARY_URL_FILENAME_x86=Miniconda2-4.1.11-Linux-x86.sh
		FEAT_BINARY_URL_PROTOCOL_x86=HTTP

		FEAT_BINARY_URL_x64=https://repo.continuum.io/miniconda/Miniconda2-4.1.11-Linux-x86_64.sh
		FEAT_BINARY_URL_FILENAME_x64=Miniconda2-4.1.11-Linux-x86_64.sh
		FEAT_BINARY_URL_PROTOCOL_x64=HTTP
	fi

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=


	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/conda
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin

}

function feature_miniconda_install_binary() {
	__get_resource "$FEAT_NAME" "$FEAT_BINARY_URL" "$FEAT_BINARY_URL_PROTOCOL" "$FEAT_INSTALL_ROOT" "DEST_ERASE STRIP"
	cd "$FEAT_INSTALL_ROOT"
	bash "$FEAT_BINARY_URL_FILENAME" -p $FEAT_INSTALL_ROOT -b -f
	rm -f "$FEAT_INSTALL_ROOT/$FEAT_BINARY_URL_FILENAME"

}


fi
