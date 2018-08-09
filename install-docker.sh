#!/usr/bin/env bash

# remove older versions
sudo apt-get remove -y docker docker-engine docker.io

# install dependencies
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# add GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# add repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# update repositories
sudo apt-get update

# install docker
sudo apt-get install -y docker-ce

# add docker group
sudo groupadd docker

# add current user to docker group
sudo usermod -aG docker $USER

# test if docker works correctly
clear
echo "log out of your session completely and then log back in"
echo "verify your docker installation by running:"
echo ""
echo "  docker run hello-world"
echo ""
