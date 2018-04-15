#!/bin/bash

sudo su

apt-get update
apt-get upgrade

apt-get install vim thunar code i3 pinta curl i3lock

#install go
mkdir -p ~/gocode
curl https://dl.google.com/go/go1.10.1.linux-amd64.tar.gz -o Downloads/go.tar.gz
tar -C /usr/local -xzf Downloads/go.tar.gz

touch ~/.bashrc
echo 'alias lock="i3lock -c 000000"' >> ~/.bashrc
echo 'export GOPATH=~/gocode' >> ~/.bashrc
echo 'export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin' >> ~/.bashrc
