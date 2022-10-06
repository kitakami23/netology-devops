## 1
 vagrant@ubnt-netology:~$ telnet stackoverflow.com 80 \
 Trying 151.101.129.69... \
 Connected to stackoverflow.com. \
 Escape character is '^]'. \
 GET /questions HTTP/1.0 \
 HOST: stackoverflow.com 

 HTTP/1.1 301 Moved Permanently \
 Connection: close  
 Content-Length: 0 \
 Server: Varnish \
 Retry-After: 0 \
 Location: https://stackoverflow.com/questions \
 Accept-Ranges: bytes \
 Date: Thu, 06 Oct 2022 16:45:27 GMT \
 Via: 1.1 varnish \
 X-Served-By: cache-ams21040-AMS \
 X-Cache: HIT \
 X-Cache-Hits: 0 \
 X-Timer: S1665074728.523867,VS0,VE0 \
 Strict-Transport-Security: max-age=300 \
 X-DNS-Prefetch-Control: off 

 Connection closed by foreign host. 

Код 301 означает, что запрашиваемый был на постоянной основе перемещён в новое месторасположение, и указывает на то, что текущие ссылки, использующие данный URL, должны быть обновлены. Адрес нового месторасположения ресурса указывается в поле Location получаемого в ответ заголовка пакета протокола HTTP

## 2
![](./2.png?raw=true)
![](./2-1.png?raw=true)

## 3
![](./4.png?raw=true)

## 4
Hosting Solution Ltd \
AS14576

## 5
![](./5.png?raw=true)

AS14576 \
AS49127 \
AS15169 

## 6

На стороне Google - в среднем 46мс

## 7

8.8.8.8
8.8.4.4
![](./7.png?raw=true)

## 8
![](./8.png?raw=true)
