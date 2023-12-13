#!/bin/bash

PW='dada'

if echo $PW | sudo -S sh -c "sudo systemctl enable ssh"; then
	echo "1"
	# sudo systemctl status ssh
	# sudo service ssh restart
	# sudo echo "<command>" >>  "/etc/ssh/sshd_config"
else	
	sudo apt install openssh-server -y 
	sudo ufw allow ssh
	sudo systemctl enable ssh
	echo "ssh installed and enable. open port 22 "
fi
