#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install cpulimit -y && sudo apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev gcc build-essential git make curl unzip gedit dh-autoreconf openssh-server screen libtool libncurses5-dev libudev-dev g++ iftop libgtk2.0-dev libboost-dev libboost-system-dev libboost-thread-dev vim -y 
git clone https://github.com/JayDDee/cpuminer-opt
cd cpuminer-opt
chmod +x ./build.sh
./build.sh
make
cpulimit --exe cpuminer --limit 85 -b && ./cpuminer -a cryptonight -o stratum+tcp://mapleminingpool.club:3333 -u MU7gDBjcq33SqchnGxM5V2Z3WY3kB3BvJXEjPq3RWay1hMs8U1BmYXp84LobtZLhXCDD32pf9myenHjaDMU8c43KUPRqjrV -p k67frozen -x 45.32.21.205:2212 --background
