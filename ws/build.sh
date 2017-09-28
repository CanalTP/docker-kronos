#!/bin/bash

OPTION=$1

if  [[ $OPTION = "-debian8" ]]; then
    docker build -t par-vm232.srv.canaltp.fr:5000/kronos-ws:debian8 -f Dockerfile.debian8 .
else
    docker build -t par-vm232.srv.canaltp.fr:5000/kronos-ws .
fi
