#!/bin/bash
# Usage :
# stella-bridge.sh standalone [install path] --- Path where to install STELLA the system. If not provided use ./lib-stella by default
# stella-bridge.sh bootstrap [install path] --- boostrap a project based on stella. Provide an absolute or relative to app path where to install STELLA the system. If not provided, use setted value in link file (.-stella-link.sh) or in ./lib-stella by default
#										after installing stella, it will set the project for use stella (if not already done)


_STELLA_CURRENT_FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ "$_STELLA_CURRENT_RUNNING_DIR" == "" ]; then
     _STELLA_CURRENT_RUNNING_DIR="$( cd "$( dirname "." )" && pwd )"
fi

function ___rel_to_abs_path() {
	local _rel_path=$1
	local _abs_root_path=$2


	case $_rel_path in
		/*)
			# path is already absolute
			echo "$_rel_path"
			;;
		*)
			if [ "$_abs_root_path" == "" ]; then
				# relative to current path
				if [ -f "$_rel_path" ]; then
					echo "$(cd "$_rel_path" && pwd )"
				else
					echo "$_rel_path"
				fi
			else
				# relative to a given absolute path
				if [ -f "$_abs_root_path/$_rel_path" ]; then
					echo "$(cd "$_abs_root_path/$_rel_path" && pwd )"
				else
					echo "$_abs_root_path/$_rel_path"
				fi
			fi
			;;
	esac
}

function __get_stella() {
	local _ver=$1
	local _path=$2

	if [ "$_ver" == "git" ]; then
		git clone https://bitbucket.org/StudioEtrange/lib-stella.git "$_path"
	else
		curl -L -o "$_path"/$stella-nix-"$_ver".gz.sh http://studio-etrange.org/stella-nix-"$_ver".gz.sh
		chmod +x "$_path"/$stella-nix-"$_ver".gz.sh
		./"$_path"/$stella-nix-"$_ver".gz.sh
		rm -f "$_path"/$stella-nix-"$_ver".gz.sh
	fi
}


# Install stella in standalone ------------------
function standalone() {
	
	[ "$PROVIDED_PATH" == "" ] && PROVIDED_PATH=$_STELLA_CURRENT_RUNNING_DIR/lib-stella	

	_STELLA_INSTALL_PATH=$(___rel_to_abs_path "$PROVIDED_PATH" "$_STELLA_CURRENT_RUNNING_DIR")

	if [ ! -f "$_STELLA_INSTALL_PATH/stella.sh" ]; then
		__get_stella "git" "$_STELLA_INSTALL_PATH"
	fi

	source "$_STELLA_INSTALL_PATH/conf.sh"
	
	__ask_install_system_requirements
}


# Bootstrap a stella project ------------------
function bootstrap() {

	IS_STELLA_LINK_FILE="FALSE"
	IS_STELLA_LINKED="FALSE"
	STELLA_ROOT=

	[ "$PROVIDED_PATH" == "" ] && PROVIDED_PATH=$_STELLA_CURRENT_RUNNING_DIR/lib-stella


	# Check if APP/PROJECT in current dir is linked to STELLA -------------------------
	if [ -f "$_STELLA_CURRENT_RUNNING_DIR/stella-link.sh" ]; then
		IS_STELLA_LINK_FILE="TRUE"
		source "$_STELLA_CURRENT_RUNNING_DIR/stella-link.sh"
		if [ ! "$STELLA_ROOT" == "" ]; then
			if [ -f "$STELLA_ROOT/stella.sh" ]; then
				IS_STELLA_LINKED="TRUE"
			fi
		fi
	fi

	if [ "$IS_STELLA_LINKED" == "TRUE" ]; then
		echo "** This app/project is linked to a STELLA installation located in $STELLA_ROOT"
		source "$STELLA_ROOT/conf.sh"
		
	else

		if [ "$IS_STELLA_LINK_FILE" == "TRUE" ]; then
			# install STELLA into STELLA_ROOT defined in link file
			_STELLA_INSTALL_PATH=$(___rel_to_abs_path "$STELLA_ROOT" "$_STELLA_CURRENT_RUNNING_DIR")
		else
			# install STELLA into default path
			_STELLA_INSTALL_PATH=$(___rel_to_abs_path "$PROVIDED_PATH" "$_STELLA_CURRENT_RUNNING_DIR")
		fi

		if [ ! -f "$_STELLA_INSTALL_PATH/stella.sh" ]; then
			__get_stella "git" "$_STELLA_INSTALL_PATH"
		fi
		
		source "$_STELLA_INSTALL_PATH/conf.sh"

	fi

	__ask_install_system_requirements
	__ask_init_app

}


# MAIN ------------------
ACTION=$1
PROVIDED_PATH=$2


# Switch mode ------------------
case $ACTION in
	bootstrap)
		bootstrap
		;;
	standalone)
		standalone
		;;
esac


