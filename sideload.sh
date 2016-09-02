#!/bin/bash
 #
 # Copyright © 2014, Monish Kapadia "assasin.monish" <monishk10@yahoo.com>
 #
 # Custom Flash script for ease.
 #
 # This software is licensed under the terms of the GNU General Public
 # License version 2, as published by the Free Software Foundation, and
 # may be copied, distributed, and modified under those terms.
 #
 # This program is distributed in the hope that it will be useful,
 # but WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 # GNU General Public License for more details.
 #
 # Please maintain this if you use this script or any part of it
 #

###########################################################################

#adb
adb reboot recovery

#Path
BUILD_PATH="/home/monish/kernel/builds"

#Branch entry
while read -p "Which branch(cm/miui)? " mchoice
do
case "$mchoice" in
	cm|CM )
		BUILD_BRANCH="cm"
		echo "CM Branch."
		break
		;;
	m|M )
		BUILD_BRANCH="miui"
		echo "MIUI Branch."		
		break
		;;
	* )
		echo
		echo "Invalid try again!"
		echo
		;;
esac
done

#Time entry of zip file
read -p "Time? " time
echo "$time"

function adbstart {
		echo
		adb devices
		adb kill-server
		sudo adb start-server
		adb devices
}

function sideloadstart {
		echo
		cd $BUILD_PATH
		adb sideload ASSASIN-$BUILD_BRANCH-$(date +%d-%m)_$time.zip
}

adbstart
sideloadstart
