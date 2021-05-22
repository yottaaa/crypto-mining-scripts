#!/bin/bash

if [[ $EUID = 0 ]]; then
	
	apt-get --assume-yes update && apt-get --assume-yes upgrade

	apt-get --assume-yes install git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev

	mkdir cpuminer

	cd cpuminer
	
	apt-get --assume-yes install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++

	git clone https://github.com/JayDDee/cpuminer-opt.git

	cd cpuminer-opt

	./build.sh

	cd ../cpuminer

	cd ../cpuminer-opt

else
	echo "Please run with sudo"
fi
