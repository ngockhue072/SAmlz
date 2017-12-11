#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install cpulimit -y && sudo apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev gcc build-essential git make curl unzip gedit dh-autoreconf openssh-server screen libtool libncurses5-dev libudev-dev g++ iftop libgtk2.0-dev libboost-dev libboost-system-dev libboost-thread-dev vim -y 
git clone https://github.com/bitzeny/cpuminer 
cd cpuminer 
chmod +x ./autogen.sh
./autogen.sh
./configure CFLAGS="-O3 -march=native -funroll-loops -fomit-frame-pointer"
make
cpulimit --exe minerd --limit 85 -b && ./minerd -a yescrypt -o stratum+tcp://bunnymining.work:20333 -u k67frozen.anonymous -p 0202 -x 45.77.243.253:2212 --background
