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

# icon pack
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get install paper-icon-theme

# create wallpaper
convert -size 1920x1080 xc:#2e3436 ~/Pictures/grey.png
mv lock-icon.png ~/Pictures/.
cp lock.sh ~/.lock.sh

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
sudo cp state /var/lib/lightdm/.cache/lightdm-gtk-greeter/state

# config lxappearance
cp gtk3.0.conf ~/.config/gtk-3.0/settings.ini
cp gtk2.0.conf ~/.gtkrc-2.0

# turn off the menubar in the terminal
sudo cp x-terminal-emulator /usr/bin/x-terminal-emulator
