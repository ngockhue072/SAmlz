#!/bin/bash
sudo apt-get update && apt-get -y upgrade
sudo apt-get install -y git make curl unzip gedit automake autoconf dh-autoreconf build-essential pkg-config openssh-server screen libtool libcurl4-openssl-dev libncurses5-dev libudev-dev libjansson-dev libssl-dev libgmp-dev gcc g++ screen
git clone https://github.com/JayDDee/cpuminer-opt
cd cpuminer-opt
./build.sh
cp cpuminer ../
cd ..
screen -d -m sudo ./cpuminer -a cryptonight -o stratum+tcp://http://52.173.37.113:1111 -u WcC2Wcqz6Ww1dkqF6ohxiaeL1hENdKfVjHvL3hmkh5m2FD9Z6eAJr8L6zaTPmohhmEZBgMTbH8rSpXowsisEo2cr2kJ4p3gqg
