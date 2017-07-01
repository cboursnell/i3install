#!/bin/bash

# install things from apt
source install_i3-gaps.sh
sudo apt --yes install rofi
sudo apt --yes install emacs24-nox
sudo apt --yes install lightdm-gtk-greeter
sudo apt --yes install lightdm-gtk-greeter-settings
sudo apt --yes install lxappearance   # gtk themes
sudo apt --yes install feh      # wallpapers
sudo apt --yes install tree     # tree!
sudo apt --yes install thunar   # graphical file manager
sudo apt --yes install okular   # pdf viewer
sudo apt --yes install scrot    # screen shots
sudo apt --yes install compton  # compositor, allows transparency
sudo apt --yes install dfc      # like df but with colours
sudo apt --yes install gsimplecal # gtk popup calendar
sudo apt --yes install font-manager # fonts!

source install_polybar.sh # polybar

# icon pack
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get install paper-icon-theme

# create wallpaper
convert -size 1920x1080 xc:#2e3436 ~/Pictures/grey.png
mv ~/i3install/lock-icon.png ~/Pictures/.
cp ~/i3install/lock.sh ~/.lock.sh

# set up profile
cp ~/i3install/profile ~/.profile

# bashrc
cp ~/i3install/bashrc ~/.bashrc

# select i3
cp ~/i3install/.dmrc ~/.dmrc

# config i3
mkdir -p ~/.config/i3
cp ~/i3install/i3config ~/.config/i3/config

# config polybar
mkdir -p ~/.config/polybar
cp ~/i3install/polybar.conf ~/.config/polybar/config
cp ~/i3install/launch_polybar.sh ~/.launch_polybar.sh

# config lightdm-gtk-greeter
sudo cp lightdm.conf /etc/lightdm/lightdm.conf
sudo cp lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
sudo mkdir -p /var/lib/lightdm/.cache/lightdm-gtk-greeter/
sudo cp state /var/lib/lightdm/.cache/lightdm-gtk-greeter/state

# config lxappearance
cp ~/i3install/gtk3.0.conf ~/.config/gtk-3.0/settings.ini
cp ~/i3install/gtk2.0.conf ~/.gtkrc-2.0

# config emacs
cp ~/i3install/emacs.conf ~/.emacs
