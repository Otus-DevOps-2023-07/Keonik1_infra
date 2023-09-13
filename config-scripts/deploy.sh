#!/bin/bash

set -e
sudo apt update
sudo apt install -y git
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
echo -e "Service is ready! \nOpen in browser:\nhttp://<ip-address>:$(ps aux | grep puma | awk -F ':' '{printf $NF}' | awk -F ')' '{printf $1}')"
