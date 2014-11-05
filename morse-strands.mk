##############################################################################
### CONFIGURATION ###
# package name
PKG_NAME:=morse-blender-2.65-py-3.3

# version	
VERSION:=0.1

# Debian increment (to be bumped when the same version is packaged again)	
DEBINC:=1

# architecture to be build
ARCH:=amd64

# license (apache|artistic|bsd|gpl|gpl2|gpl3|lgpl|lgpl2|lgpl3|x11)
LICENSE:=gpl3

# maintainer email address
MAINTAINER:=marc@hanheide.net

# all deb packages needed to build this
APT_INSTALL:=cmake git zlib1g-dev ros-hydro-desktop-full ros-hydro-rospy python-rosinstall git-cvs python-rospkg

## Install prefix WITHOUT leading '/', e.g. 'opt' for '/opt'
INSTALL_PREFIX:=opt

ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

## This is the install command that will install the package unter the INSTALL_PREFIX 
INSTALL_COMMAND=(mkdir -p $(GLOBAL_ROOT) && cd $(GLOBAL_ROOT) && bash $(ROOT_DIR)/morse-setup.sh)

##############################################################################

include dh_bin_wizard.mk
