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
sudo apt-get install libdevmapper-dev
sudo apt-get install pkg-config
# remove redundant libnl-dev
sudo apt-get install libyajl-dev  libdevmapper-dev libnl-dev libpciaccess-dev make
sudo aptitude install libnl-3-dev
sudo apt-get install uuid-dev
#export GNULIB_SRCDIR=/path/to/gnulib
./autogen.sh
make
sudo make install

# install vagrant libvirt plugin
sudo apt-get install libxslt-dev libxml2-dev libvirt-dev zlib1g-dev ruby-dev
vagrant plugin install vagrant-libvirt
