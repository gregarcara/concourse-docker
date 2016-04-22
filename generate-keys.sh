#!/usr/bin/env bash

rm -rf ./keys
mkdir -p keys
ssh-keygen -t rsa -f ./keys/host_key -N '' > /dev/null
ssh-keygen -t rsa -f ./keys/worker_key -N '' > /dev/null
ssh-keygen -t rsa -f ./keys/session_signing_key -N '' > /dev/null
cp ./keys/worker_key.pub ./keys/authorized_worker_keys > /dev/null
chmod 600 ./keys/* > /dev/null
