#!/bin/bash

sudo apt --yes install python3-pip

# install extra programs once we're in i3

# apps
mkdir -p ~/apps

# install sublime text 3
wget https://download.sublimetext.com/sublime_text_3_build_3126_x64.tar.bz2 -O ~/apps/sublimetext3.tar.bz2
# extract
tar xjf sublimetext3.tar.bz2

# add path to .profile
echo "export PATH=\"$PATH:$HOME/apps/sublime_text_3\"" >> .profile

# install r + rstudio
sudo apt install r-base
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

# google player
wget https://github.com/MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-/releases/download/v4.3.0/google-play-music-desktop-player_4.3.0_amd64.deb
sudo apt install libappindicator1
sudo apt install libindicator7
sudo dpkg -i google-play-music-desktop-player_4.3.0_amd64.deb
sudo apt-get -f install
sudo apt install libgconf-2-4

