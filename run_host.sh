#/bin/bash
#
# Script to download and install Termux
# Will use ADB
# May require you to enable "install untrusted APK"
# Run this script on Host machine
# adb should be installed

# make sure used has things
echo "Make sure one device is connected over ADB"
read -n 1 -r -s -p $'Make sure you have ADB and WGET installed and runnable. \n\nPress ENTER to continue...\n'


# skip download if file exists
echo "Downloading Termux APK locally..."
mkdir downloads
wget -nc -O downloads/com.termux_92.apk https://f-droid.org/repo/com.termux_92.apk

# install the downloaded file into device
echo "Installing APK on Android device..."
adb install downloads/com.termux_92.apk


# # TODO: Push the Termux host script onto the device
# echo "Copying scripts to the Android device..."
# sudo adb push run_termux.sh /data/data/com.termux/files/home

