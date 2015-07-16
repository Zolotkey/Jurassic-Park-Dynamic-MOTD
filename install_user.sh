#!/usr/bin/env bash

echo "Jurassic Park MOTD User Install"

#Install the MOTD to User Home
cp -R jpmotd ~/.jpmotd
chmod +x ~/.jpmotd/dynmotd.sh

#See if we are using .bashrc or .bash_profile
if [ -f ~/.bashrc ]; then
   echo \~/.jpmotd/dynmotd.sh >> ~/.bashrc
   elif [ -f ~/.bash_profile ]; then
   echo \~/.jpmotd/dynmotd.sh >> ~/.bash_profile
   else
   echo "Creating Bash Profile";
   echo \~/.jpmotd/dynmotd.sh >> ~/.bash_profile
fi



echo "Installed Complete!"
echo "Please reopen your terminal to view it!"


