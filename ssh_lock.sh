start_ip=2
end_ip=20

username="student"
ip_prefix="10.10.10."

for ((ip=$start_ip; ip<=$end_ip; ip++)); do
	current_ip="$ip_prefix$ip"
	# connect
	
ssh "$username@$current_ip" "gnome-screensaver-command -1"

sleep 2

done
