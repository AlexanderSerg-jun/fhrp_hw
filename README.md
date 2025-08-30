# Домашнее задание 
`Задание 1`

- `Дана схема для Cisco Packet Tracer, рассматриваемая в лекции.`
- `На данной схеме уже настроено отслеживание интерфейсов маршрутизаторов Gi0/1 (для нулевой группы)`
- `Необходимо аналогично настроить отслеживание состояния интерфейсов Gi0/0 (для первой группы).`
- `Для проверки корректности настройки, разорвите один из кабелей между одним из маршрутизаторов и Switch0 и запустите ping между PC0 и Server0.`
- `На проверку отправьте получившуюся схему в формате pkt и скриншот, где виден процесс настройки маршрутизатора.`

# Решение 
![Image alt](https://github.com/AlexanderSerg-jun/fhrp_hw/blob/main/img/router.png)

![Image alt](https://github.com/AlexanderSerg-jun/fhrp_hw/blob/main/img/ping_with_2_line.png)

![Image alt](https://github.com/AlexanderSerg-jun/fhrp_hw/blob/main/img/ping_with_1_line.png)

!

[Схема решения](https://github.com/AlexanderSerg-jun/fhrp_hw/blob/main/file/hsrp_advanced_my.pkt)

### Задание 2
- `Запустите две виртуальные машины Linux, установите и настройте сервис Keepalived как в лекции, используя пример конфигурационного [файла](1/keepalived-simple.conf).`
- `Настройте любой веб-сервер (например, nginx или simple python server) на двух виртуальных машинах`
- `Напишите Bash-скрипт, который будет проверять доступность порта данного веб-сервера и существование файла index.html в root-директории данного веб-сервера.`
- `Настройте Keepalived так, чтобы он запускал данный скрипт каждые 3 секунды и переносил виртуальный IP на другой сервер, если bash-скрипт завершался с кодом, отличным от нуля (то есть порт веб-сервера был недоступен или отсутствовал index.html). Используйте для этого секцию vrrp_script`
- `На проверку отправьте получившейся bash-скрипт и конфигурационный файл keepalived, а также скриншот с демонстрацией переезда плавающего ip на другой сервер в случае недоступности порта или файла index.html`

### Решение

[Получившейся bash-скрипт](https://github.com/AlexanderSerg-jun/fhrp_hw/blob/main/file/check.sh)

[Конфигурационный файл keepalived](https://github.com/AlexanderSerg-jun/fhrp_hw/blob/main/file/keepalived.conf)

Сервер nginx на 192.168.0.108 работает
![Сервер nginx на 192.168.0.108 работает](https://github.com/AlexanderSerg-jun/fhrp_hw/blob/main/img/Screenshot_1.png)

Сервер nginx на 192.168.0.110 работает
![Сервер nginx на 192.168.0.110 работает](https://github.com/AlexanderSerg-jun/fhrp_hw/blob/main/img/Screenshot_2.png)

Плавающий IP-адрес 192.168.0.220 ссылается на 192.168.0.108
![Плавающий IP-адрес ссылается на 192.168.0.110](https://github.com/AlexanderSerg-jun/fhrp_hw/blob/main/img/Screenshot_3.png)

Скриншот сетевого интерфейса машины 192.168.0.108, где присутствует плавющий IP-адрес
![Image alt](https://github.com/AlexanderSerg-jun/fhrp_hw/blob/main/img/Screenshot_4.png)

Скриншот сетевого интерфейса машины 192.168.0.110, где отсутствует плавающий IP-адрес
![Image alt](https://github.com/AlexanderSerg-jun/fhrp_hw/blob/main/img/Screenshot_5.png)

Изменим название файла, на который ссылается скрипт 
![Image alt](https://github.com/AlexanderSerg-jun/fhrp_hw/blob/main/img/Screenshot_6.png)

На сервере nginx ошибка
![Image alt](https://github.com/AlexanderSerg-jun/fhrp_hw/blob/main/img/Screenshot_7.png)

Плавающий IP-адрес 192.168.0.200 ссылается на 192.168.0.110
![Image alt](https://github.com/AlexanderSerg-jun/fhrp_hw/blob/main/img/Screenshot_8.png)

Скриншоты сетевых интерфейсов, где мы видим, что плавающий IP-адрес появился на 192.168.56.15 интерфейсе
![Image alt](https://github.com/AlexanderSerg-jun/fhrp_hw/blob/main/img/Screenshot_5.png)
![Image alt](https://github.com/AlexanderSerg-jun/fhrp_hw/blob/main/img/Screenshot_6.png)
