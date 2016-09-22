if [ ! "$_SPARK_INCLUDED_" == "1" ]; then
_SPARK_INCLUDED_=1



function feature_spark() {
	FEAT_NAME=spark
	FEAT_LIST_SCHEMA="1_6_1:binary 1_6_1_HADOOP_2_6:binary 1_6_0:binary 1_6_0_HADOOP_2_4:binary 1_3_0_HADOOP_2_4:binary 1_3_1_HADOOP_2_4:binary 1_4_0_HADOOP_2_4:binary 1_4_1_HADOOP_2_4:binary 1_5_1_HADOOP_2_4:binary 1_5_2_HADOOP_2_4:binary 1_5_2_HADOOP_2_6:binary"
	FEAT_DEFAULT_VERSION=1_6_1_HADOOP_2_6
	FEAT_DEFAULT_ARCH=
	FEAT_DEFAULT_FLAVOUR="binary"
}

function feature_spark_env() {
	export SPARK_HOME=$FEAT_INSTALL_ROOT
}


function feature_spark_1_6_1_HADOOP_2_6() {
	FEAT_VERSION=1_6_1_HADOOP_2_4
	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=
	FEAT_SOURCE_URL_FILENAME=
	FEAT_SOURCE_URL_PROTOCOL=

	FEAT_BINARY_URL=http://archive.apache.org/dist/spark/spark-1.6.1/spark-1.6.1-bin-hadoop2.6.tgz
	FEAT_BINARY_URL_FILENAME=spark-1.6.0-bin-hadoop2.4.tgz
	FEAT_BINARY_URL_PROTOCOL=HTTP_ZIP

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=feature_spark_env


	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/spark-shell
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin:"$FEAT_INSTALL_ROOT"/sbin

}


function feature_spark_1_6_1() {
	FEAT_VERSION=1_6_1

	FEAT_BINARY_URL=http://archive.apache.org/dist/spark/spark-1.6.1/spark-1.6.1-bin-without-hadoop.tgz
	FEAT_BINARY_URL_FILENAME=spark-1.6.1-bin-without-hadoop.tgz
	FEAT_BINARY_URL_PROTOCOL=HTTP_ZIP

	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/spark-shell
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin:"$FEAT_INSTALL_ROOT"/sbin

}

function feature_spark_1_6_0() {
	FEAT_VERSION=1_6_0

	FEAT_BINARY_URL=http://archive.apache.org/dist/spark/spark-1.6.0/spark-1.6.0-bin-without-hadoop.tgz
	FEAT_BINARY_URL_FILENAME=spark-1.6.0-bin-without-hadoop.tgz
	FEAT_BINARY_URL_PROTOCOL=HTTP_ZIP

	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/spark-shell
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin:"$FEAT_INSTALL_ROOT"/sbin
}

function feature_spark_1_6_0_HADOOP_2_4() {
	FEAT_VERSION=1_6_0_HADOOP_2_4
	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=
	FEAT_SOURCE_URL_FILENAME=
	FEAT_SOURCE_URL_PROTOCOL=

	FEAT_BINARY_URL=http://archive.apache.org/dist/spark/spark-1.6.0/spark-1.6.0-bin-hadoop2.4.tgz
	FEAT_BINARY_URL_FILENAME=spark-1.6.0-bin-hadoop2.4.tgz
	FEAT_BINARY_URL_PROTOCOL=HTTP_ZIP

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=feature_spark_env


	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/spark-shell
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin:"$FEAT_INSTALL_ROOT"/sbin

}

function feature_spark_1_5_2_HADOOP_2_6() {
	FEAT_VERSION=1_5_2_HADOOP_2_6
	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=
	FEAT_SOURCE_URL_FILENAME=
	FEAT_SOURCE_URL_PROTOCOL=

	FEAT_BINARY_URL=http://archive.apache.org/dist/spark/spark-1.5.2/spark-1.5.2-bin-hadoop2.6.tgz
	FEAT_BINARY_URL_FILENAME=spark-1.5.2-bin-hadoop2.4.tgz
	FEAT_BINARY_URL_PROTOCOL=HTTP_ZIP

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=feature_spark_env


	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/spark-shell
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin:"$FEAT_INSTALL_ROOT"/sbin

}

