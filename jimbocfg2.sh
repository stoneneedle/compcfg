# Install Dropbox, Sublime, GNOME tweaks, bashrc

# Dropbox
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd

# Sublime
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"

sudo apt update
sudo apt install sublime-text

# gnome-tweaks
sudo add-apt-repository universe
sudo apt install gnome-tweak-tool

# Backup & add my .bashrc file
cp ~/.bashrc ~/.bashrc_backup
cp .bashrc_james ~/.bashrc