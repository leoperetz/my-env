
sudo ./input-wacom-dkms/input-wacom-dkms.sh uninstall
sudo apt-get install linux-headers-`uname -r`
sudo ./input-wacom-dkms/input-wacom-dkms.sh install


--- old


use instead:


sudo add-apt-repository ppa:doctormo/wacom-plus
sudo apt-get update
sudo apt-get dist-upgrade

Then, In order to install the updated kernel module for Bamboo Fun/Newer tablets:

sudo apt-get install linux-headers-`uname -r`
sudo apt-get install wacom-dkms

Restart the computer for changes to take effect.


https://help.ubuntu.com/community/Wacom/LatestDriver

-

sudo apt-get update
sudo apt-get install wacom-dkms
sudo apt-get dist-upgrade

-

xinput list | grep Wacom
xinput watch-props <device id>
Device Accel Constant Deceleration (284):   1.000000
xinput set-prop <device id> <attribute id> <deceleration factor>

An example:
xinput set-prop 13 284 2.5 && xinput set-prop 15 284 2.5

xinput set-prop 14 263 2.5 && xinput set-prop 15 263 2.5
