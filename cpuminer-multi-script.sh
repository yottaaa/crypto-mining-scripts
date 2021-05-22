#!/bin/bash

if [[ $EUID == 0 ]]; then

	apt-get --assume-yes update && apt-get --assume-yes upgrade

	apt-get --assume-yes install git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev
	
	mkdir cpuminer
	
	apt-get --assume-yes install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++
	
	git clone https://github.com/tpruvot/cpuminer-multi
	
	cd cpuminer-multi
	
	./build.sh

else
	echo "Please run sudo"
fi
