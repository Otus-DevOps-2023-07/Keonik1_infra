#!/bin/bash

set -e
APP_DIR=${1:-$HOME}
sudo apt update
sudo apt-get install -y git --allow-unauthenticated
git clone -b monolith https://github.com/express42/reddit.git $APP_DIR/reddit
cd $APP_DIR/reddit
bundle install
sudo mv /tmp/puma.service /etc/systemd/system/puma.service
sudo systemctl start puma
sudo systemctl enable puma
echo -e "Service is ready! \nOpen in browser:\nhttp://<ip-address>:$(ps aux | grep puma | awk -F ':' '{printf $NF}' | awk -F ')' '{printf $1}')"