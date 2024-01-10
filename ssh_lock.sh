start_ip=40
end_ip=46

username="dada"
ip_prefix="192.168.178."

for ((ip=$start_ip; ip<=$end_ip; ip++)); do
	current_ip="$ip_prefix$ip"

# connect
ssh "$username@$current_ip" "gnome-screensaver-command -1"

sleep 2

done