function feature_spark_1_5_2_HADOOP_2_4() {
	FEAT_VERSION=1_5_2_HADOOP_2_4
	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=
	FEAT_SOURCE_URL_FILENAME=
	FEAT_SOURCE_URL_PROTOCOL=

	FEAT_BINARY_URL=http://archive.apache.org/dist/spark/spark-1.5.2/spark-1.5.2-bin-hadoop2.4.tgz
	FEAT_BINARY_URL_FILENAME=spark-1.5.2-bin-hadoop2.4.tgz
	FEAT_BINARY_URL_PROTOCOL=HTTP_ZIP

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=feature_spark_env


	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/spark-shell
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin:"$FEAT_INSTALL_ROOT"/sbin

}


function feature_spark_1_5_1_HADOOP_2_4() {
	FEAT_VERSION=1_5_1_HADOOP_2_4
	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=
	FEAT_SOURCE_URL_FILENAME=
	FEAT_SOURCE_URL_PROTOCOL=

	FEAT_BINARY_URL=http://archive.apache.org/dist/spark/spark-1.5.1/spark-1.5.1-bin-hadoop2.4.tgz
	FEAT_BINARY_URL_FILENAME=spark-1.5.1-bin-hadoop2.4.tgz
	FEAT_BINARY_URL_PROTOCOL=HTTP_ZIP

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=feature_spark_env


	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/spark-shell
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin:"$FEAT_INSTALL_ROOT"/sbin

}


function feature_spark_1_4_1_HADOOP_2_4() {
	FEAT_VERSION=1_4_1_HADOOP_2_4
	# embed his own scala version
	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=
	FEAT_SOURCE_URL_FILENAME=
	FEAT_SOURCE_URL_PROTOCOL=

	FEAT_BINARY_URL=http://archive.apache.org/dist/spark/spark-1.4.1/spark-1.4.1-bin-hadoop2.4.tgz
	FEAT_BINARY_URL_FILENAME=spark-1.4.1-bin-hadoop2.4.tgz
	FEAT_BINARY_URL_PROTOCOL=HTTP_ZIP

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=feature_spark_env


	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/spark-shell
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin:"$FEAT_INSTALL_ROOT"/sbin

}


function feature_spark_1_4_0_HADOOP_2_4() {
	FEAT_VERSION=1_4_0_HADOOP_2_4
	# embed his own scala version
	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=
	FEAT_SOURCE_URL_FILENAME=
	FEAT_SOURCE_URL_PROTOCOL=

	FEAT_BINARY_URL=http://archive.apache.org/dist/spark/spark-1.4.0/spark-1.4.0.tgz
	FEAT_BINARY_URL_FILENAME=spark-1.4.0-bin-hadoop2.4.tgz
	FEAT_BINARY_URL_PROTOCOL=HTTP_ZIP

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=feature_spark_env


	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/spark-shell
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin:"$FEAT_INSTALL_ROOT"/sbin

}



function feature_spark_1_3_0_HADOOP_2_4() {
	FEAT_VERSION=1_3_0_HADOOP_2_4
	# embed his own scala version
	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=
	FEAT_SOURCE_URL_FILENAME=
	FEAT_SOURCE_URL_PROTOCOL=

	FEAT_BINARY_URL=http://archive.apache.org/dist/spark/spark-1.3.0/spark-1.3.0-bin-hadoop2.4.tgz
	FEAT_BINARY_URL_FILENAME=spark-1.3.0-bin-hadoop2.4.tgz
	FEAT_BINARY_URL_PROTOCOL=HTTP_ZIP

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=feature_spark_env


	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/spark-shell
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin:"$FEAT_INSTALL_ROOT"/sbin

}

function feature_spark_1_3_1_HADOOP_2_4() {
	FEAT_VERSION=1_3_1_HADOOP_2_4
	# embed his own scala version
	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=
	FEAT_SOURCE_URL_FILENAME=
	FEAT_SOURCE_URL_PROTOCOL=

	FEAT_BINARY_URL=http://archive.apache.org/dist/spark/spark-1.3.1/spark-1.3.1-bin-hadoop2.4.tgz
	FEAT_BINARY_URL_FILENAME=spark-1.3.1-bin-hadoop2.4.tgz
	FEAT_BINARY_URL_PROTOCOL=HTTP_ZIP

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=feature_spark_env


	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/spark-shell
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin:"$FEAT_INSTALL_ROOT"/sbin

}



function feature_spark_install_binary() {
	__get_resource "$FEAT_NAME" "$FEAT_BINARY_URL" "$FEAT_BINARY_URL_PROTOCOL" "$FEAT_INSTALL_ROOT" "STRIP"

}


fi
