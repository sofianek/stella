if [ ! "$_SOCAT_INCLUDED_" == "1" ]; then 
_SOCAT_INCLUDED_=1

# OK

function feature_socat() {
	FEAT_NAME=socat
	FEAT_LIST_SCHEMA="1_7_3_0:source"
	FEAT_DEFAULT_VERSION=1_7_3_0
	FEAT_DEFAULT_ARCH=
	FEAT_DEFAULT_FLAVOUR="source"
}

function feature_socat_1_7_3_0() {
	FEAT_VERSION=1_7_3_0
	
	FEAT_SOURCE_DEPENDENCIES="openssl#1_0_2d"
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=http://www.dest-unreach.org/socat/download/socat-1.7.3.0.tar.gz
	FEAT_SOURCE_URL_FILENAME=socat-1.7.3.0.tar.gz
	FEAT_SOURCE_URL_PROTOCOL=HTTP_ZIP

	FEAT_BINARY_URL=
	FEAT_BINARY_URL_FILENAME=
	FEAT_BINARY_URL_PROTOCOL=
	
	FEAT_SOURCE_CALLBACK=feature_socat_link
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=

	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/socat
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin
	
}

function feature_socat_link() {
	__link_feature_library "openssl#1_0_2d"
}

function feature_socat_install_source() {
	INSTALL_DIR="$FEAT_INSTALL_ROOT"
	SRC_DIR="$STELLA_APP_FEATURE_ROOT/$FEAT_NAME-$FEAT_VERSION-src"
	

	AUTO_INSTALL_CONF_FLAG_PREFIX=
	AUTO_INSTALL_CONF_FLAG_POSTFIX=
	#AUTO_INSTALL_CONF_FLAG_POSTFIX="--disable-dependency-tracking"
	AUTO_INSTALL_BUILD_FLAG_PREFIX=
	AUTO_INSTALL_BUILD_FLAG_POSTFIX=

	__feature_callback
	
	__auto_build "socat" "$FEAT_SOURCE_URL" "$FEAT_SOURCE_URL_PROTOCOL" "$SRC_DIR" "$INSTALL_DIR" "CONF_TOOL configure BUILD_TOOL make"


}


fi