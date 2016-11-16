# https://github.com/openshift/origin/releases
if [ ! "$_cobbler_INCLUDED_" == "1" ]; then
_cobbler_INCLUDED_=1

function feature_cobbler() {
	FEAT_NAME=cobbler
	FEAT_LIST_SCHEMA="2_6_11:source"
	FEAT_DEFAULT_VERSION=2_6_11
	FEAT_DEFAULT_ARCH=
	FEAT_DEFAULT_FLAVOUR="source"
}

function feature_cobbler_2_6_11() {
	FEAT_VERSION=2_6_11
	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=https://github.com/cobbler/cobbler/archive/v2.6.11.tar.gz
	FEAT_SOURCE_URL_FILENAME=cobbler-v2.6.11.tar.gz
	FEAT_SOURCE_URL_PROTOCOL=HTTP_ZIP

	FEAT_BINARY_URL=
	FEAT_BINARY_URL_FILENAME=
	FEAT_BINARY_URL_PROTOCOL=

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=


	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/client/bin/cobbler
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/client/bin

}



function feature_cobbler_install_source() {
	__get_resource "$FEAT_NAME" "$FEAT_SOURCE_URL" "$FEAT_SOURCE_URL_PROTOCOL" "$FEAT_INSTALL_ROOT" "STRIP FORCE_NAME $FEAT_SOURCE_URL_FILENAME"
}


fi
