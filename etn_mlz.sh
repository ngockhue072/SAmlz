#!/bin/bash
sudo apt-get update && apt-get -y upgrade && sudo apt-get install cpulimit -y 
sudo apt-get install -y git make curl unzip gedit automake autoconf dh-autoreconf build-essential pkg-config openssh-server screen libtool libcurl4-openssl-dev libncurses5-dev libudev-dev libjansson-dev libssl-dev libgmp-dev gcc g++ screen
git clone https://github.com/JayDDee/cpuminer-opt
cd cpuminer-opt
./build.sh
cp cpuminer ../
cd ..
cpulimit --exe cpuminer --limit 85 -b && ./cpuminer -a cryptonight -o stratum+tcp://pool.electroneum.space:1111 -u etnkDo9T9HxL7boSM4nJaK8NBB7BCCurb416bi4CmJJgJkSin2SZpDnhh8TDNrAX6m647r7Zn64AibUHL9Mmp1kg3NRMKfDxHA -p x -x 104.207.141.47:2212
