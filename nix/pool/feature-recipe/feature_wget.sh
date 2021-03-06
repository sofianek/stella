if [ ! "$_WGET_INCLUDED_" = "1" ]; then
_WGET_INCLUDED_=1

# OK


feature_wget() {
	FEAT_NAME=wget
	FEAT_LIST_SCHEMA="1_15:source"
	FEAT_DEFAULT_ARCH=
	FEAT_DEFAULT_FLAVOUR="source"
}

feature_wget_1_15() {
	FEAT_VERSION=1_15

	FEAT_SOURCE_DEPENDENCIES="openssl#1_0_2d zlib#1_2_8"
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz
	FEAT_SOURCE_URL_FILENAME=wget-1.15.tar.gz
	FEAT_SOURCE_URL_PROTOCOL=HTTP_ZIP

	FEAT_BINARY_URL=
	FEAT_BINARY_URL_FILENAME=
	FEAT_BINARY_URL_PROTOCOL=

	FEAT_SOURCE_CALLBACK=feature_wget_link
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=

	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/wget
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin

}

feature_wget_link() {
	__link_feature_library "openssl#1_0_2d"
	__link_feature_library "zlib#1_2_8" "LIBS_NAME z"
}

feature_wget_install_source() {
	INSTALL_DIR="$FEAT_INSTALL_ROOT"
	SRC_DIR="$STELLA_APP_FEATURE_ROOT/$FEAT_NAME-$FEAT_VERSION-src"

	__set_toolset "STANDARD"


	__get_resource "$FEAT_NAME" "$FEAT_SOURCE_URL" "$FEAT_SOURCE_URL_PROTOCOL" "$SRC_DIR" "DEST_ERASE STRIP"

	AUTO_INSTALL_CONF_FLAG_PREFIX=
	AUTO_INSTALL_CONF_FLAG_POSTFIX="--disable-dependency-tracking --with-ssl=openssl"
	AUTO_INSTALL_BUILD_FLAG_PREFIX=
	AUTO_INSTALL_BUILD_FLAG_POSTFIX=

	__feature_callback

	__auto_build "$FEAT_NAME" "$SRC_DIR" "$INSTALL_DIR"


}



fi
