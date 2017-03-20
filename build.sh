#!/usr/bin/env bash

if [[ ! -f nomachine.deb ]]; then
    wget http://download.nomachine.com/download/5.2/Linux/nomachine_5.2.11_1_amd64.deb -O nomachine.deb
fi

docker build -t dclong/xubuntu .
