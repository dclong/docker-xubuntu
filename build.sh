#!/usr/bin/env bash

if [[ ! -f nomachine.deb ]]; then
    wget http://download.nomachine.com/download/5.3/Linux/nomachine_5.3.12_10_amd64.deb -O /nomachine.deb
fi

docker build -t dclong/xubuntu .
