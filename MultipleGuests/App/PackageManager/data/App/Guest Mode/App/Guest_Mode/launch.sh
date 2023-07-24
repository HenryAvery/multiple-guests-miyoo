#!/bin/sh
progdir=`cd -- "$(dirname "$0")" >/dev/null 2>&1; pwd -P`

cd $progdir

# Save current time
./saveTime.sh
sync

if [ -d /mnt/SDCARD/Saves/GuestProfile ] ; then
	# The main profile is the current one
	cp ./data/config1.json ./config.json
	mv /mnt/SDCARD/Saves/CurrentProfile /mnt/SDCARD/Saves/MainProfile
	mv /mnt/SDCARD/Saves/GuestProfile /mnt/SDCARD/Saves/CurrentProfile
elif [ -d /mnt/SDCARD/Saves/GuestProfile2 ] ; then
	# The guestprofile is the current one
	cp ./data/config2.json ./config.json
	mv /mnt/SDCARD/Saves/CurrentProfile /mnt/SDCARD/Saves/GuestProfilebackup
	mv /mnt/SDCARD/Saves/GuestProfile2 /mnt/SDCARD/Saves/CurrentProfile
elif [ -d /mnt/SDCARD/Saves/GuestProfile3 ] ; then
	# The guestprofile is the current one
	cp ./data/config3.json ./config.json
	mv /mnt/SDCARD/Saves/CurrentProfile /mnt/SDCARD/Saves/GuestProfilebackup2
	mv /mnt/SDCARD/Saves/GuestProfile3 /mnt/SDCARD/Saves/CurrentProfile
elif [ -d /mnt/SDCARD/Saves/GuestProfile4 ] ; then
	# The guestprofile is the current one
	cp ./data/config4.json ./config.json
	mv /mnt/SDCARD/Saves/CurrentProfile /mnt/SDCARD/Saves/GuestProfilebackup3
	mv /mnt/SDCARD/Saves/GuestProfile4 /mnt/SDCARD/Saves/CurrentProfile
elif [ -d /mnt/SDCARD/Saves/GuestProfile5 ] ; then
	# The guestprofile is the current one
	cp ./data/config5.json ./config.json
	mv /mnt/SDCARD/Saves/CurrentProfile /mnt/SDCARD/Saves/GuestProfilebackup4
	mv /mnt/SDCARD/Saves/GuestProfile5 /mnt/SDCARD/Saves/CurrentProfile
elif [ -d /mnt/SDCARD/Saves/GuestProfilebackup4 ] ; then
	# The guestprofile is the current one
	cp ./data/configOFF.json ./config.json
	mv /mnt/SDCARD/Saves/CurrentProfile /mnt/SDCARD/Saves/GuestProfile5
	mv /mnt/SDCARD/Saves/MainProfile /mnt/SDCARD/Saves/CurrentProfile
	mv /mnt/SDCARD/Saves/GuestProfilebackup /mnt/SDCARD/Saves/GuestProfile
	mv /mnt/SDCARD/Saves/GuestProfilebackup2 /mnt/SDCARD/Saves/GuestProfile2
	mv /mnt/SDCARD/Saves/GuestProfilebackup3 /mnt/SDCARD/Saves/GuestProfile3
	mv /mnt/SDCARD/Saves/GuestProfilebackup4 /mnt/SDCARD/Saves/GuestProfile4
elif [ -d /mnt/SDCARD/Saves/GuestProfilebackup3 ] ; then
	# The guestprofile is the current one
	cp ./data/configOFF.json ./config.json
	mv /mnt/SDCARD/Saves/CurrentProfile /mnt/SDCARD/Saves/GuestProfile4
	mv /mnt/SDCARD/Saves/MainProfile /mnt/SDCARD/Saves/CurrentProfile
	mv /mnt/SDCARD/Saves/GuestProfilebackup /mnt/SDCARD/Saves/GuestProfile
	mv /mnt/SDCARD/Saves/GuestProfilebackup2 /mnt/SDCARD/Saves/GuestProfile2
	mv /mnt/SDCARD/Saves/GuestProfilebackup3 /mnt/SDCARD/Saves/GuestProfile3
elif [ -d /mnt/SDCARD/Saves/GuestProfilebackup2 ] ; then
	# The guestprofile is the current one
	cp ./data/configOFF.json ./config.json
	mv /mnt/SDCARD/Saves/CurrentProfile /mnt/SDCARD/Saves/GuestProfile3
	mv /mnt/SDCARD/Saves/MainProfile /mnt/SDCARD/Saves/CurrentProfile
	mv /mnt/SDCARD/Saves/GuestProfilebackup /mnt/SDCARD/Saves/GuestProfile
	mv /mnt/SDCARD/Saves/GuestProfilebackup2 /mnt/SDCARD/Saves/GuestProfile2
elif [ -d /mnt/SDCARD/Saves/GuestProfilebackup ] ; then
	# The guestprofile is the current one
	cp ./data/configOFF.json ./config.json
	mv /mnt/SDCARD/Saves/CurrentProfile /mnt/SDCARD/Saves/GuestProfile2
	mv /mnt/SDCARD/Saves/MainProfile /mnt/SDCARD/Saves/CurrentProfile
	mv /mnt/SDCARD/Saves/GuestProfilebackup /mnt/SDCARD/Saves/GuestProfile
elif [ -d /mnt/SDCARD/Saves/MainProfile ] ; then
	# The guestprofile is the current one
	cp ./data/configOFF.json ./config.json
	mv /mnt/SDCARD/Saves/CurrentProfile /mnt/SDCARD/Saves/GuestProfile
	mv /mnt/SDCARD/Saves/MainProfile /mnt/SDCARD/Saves/CurrentProfile
fi

# Load current time
./loadTime.sh
