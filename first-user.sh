#!/usr/bin/env bash
echo "Asername:"
read newUser

adduser $newUser
usermod -aG sudo $newUser

cp ~/.ssh /home/$newUser
chown -R $newUser:$newUser /home/$newUser/.ssh

echo "User '$newUser' successfully created"
