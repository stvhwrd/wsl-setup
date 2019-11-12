#!/bin/bash

# Install applications
# Comment (with #) what should not be installed and add the applications you want to install.

source ./install/utils.sh
keep_sudo_alive

# Update Ubuntu
sudo apt update
sudo apt full-upgrade -y
sudo apt autoremove -y

# Essential packages
sudo apt install -y \
  build-essential \
  software-properties-common

# System utilities
sudo apt install -y \
  git \
  vim \
  tmux \
  mosh \
  curl \
  tree \
  htop

# Nodejs
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install -y nodejs npm

# Ubuntu WSL
# Check out https://github.com/wslutilities/wslu for more details
sudo apt install ubuntu-wsl

# Finish
e_success "Finished applications installation."
