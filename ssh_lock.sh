#!/bin/bash

start_ip=44
end_ip=46

username="dada"
ip_prefix="192.168.178."

# for ((ip=$start_ip; ip<=$end_ip; ip++)); do
#       current_ip="$ip_prefix$ip"

# while [ "$current_ip" -le "$end_ip" ];  do
#       current_ip="ip_prefix$current_ip"

for current_ip in $(seq "$start_ip" "$end_ip"); do
        current_ip="$ip_prefix$current_ip"
        echo "test"


# connect
echo "connecting..."
ssh "$username@$current_ip" "gnome-screensaver-command -l"

# current_ip=$((current_ip + 1))

done
