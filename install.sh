#!/bin/bash
set -e

function createBackupIfNecessary {
	if [ ! -f "$1.bak" ]; then
		sudo cp $1 $1.bak
		echo -e "\e[92mcreated backup\e[0m: $1.bak"
	fi
}

function copy {
	sudo cp -f $1 $2
	echo -e "\e[92mcopied\e[0m: $1 to $2"
}

function symlink {
	sudo ln -sf $1 $2
	echo -e "\e[93mcreated symlink\e[0m"
	echo "target: $1"
	echo "link name: $2"
}

createBackupIfNecessary "/usr/share/X11/xkb/symbols/cz"
createBackupIfNecessary "/usr/share/X11/xkb/rules/base.lst"
createBackupIfNecessary "/usr/share/X11/xkb/rules/base.xml"

copy "cz" 	"/usr/share/X11/xkb/symbols/cz"
copy "base.lst" "/usr/share/X11/xkb/rules/base.lst"
copy "base.xml" "/usr/share/X11/xkb/rules/base.xml"

symlink "/usr/share/X11/xkb/rules/base.lst" "/usr/share/X11/xkb/rules/evdev.lst"
symlink "/usr/share/X11/xkb/rules/base.xml" "/usr/share/X11/xkb/rules/evdev.xml"
