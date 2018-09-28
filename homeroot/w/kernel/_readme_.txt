
1)
sudo apt-get install git build-essential kernel-package fakeroot libncurses5-dev ketchup
sudo apt-get build-dep linux-image-`uname -r`

2)
git clone git://kernel.ubuntu.com/ubuntu/ubuntu-bionic.git

# Make Kernel config from current Kernel config:
yes "" | make oldconfig

3)
# https://askubuntu.com/questions/1048332/recompile-linux-kernel-of-ubuntu-18-04-with-patch-for-intel-display-drivers

# Disable ZFS if it's not required:
Set do_zfs = false in debian.master/rules.d/amd64.mk

# apply path for wacom:
my-ctl-472.patch

# set CPU type & some other what you want:
make menuconfig

# Build Kernel:
make deb-pkg

# if error while make:
cp debian/scripts/retpoline-extract-one scripts/ubuntu-retpoline-extract-one

# install new kernel
dpkg -i *.deb

# update Grub:
sudo update-grub

reboot now

# after reboot try to install wacom dkms
