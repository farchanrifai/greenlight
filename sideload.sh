#!/bin/bash
###########################################################################
#			          					  #
# Copyright © 2016, Monish Kapadia "assasin.monish" <monishk10@yahoo.com> #
#									  #
# Custom Flash script for ease.					          #
#									  #
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
