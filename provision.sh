#!/bin/bash

# move into ~/src directory
mkdir -p ~/src
cd ~/src

# install vagrant and qemu

sudo apt-get install vagrant
sudo apt-get install qemu



# download and install custom libvirt
git clone git://libvirt.org/libvirt.git
cd libvirt
sudo apt-get install libtool
sudo apt-get install gnulib
sudo apt-get install libxml2-utils
sudo apt-get install xsltproc
#export GNULIB_SRCDIR=/path/to/gnulib
./autogen.sh

# install vagrant libvirt plugin
sudo apt-get install libxslt-dev libxml2-dev libvirt-dev zlib1g-dev ruby-dev
vagrant plugin install vagrant-libvirt
