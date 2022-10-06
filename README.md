## 1
  vagrant@ubnt-netology:~$ telnet stackoverflow.com 80
  Trying 151.101.129.69...
  Connected to stackoverflow.com.
  Escape character is '^]'.
  GET /questions HTTP/1.0
  HOST: stackoverflow.com

  HTTP/1.1 301 Moved Permanently
  Connection: close
  Content-Length: 0
  Server: Varnish
  Retry-After: 0
  Location: https://stackoverflow.com/questions
  Accept-Ranges: bytes
  Date: Thu, 06 Oct 2022 16:45:27 GMT
  Via: 1.1 varnish
  X-Served-By: cache-ams21040-AMS
  X-Cache: HIT
  X-Cache-Hits: 0
  X-Timer: S1665074728.523867,VS0,VE0
  Strict-Transport-Security: max-age=300
  X-DNS-Prefetch-Control: off

  Connection closed by foreign host.

## 2

