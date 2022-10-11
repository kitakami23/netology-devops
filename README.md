## 1
```
[Unit]
Description=Prometheus Node Exporter
 
[Service]
ExecStart=/usr/bin/node_exporter
EnvironmentFile=/etc/default/node_exporter

[Install]
WantedBy=default.target
```
## 2
```
node_cpu_seconds_total (system,user,iowait,idle)

node_memory_MemFree_bytes
node_memory_MemTotal_bytes
node_memory_MemCached_bytes

node_filesystem_size_bytes
node_filesystem_avail_bytes
node_disk_read_bytes_total
node_disk_written_bytes_total

node_network_receive_bytes_total
node_network_transmit_bytes_total
```

## 3
![](./3.png?raw=true)

## 4
```
dmesg | less
```
![](./4.png?raw=true)

## 5
![](./5.png?raw=true)

```
ulimit -Hn — жесткий лимит максимального кол-ва открытых файловых дискрипторов, может быть установлен только root пользователем
ulimit -Sn — мягкий лимит максимального кол-ва открытых файловых дискрипторов, может быть установлен пользователем на которого наложен лимит, но не больше чем жесткий лимит
``` 
## 6



## 7
Нагуглил про fork bomb \
Функция {} вызывает саму себя, пропуская свой вывод через себя. Забивает процессорное время запросами

![](./7.png?raw=true)

```
ulimit -u 20 
```
Ограничим для текущего пользователя число процессов до 20
