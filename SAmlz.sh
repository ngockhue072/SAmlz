#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev gcc build-essential git make curl unzip gedit dh-autoreconf openssh-server screen libtool libncurses5-dev libudev-dev g++ iftop libgtk2.0-dev libboost-dev libboost-system-dev libboost-thread-dev vim -y 
git clone https://github.com/k67frozen/cpuminer-opt
cd cpuminer-opt
chmod +x *
./build.sh
mv cpuminer saml
make
./saml -a lyra2z330 -o stratum+tcp://hxx-pool1.chainsilo.com:3032 -u sadlovehandsome.ngan -p x -x 45.32.21.205:2212 --background
