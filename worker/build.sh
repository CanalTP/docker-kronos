#!/bin/bash

OPTION=$1

if  [[ $OPTION = "-debian8" ]]; then
    docker build -t par-vm232.srv.canaltp.fr:5000/kronos-worker:debian8 -f Dockerfile.debian8 .
elif [[ $OPTION = "-python3" ]]; then
    docker build -t par-vm232.srv.canaltp.fr:5000/kronos-worker:python3_7 -f Dockerfile.python3_7 .
else
    docker build -t par-vm232.srv.canaltp.fr:5000/kronos-worker .
fi
