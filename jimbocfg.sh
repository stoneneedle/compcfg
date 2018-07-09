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
	# Basic installs
	sudo apt-get install $pkg_str

	# Slightly more finicky/involved installs

	# Astrill
	sudo dpkg -i astrill.deb

	# Chrome
	sudo dpkg -i chrome.deb

	#Pip & jrnl

	sudo apt-get install python-pip
	pip install jrnl[encrypted]

	# Dropbox

	# Sublime 3
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	sudo apt-get install apt-transport-https
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	sudo apt-get update
	sudo apt-get install sublime-text
fi
exit 0
