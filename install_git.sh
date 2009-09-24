#!/bin/bash

# Download and install Git

version=1.6.4.4
cd /tmp
wget http://www.kernel.org/pub/software/scm/git/git-$version.tar.bz2
wget http://www.kernel.org/pub/software/scm/git/git-manpages-$version.tar.bz2

#install git
tar -xf git-$version.tar.bz2
cd git-$version
./configure --prefix=/usr/local
make all
sudo make install

# install manpages
cd /tmp
sudo tar -xv -C /usr/local/share/man -f git-manpages-$version.tar.bz2
