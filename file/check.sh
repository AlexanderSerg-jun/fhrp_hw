#!/bin/bash

server=192.168.0.108
port=80
filename="/var/www/html/index.nginx-debian.html"
nc -vz $server $port
chck=$(echo $?)
if [ $chck -eq 0 ]; then
 if  [ -f $filename ]; then
#  echo Сервер $server, порт $port и файл $filename доступны"
  exit 0
 else
#  echo Сервер $server, порт $port доступны, файл $filename недоступен"
  exit 1
 fi
else
 if [ -f $filename ]; then
#  echo Сервер $server, порт $port недоступны, файл $filename доступен"
  exit 1
 else
#  echo Сервер $server, порт $port недоступны, файл $filename недоступен"
  exit 1
 fi
fi
