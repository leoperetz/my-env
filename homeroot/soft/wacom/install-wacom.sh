#!/bin/bash

sudo ./input-wacom-dkms/input-wacom-dkms.sh uninstall
# sudo apt-get install linux-headers-`uname -r`
sudo ./input-wacom-dkms/input-wacom-dkms.sh install

