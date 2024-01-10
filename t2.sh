#!/bin/bash

START_IP=40
END_IP=47


SSH_USER="dada"
SSH_PASSWORD="dada"
SSH_TIMEOUT="2"

CURRENT_IP=$START_IP
while [ "$CURRENT_IP" -le "$END_IP" ]; do
    IP="192.168.178.$CURRENT_IP"
    echo "Connecting to $IP..."

   	if sshpass -p "$SSH_PASSWORD" ssh -o ConnectTimeout="$SSH_TIMEOUT"  "$SSH_USER@$IP" 'gnome-screensaver-command -l'; then
		echo "screen locked succesful"
	else
		echo "cant reach: $IP"
	fi

    
    echo "---------------------------------------"
    echo "iteration on ip: $IP"

    # Increment the current IP
    ((CURRENT_IP++))
done
