## 1

```
1. Будет ошибка. Разные типы int и str
2. c=str(a)+b
3. c=a+int(b)
```
## 2

```
#!/usr/bin/env python3

import os


bash_command = ["cd ~/Projects/Netology/netology-devops", "git status", "pwd"]
result_os = os.popen(' && '.join(bash_command)).read()
file_dir = (result_os.split('\n'))[-2]

for result in result_os.split('\n'):
   if result.find('modified') != -1:
       prepare_result = result.replace('\tmodified:   ', '')
       print('Dir: ' + file_dir + '/' + '    FileName:' + prepare_result + '    Status: ' + 'M')
   elif result.find('new file') != -1:
       prepare_result = result.replace('\tnew file:   ', '')
       print('Dir: ' + file_dir + '/' + '    FileName:' + prepare_result + '    Status: ' + 'N')
   elif result.find('deleted') != -1:
       prepare_result = result.replace('\tdeleted:   ', '')
       print('Dir: ' + file_dir + '/' + '    FileName:' + prepare_result + '    Status: ' + 'D')
   elif result.find('rename') != -1:
       prepare_result = result.replace('\trename:   ', '')
       print('Dir: ' + file_dir + '/' + '    FileName:' + prepare_result + '    Status: ' + 'R')
```
![](./2.png?raw=true)
## 3

```
#!/usr/bin/env python3
import git
import os

print("Введите имя директории:")
x = str(input())

try:
   _ = git.Repo(x).git_dir

   bash_command = ["cd " + x, "git status", "pwd"]
   result_os = os.popen(' && '.join(bash_command)).read()

   print(result_os)

   for result in result_os.split('\n'):
       if result.find('modified') != -1:
           prepare_result = result.replace('\tmodified:   ', '')
           print('Dir: ' + result_os.split('\n')[-2] + '/' + '    FileName:' + prepare_result + '    Status: ' + 'M')
       elif result.find('new file') != -1:
           prepare_result = result.replace('\tnew file:   ', '')
           print('Dir: ' + result_os.split('\n')[-2] + '/' + '    FileName:' + prepare_result + '    Status: ' + 'N')
       elif result.find('deleted') != -1:
           prepare_result = result.replace('\tdeleted:   ', '')
           print('Dir: ' + result_os.split('\n')[-2] + '/' + '    FileName:' + prepare_result + '    Status: ' + 'D')
       elif result.find('rename') != -1:
           prepare_result = result.replace('\trename:   ', '')
           print('Dir: ' + result_os.split('\n')[-2] + '/' + '    FileName:' + prepare_result + '    Status: ' + 'R')

except git.exc.InvalidGitRepositoryError:
   print("Not a git repo")
```
![](./3.png?raw=true)
## 4

```
#!/usr/bin/env python3
import socket
import time
import datetime

URLs = {'drive.google.com':'0.0.0.0', 'mail.google.com':'0.0.0.0', 'google.com':'0.0.0.0'}

print('*** start script ***')
print(URLs)
print('********************')
i = 1

while i < 50:
   for host in URLs:
       ip = socket.gethostbyname(host)
       print(host + ' - ' + ip)
       if ip != URLs[host]:
           print(str(datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")) +' [ERROR] ' + str(host) +' IP mistmatch: '+URLs[host]+' '+ip)
           URLs[host] = ip
   i += 1
   time.sleep(2)
```
![](./4.png?raw=true)
