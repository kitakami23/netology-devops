## 1
```
c = "a+b" - так как объявили текст (без $) а не переменные
d = "1+2" - shell подставил  значения переменных, но не выполнил арифметическую операцию так как по умолчанию это строки
e = "3"   - так как теперь за счет скобок мы дали команду на выполнение арифметической операции со значениями переменных
```
![](./1.png?raw=true)

## 2
Не хватает закрывающей скобки “)” в месте “while ((1==1)” \
Следует добавить проверку для завершения скрипта:
```
#!/bin/bash
while ((1==1))
do
	curl https://localhost:4757
	if (($? != 0))
	then
		date >> curl.log
	else exit
	fi
done
```

## 3
```
#!/bin/bash
hosts=(192.168.0.1 173.194.222.113 87.250.250.24)
for i in {1..5}
do
date >>hosts.log
		for h in ${hosts[@]}
		do
    			curl -Is --connect-timeout 5 $h:80 >/dev/null
    			echo "	check" $h status=$? >>hosts.log
		done
done
```
![](./3.png?raw=true)

## 4

```
#!/bin/bash	
hosts=(192.168.0.1 173.194.222.113 87.250.250.24)
unreach=0

while (($unreach == 0))
do
date >> hosts.log

		for h in ${hosts[@]}
		do  
    			curl -Is --connect-timeout 5 $h:80 >/dev/null
    			unreach=$?
    			if (($unreach !=0))
    			then
   	 			date >> error.log
            				echo "  HOST unreacheble" $h >> error.log
    			else
            				echo "  check" $h status=$? >>hosts.log
    			fi
		done
done
```
![](./4.png?raw=true)
