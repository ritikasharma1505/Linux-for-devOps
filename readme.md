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
touch file-{2..10}.txt
```
