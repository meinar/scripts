#!/usr/bin/env bash
echo "Username:"
read newUser

adduser $newUser
usermod -aG sudo $newUser

cp -r ~/.ssh /home/$newUser
chown -R $newUser:$newUser /home/$newUser/.ssh

echo "User '$newUser' successfully created"
