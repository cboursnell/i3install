#!/bin/bash

# install things

sudo apt --yes --force-yes install i3
sudo apt --yes --force-yes install emacs24-nox
sudo apt --yes --force-yes install lightdm-gtk-greeter
sudo apt --yes --force-yes install lightdm-gtk-greeter-settings
sudo apt --yes --force-yes install lxappearance
sudo apt --yes --force-yes install feh
sudo apt --yes --force-yes install git
sudo apt --yes --force-yes install tree
sudo apt --yes --force-yes install thunar
sudo apt --yes --force-yes install okular
sudo apt --yes --force-yes install scrot
sudo apt --yes --force-yes install gcal
sudo apt --yes --force-yes install python3-pip

sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get install paper-icon-theme

# create wallpaper

convert -size 1920x1080 xc:#2e3436 ~/Pictures/grey.png

# set it as the wallpaper with feh
echo -e "feh --bg-scale ~/Pictures/grey.png" >> ~/.profile

# change keys to how I like them
echo -e "xmodmap -e 'keycode  49 = grave asciitilde grave asciitilde' " >> ~/.profile
echo -e "xmodmap -e 'keycode  51 = underscore sterling underscore sterling' " >> ~/.profile
echo -e "xmodmap -e 'keycode  94 = backslash bar backslash bar' " >> ~/.profile

# common commands i use
echo -e "alias lr='ls -lhrt' " >> ~/.profile
echo -e "alias lrt='ls -lhrt | tail' " >> ~/.profile
echo -e "alias duh='du -hc -d 1' " >> ~/.profile
echo -e "alias df='df -h' " >> ~/.profile
echo -e "alias tre='tree -h | less' " >> ~/.profile
echo -e "alias gcal='gcal -s 1' " >> ~/.profile

# select i3
cp .dmrc ~/.dmrc

# config i3
cp i3config ~/.config/i3/config

# config lightdm-gtk-greeter
sudo cp lightdm.conf /etc/lightdm/lightdm.conf
sudo cp lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf

# config lxappearance
cp gtk3.0.conf ~/.config/gtk-3.0/settings.ini
cp gtk2.0.conf ~/.gtkrc-2.0

# turn off the menubar in the terminal
sudo cp x-terminal-emulator /usr/bin/x-terminal-emulator