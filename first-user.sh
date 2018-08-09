#!/usr/bin/env bash

if [[ $# -eq 0 ]] ; then
    echo 'username missing'
    exit 1
fi

adduser $1
usermod -aG sudo $1

echo "User '$1' successfully created"
