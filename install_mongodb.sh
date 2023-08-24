#!/bin/bash

set -e
echo "Install Mongodb..."
sudo apt update
sudo apt install -y mongodb
sudo systemctl start mongodb
sudo systemctl enable mongodb
systemctl status mongodb
echo "Mongodb successfully installed!"
