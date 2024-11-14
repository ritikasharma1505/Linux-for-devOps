### Learning linux for devOps



- 'scp' command usage : 

```
scp -i <pem-file> 'filename' ubuntu@ec2-ip.compute-1.amazonaws.com:/home/ubuntu/remote-folder/
from-local.txt                                                                        100%   60     0.3KB/s   00:00

PS C:\Users\Ritik> scp -i <pem-file> ubuntu@ec2-ip.compute-1.amazonaws.com:/home/ubuntu/filename .
from-remote.txt                                                                       100%   88     0.2KB/s   00:00
           
```
NOTE :
'scp' command runs from local machine 


- 'touch' command to automate creating 10 files:
example: file-1.txt, file-2.txt, .. ,file-10.txt

```
touch file-{1..10}.txt

```

- ln command usage - hardlink and softlink are shortcut like one creates for an app on desktop 

```
ln -s /home/ubuntu/some-path.txt softlink
```
```
ln /home/ubuntu/some-path.txt hardlink
```
NOTE: softlink gets destroyed if main file is removed, whereas hardlink persists if main file is removed

- User management - create a user

```
 sudo useradd -m jethalal
 cat /etc/passwd
```

- create a password for user 

```
 sudo passwd jethalal
```

- switch user 

```
su <username>
```

- delete a user

```
 sudo userdel <username>
```

- create group

```
sudo groupadd <groupname>
cat /etc/group
```

- add user to group

```
sudo gpasswd -a <username> <groupname>  # add single-user
sudo gpasswd -M <username> <groupname>  # add multi-user 
```

- delete a group

```
sudo groupdel <groupname>
```