#/bin/bash
# jimbocfg.sh :: config for a new OS
# Includes commonly used apps, and assumes Debian system.
# Also configures a few date/time features and style features for Xubuntu

# Package string for basic installations
pkg_str="cmatrix tmux vim tree htop unzip monit git curl wget"

# TBA: sshd, mysql or postgresql, apache2, php

# Update
sudo apt-get update

# Initial app install
if [ "$1" = "adv" ]; then
	# sudo apt-get install $pkg_str
	echo "To be added"
else
	sudo apt-get install $pkg_str
fi

# Slightly more finicky/involved installs

# Dropbox

# Sublime 3

# Astrill

# Chrome