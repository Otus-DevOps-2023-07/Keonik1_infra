#!/bin/bash

set -e
echo "Install Mongodb..."
sudo apt-get update
sleep 60
sudo apt-get install -y mongodb
sudo systemctl start mongodb
sudo systemctl enable mongodb
systemctl status mongodb
echo "Mongodb successfully installed!"
