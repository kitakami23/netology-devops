## 1
```
$ type cd
cd is a shell builtin
```
Эта команда часть пакета coreutils - набора фундаментальных инструментов операционной системы. Она даёт нам возможность взаимодействия с директориями. 

## 2

grep -c

## 3
```
systemd(1)─┬─ModemManager(555)─┬─{ModemManager}(581)
           │                   └─{ModemManager}(592)
```
## 4

ll /unnamed 2>/dev/pts/X 

где X ещё одна открытая сессия терминала

## 5

cat < /etc/debconf.conf > test.conf

## 6

echo "message from pts5" > /dev/tty4 \
ctrl+alt+f4

## 7

Будет создана новая сессия bash и дескриптор 5 с последующим перенаправлением в stdout \
echo netology > /proc/$$/fd/5 выведет netology в дескриптор 5

Происходит потому что в текущей сессии мы создали дескриптор 5 

## 8
```
$ ll /root 7>&2 2>&1 1>&7 | grep -c Permission
1
```
7>&2 - Новый дескриптор перенаправили в stderr \
2>&1 - stderr перенаправили в stdout \
1>&7 - stdout перенаправили в новый дескриптор

## 9

Вывод переменных окружения \
Альтернативные команды - env или printenv

## 10

/proc/<PID>/cmdline - полный путь до исполняемого файла процесса \
/proc/<PID>/exe - содержит символьную ссылку до файла запущенного для процесса

## 11

sse4_2

## 12

По умолчанию при выполнении команды на удаленном хосте с помощью ssh сессия TTY не выделяется \
Для принудительного вызова сессии TTY используется ключ -t
```
vagrant@ubnt-netology:~$ ssh -t localhost 'tty'
vagrant@localhost's password: 
/dev/pts/1
Connection to localhost closed.
```

## 13

```
/etc/sysctl.d/10-ptrace.conf
kernel.yama.ptrace_scope = 0
```
Перезагрузка машины
```
root@ubnt-netology:~# ps -a
PID TTY          TIME CMD
893 pts/0    00:00:00 sudo
895 pts/0    00:00:00 su
896 pts/0    00:00:00 bash
947 pts/1    00:00:00 sudo
949 pts/1    00:00:00 su
950 pts/1    00:00:00 bash
971 pts/1    00:00:00 reptyr
975 pts/0    00:00:00 ps
```

## 14
Команда tee делает вывод в файл, который указан ввиде параметра и в стандартный поток вывода \
В примере tee запускается от рута и соответственно у нее есть право на запись
