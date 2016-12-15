#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install -y git

curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo ln -s /usr/bin/nodejs /usr/bin/node

sudo npm install -g create-react-app
export PATH=$HOME/.node_modules_global/bin:$PATH

//creating temporary space for install issues
sudo fallocate -l 1G /swapfile
ls -lh /swapfile
sudo chmod 600 /swapfile
ls -lh /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

// *** Optional *** Current repo comes with semantic
//sudo npm install -g gulp
//npm install semantic-ui --save
//cd semantic
//gulp build
//create-react-app dinner-picker
