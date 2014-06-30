#!/bin/bash
_INCLUDED_FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
_CALLING_FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[1]}" )" && pwd )"
source $_INCLUDED_FILE_DIR/conf.sh




# MAIN -----------------------------------------------------------------------------------

# arguments
PARAMETERS="
DOMAIN=                          'domain'     		a           'app tools virtual'         										   				Action domain.
ACTION=                         'action'   					a           'init get-data get-assets setup-env install create-env run-env stop-env destroy-env create-box get-box destroy-box'         	Action to compute.
ID=							 ''								s 			'' 						Data or Assets or Env or Box ID.
"
OPTIONS="	
FORCE=''                       	'f'    		''            		b     		0     		'1'           			Force operation.
ARCH='x64'						'a'			''					a			0			'x86 x64 arm'			Select architecture.
VERBOSE=$DEFAULT_VERBOSE_MODE		'v'			'level'				i			0			'0:2'					Verbose level : 0 (default) no verbose, 1 verbose, 2 ultraverbose.
"

argparse "$0" "$OPTIONS" "$PARAMETERS" "Lib Stella" "Lib Stella" "" "$@"

# common initializations
init_env



# --------------- APP ----------------------------
if [ "$DOMAIN" == "app" ]; then

	if [ "$ACTION" == "init" ]; then
		sudo $STELLA_ROOT/init.sh
		init_app $ID
		$STELLA_ROOT/tools.sh install default
	else
		select_app_properties
		if [ ! -f "$PROPERTIES" ]; then
			echo "** ERROR properties file does not exist"
			exit
		fi

		get_all_properties

		case $ACTION in
		    get-data)
				if [ "$ID" == "all" ]; then
					get_all_data
				else
					get_data $ID
				fi
				;;
			get-assets)
				if [ "$ID" == "all" ]; then
					get_all_assets
				else
					get_assets $ID
				fi
				;;
			setup-env)
				if [ "$ID" == "all" ]; then
					setup_all_env
				else
					setup_env $ID
				fi
				;;
			*)
				echo "use option --help for help"
				;;
		esac
	fi
fi


# --------------- TOOLS ----------------------------
if [ "$DOMAIN" == "tools" ]; then
	_tools_options="--arch=$ARCH -v $VERBOSE_MODE"
	if [ "$FORCE" == "1" ]; then
		_tools_options="$_tools_options -f"
	fi
	select_app_properties
	get_all_properties

	if [ "$ACTION" == "install" ]; then
		$STELLA_ROOT/tools.sh install $ID $_tools_options
	fi
fi


# --------------- VIRTUAL ----------------------------
# TODO

echo "** END **"