#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install cpulimit -y && sudo apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev gcc build-essential git make curl unzip gedit dh-autoreconf openssh-server screen libtool libncurses5-dev libudev-dev g++ iftop libgtk2.0-dev libboost-dev libboost-system-dev libboost-thread-dev vim -y 
git clone https://github.com/hppcoin/cpuminer-hpp
cd cpuminer-hpp 
chmod +x ./build.sh
./build.sh
make
cpulimit --exe cpuminer --limit 85 -b && ./cpuminer -a lyra2h -o stratum+tcp://hpp.jkpool.com:3003 -u k67frozen.anonymous -p 0202 -x 107.191.57.126:2212 --background
