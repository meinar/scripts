#!/usr/bin/env bash
echo "Asername:"
read newUser

adduser $newUser
usermod -aG sudo $newUser

echo "User '$newUser' successfully created"
