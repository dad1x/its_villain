if echo 'PW' | sudo -S sh -c "sudo systemctl enable ssh"; then
	# sudo systemctl status ssh
	echo "ssh enable"
	# sudo service ssh restart
	# sudo echo "<command>" >>  "/etc/ssh/sshd_config"
 
else if 
	sudo apt install openssh-server -y && sudo ufw allow ssh; then
else 
	sleep 2
fi
