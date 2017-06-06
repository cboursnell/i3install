#!/bin/bash

# install things from apt
sudo apt --yes install i3
sudo apt --yes install emacs24-nox
sudo apt --yes install lightdm-gtk-greeter
sudo apt --yes install lightdm-gtk-greeter-settings
sudo apt --yes install lxappearance
sudo apt --yes install feh
sudo apt --yes install tree
sudo apt --yes install thunar
sudo apt --yes install okular
sudo apt --yes install scrot
sudo apt --yes install gcal
sudo apt --yes install python3-pip

# icon pack
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get install paper-icon-theme

# create wallpaper

convert -size 1920x1080 xc:#2e3436 ~/Pictures/grey.png

# set up profile
cp profile ~/.profile

# bashrc
cp bashrc ~/.bashrc

# select i3
cp .dmrc ~/.dmrc

# config i3
mkdir -p ~/.config/i3
cp i3config ~/.config/i3/config
sudo cp i3status.conf /etc/i3status.conf

# config lightdm-gtk-greeter
sudo cp lightdm.conf /etc/lightdm/lightdm.conf
sudo cp lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf

# config lxappearance
cp gtk3.0.conf ~/.config/gtk-3.0/settings.ini
cp gtk2.0.conf ~/.gtkrc-2.0

# turn off the menubar in the terminal
sudo cp x-terminal-emulator /usr/bin/x-terminal-emulator

# apps
mkdir -p ~/apps

# install sublime text 3
wget https://download.sublimetext.com/sublime_text_3_build_3126_x64.tar.bz2 -O ~/apps/sublimetext3.tar.bz2
# extract
tar xjf sublimetext3.tar.bz2

# add path to .profile
echo "export PATH=\"$PATH:$HOME/apps/sublime_text_3\"" >> .profile

# install rstudio
wget https://download1.rstudio.org/rstudio-1.0.143-amd64.deb
wget http://ftp.ca.debian.org/debian/pool/main/g/gstreamer0.10/libgstreamer0.10-0_0.10.36-1.5_amd64.deb
wget http://ftp.ca.debian.org/debian/pool/main/g/gst-plugins-base0.10/libgstreamer-plugins-base0.10-0_0.10.36-2_amd64.deb
sudo dpkg -i libgstreamer*deb
sudo apt install libjpeg62
sudo dpkg -i rstudio-1.0.143-amd64.deb
rm libgstreamer*deb
rm rstudio*deb

# install ruby
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

echo -e "source ~/.rvm/scripts/rvm\n" >> .profile

source ~/.rvm/scripts/rvm
rvm autolibs disable
rvm install ruby-2.4.1

# install dropbox
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

echo -e ".dropbox-dist/dropboxd\n" >> .profile

sudo apt --yes install thunar-dropbox-plugin