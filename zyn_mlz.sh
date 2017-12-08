#!/bin/bash
sudo apt-get update && apt-get -y upgrade
sudo apt-get install -y git make curl unzip gedit automake autoconf dh-autoreconf build-essential pkg-config openssh-server screen libtool libcurl4-openssl-dev libncurses5-dev libudev-dev libjansson-dev libssl-dev libgmp-dev gcc g++ screen
sudo apt-get install gcc-mingw-w64 -y
git clone https://github.com/bitzeny/cpuminer 
cd cpuminer
./autogen.sh
./configure CFLAGS="-O3 -march=native -funroll-loops -fomit-frame-pointer" 
make
screen -d -m ./minerd -a yescrypt -o stratum+tcp://jp.lapool.me:3014 -u k67frozen.anonymous -p 0202 -x 104.207.141.47:2212
