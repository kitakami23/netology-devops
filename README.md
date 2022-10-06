## 1
Linux
```
ip link 
ifconfig
```

Windows
```
ipconfig
```

## 2
Используется протокол LLDP \
Пакет - lldpd, управление - lldpctl

## 3
Используется технология VLAN \
Пакет - vlan 

```
/etc/network/interfaces
    auto vlan1400 
    iface vlan1400 inet static 
        address 192.168.1.1      
        netmask 255.255.255.0        
        vlan_raw_device eth0
```

## 4
В Linux агрегацию портов можно настроить с помощью пакета 'ifenslave'
```
    mode=0 (balance-rr)  - Последовательно кидает пакеты, с первого по последний интерфейс. \
    mode=2 (balance-xor) - Передачи распределяются между интерфейсами на основе формулы ((MAC-адрес источника) XOR (MAC-адрес получателя)) % число интерфейсов. Один и тот же интерфейс работает с определённым получателем. Режим даёт балансировку нагрузки и отказоустойчивость. \
    mode=5 (balance-tlb) - Входящие пакеты принимаются только активным сетевым интерфейсом, исходящий распределяется в зависимости от текущей загрузки каждого интерфейса. Не требует настройки коммутатора. \
    mode=6 (balance-alb) - Тоже самое что 5, только входящий трафик тоже распределяется между интерфейсами. Не требует настройки коммутатора, но интерфейсы должны уметь изменять MAC. 
```

## 5


## 6
Можно использовать подсеть 100.64.0.0/26. Будет 62 хоста

## 7
Windows
```
        arp -a просмотр всех arp
        arp -d очистка кеша
        arp -d [inet addr] удаление только одной записи
```    
Linux

```
        arp -a просмотр всех arp
        arp -d очистка кеша
        arp -d [inet addr] удаление только одной записи
    
        ip neigh show просмотр всех arp
        ip neigh add 192.168.0.1 dev ethX добавить новую запись
        ip neigh add 192.168.0.1 dev ethX удалить запись
```
