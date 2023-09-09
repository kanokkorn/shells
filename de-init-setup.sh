# Autosetup utilities and X server configuration for debian base distro
# only use when already configured `sudo`

#!/bin/sh

# fetch source list & upgrade
sudo apt update && sudo apt upgrade -y && sudo apt autoremove

# prerequisites + compiler
sudo apt install vim tmux git build-essential

# xcb libraries
sudo apt install libxcb-composite0-dev \
  libxcb-cursor-dev  \
  libxcb-damage0-dev \
  libxcb-ewmh-dev \
  libxcb-glx0-dev \
  libxcb-icccm4-dev \
  libxcb-image0-dev \
  libxcb-keysyms1-dev \
  libxcb-present-dev \
  libxcb-randr0-dev \
  libxcb-render-util0-dev \
  libxcb-render0-dev \
  libxcb-shape0-dev \
  libxcb-shm0-dev \
  libxcb-sync-dev \
  libxcb-util-dev \
  libxcb-util0-dev \
  libxcb-xfixes0-dev \
  libxcb-xinerama0-dev \
  libxcb-xkb-dev \
  libxcb-xrm-dev \
  libxcb1-dev

# clone build bspwm & sxkhd
git clone --recusive https://github.com/baskerville/bspwm &\
git clone --recusive https://github.com/baskerville/sxhkd

cd bspwm && make -j 4 && sudo make install && cd ~\
cd sxhkd && make -j 4 && sudo make install && cd ~
