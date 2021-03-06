if [ ! "$_ZLIB_INCLUDED_" = "1" ]; then
_ZLIB_INCLUDED_=1

# OK


feature_zlib() {
	FEAT_NAME=zlib
	FEAT_LIST_SCHEMA="1_2_8:source 1_2_11:source"
	FEAT_DEFAULT_ARCH=
	FEAT_DEFAULT_FLAVOUR="source"
}


feature_zlib_1_2_11() {
	FEAT_VERSION=1_2_11
	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=https://github.com/madler/zlib/archive/v1.2.11.tar.gz
	FEAT_SOURCE_URL_FILENAME=zlib-v1.2.11.tar.gz
	FEAT_SOURCE_URL_PROTOCOL=HTTP_ZIP

	FEAT_BINARY_URL=
	FEAT_BINARY_URL_FILENAME=
	FEAT_BINARY_URL_PROTOCOL=

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=

	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/lib/libz.a
	FEAT_SEARCH_PATH=

}


feature_zlib_1_2_8() {
	FEAT_VERSION=1_2_8
	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=https://github.com/madler/zlib/archive/v1.2.8.tar.gz
	FEAT_SOURCE_URL_FILENAME=zlib-v1.2.8.tar.gz
	FEAT_SOURCE_URL_PROTOCOL=HTTP_ZIP

	FEAT_BINARY_URL=
	FEAT_BINARY_URL_FILENAME=
	FEAT_BINARY_URL_PROTOCOL=

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=

	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/lib/libz.a
	FEAT_SEARCH_PATH=

}



feature_zlib_install_source() {
	INSTALL_DIR="$FEAT_INSTALL_ROOT"
	SRC_DIR="$STELLA_APP_FEATURE_ROOT/$FEAT_NAME-$FEAT_VERSION-src"


	__set_toolset "STANDARD"


	__get_resource "$FEAT_NAME" "$FEAT_SOURCE_URL" "$FEAT_SOURCE_URL_PROTOCOL" "$SRC_DIR" "DEST_ERASE STRIP FORCE_NAME $FEAT_SOURCE_URL_FILENAME"


	AUTO_INSTALL_CONF_FLAG_PREFIX=
	# Note : this will build shared AND static
	AUTO_INSTALL_CONF_FLAG_POSTFIX="--shared"
	AUTO_INSTALL_BUILD_FLAG_PREFIX=
	AUTO_INSTALL_BUILD_FLAG_POSTFIX=

	__feature_callback

	# out of tree build do not work
	__auto_build "$FEAT_NAME" "$SRC_DIR" "$INSTALL_DIR" "NO_OUT_OF_TREE_BUILD"

}



fi
