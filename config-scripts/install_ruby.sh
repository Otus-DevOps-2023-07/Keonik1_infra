#!/bin/bash

set -e
echo "Install ruby..."
sudo apt update
sudo apt install -y ruby-full ruby-bundler build-essential
echo "Ruby successfully installed!"
