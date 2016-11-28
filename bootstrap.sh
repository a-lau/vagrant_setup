#!/usr/bin/env bash

sudo apt-get update

curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y npm

npm install -g create-react-app
create-react-app dinner-picker
