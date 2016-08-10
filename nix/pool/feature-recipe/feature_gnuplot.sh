if [ ! "$_gnuplot_INCLUDED_" == "1" ]; then
_gnuplot_INCLUDED_=1

# TODO review on macos

function feature_gnuplot() {
	FEAT_NAME=gnuplot

	FEAT_LIST_SCHEMA="5_0_3:source"
	FEAT_DEFAULT_VERSION=5_0_3
	FEAT_DEFAULT_ARCH=
	FEAT_DEFAULT_FLAVOUR="source"
}

function feature_gnuplot_5_0_3() {
	FEAT_VERSION=5_0_3


	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=http://downloads.sourceforge.net/project/gnuplot/gnuplot/5.0.3/gnuplot-5.0.3.tar.gz
	FEAT_SOURCE_URL_FILENAME=gnuplot-5.0.3.tar.gz
	FEAT_SOURCE_URL_PROTOCOL=HTTP_ZIP

	FEAT_BINARY_URL=
	FEAT_BINARY_URL_FILENAME=
	FEAT_BINARY_URL_PROTOCOL=

	FEAT_SOURCE_CALLBACK=feature_gnuplot_link
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=

	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/gnuplot
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin

}


function feature_gnuplot_install_source() {
	INSTALL_DIR="$FEAT_INSTALL_ROOT"
	SRC_DIR="$STELLA_APP_FEATURE_ROOT/$FEAT_NAME-$FEAT_VERSION-src"

	__set_toolset "STANDARD"

	__get_resource "$FEAT_NAME" "$FEAT_SOURCE_URL" "$FEAT_SOURCE_URL_PROTOCOL" "$SRC_DIR" "DEST_ERASE STRIP"

	AUTO_INSTALL_CONF_FLAG_PREFIX=
	AUTO_INSTALL_CONF_FLAG_POSTFIX=
	AUTO_INSTALL_BUILD_FLAG_PREFIX=
	AUTO_INSTALL_BUILD_FLAG_POSTFIX=


	__feature_callback

	__auto_build "$FEAT_NAME" "$SRC_DIR" "$INSTALL_DIR" "SOURCE_KEEP"

}

fi
