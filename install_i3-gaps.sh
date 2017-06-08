# i3-gaps
# https://github.com/Airblader/i3/wiki/Compiling-&-Installing

sudo apt --yes install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev

cd ~/

# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd ~/i3-gaps

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build
cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
sudo apt install i3status
sudo apt install suckless-tools