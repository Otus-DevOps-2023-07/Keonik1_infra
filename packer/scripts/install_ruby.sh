#!/bin/bash

set -e
echo "Install ruby..."
sudo apt-get update
sleep 60
sudo apt-get install -y ruby-full ruby-bundler build-essential
echo "Ruby successfully installed!"
