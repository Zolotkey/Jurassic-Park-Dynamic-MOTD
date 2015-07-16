#!/usr/bin/env bash

echo "Jurassic Park MOTD System Install"

#Check if we are running as root
if [ "$USER" != "root" ]; then
	echo "Need sudo or be run as Root!";
	exit
fi

#Install the MOTD 
if [ -e  /usr/local/bin/dynmotd ]; then
	echo "Dynamic MOTD already installed!!!";
	echo "Please remove current Dynamic MOTD at:";
	echo "/usr/local/bin/dynmotd";
	exit
else	
	cp -R jpmotd/dynmotd.sh /usr/local/bin/dynmotd
	chmod +x /usr/local/bin/dynmotd
fi

#Add to /etc/profile
echo /usr/local/bin/dynmotd >> /etc/profile

echo "Installed Complete!"
