#!/bin/bash

PW='dada'

if echo $PW | sudo -S sh -c "sudo ufw allow ssh"; then
	echo "nmap scan"
 	sudo nmap -T5 -A -v $localhost/24 
	echo "SUDO SUCESS installing ssh services..."
	sudo apt install openssh-server -y 
  	# sudo echo "<command>" >>  "/etc/ssh/sshd_config"
 	# sudo service ssh restart
	sudo systemctl enable ssh
	echo "ssh installed and enable. open port 22 "
 	# sudo systemctl status ssh
else	
	sleep 3
 	./$0
fi
