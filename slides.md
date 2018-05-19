% webitel
% Віталій Ковалишин
% Травень 19, 2018


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.textinfo}
 ________________________________________
( Розгортання та                         )
( налаштування власної                   )
( хмарної АТС Webitel                    )
 ----------------------------------------
  \
   \   \_\_    _/_/
    \      \__/
           (oo)\_______
           (__)\       )\/\
               ||----w |
               ||     ||
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- За 25 хвилин

#
### 00:00:00 
 - Нашу рефералку [>> тиц <<](https://m.do.co/c/e56e7c26e8f3)

![Створюємо сервер](res/do-create.gif)

#
### 00:02:00 

![Клонуємо з GitHub](res/git-clone.gif)

#
### 00:04:00 

![Налаштовуємо UFW](res/ufw.gif)

#
### 00:05:00 

![Скачуємо образи із Docker Hub](res/images.gif)

#
### 00:08:00

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.bash .numberLines}
cd /opt
sudo git clone https://github.com/webitel/orchestration.git
cd orchestration
cat /opt/orchestration/etc/sysctl.conf >> /etc/sysctl.conf
sysctl -p
cp etc/ufw/applications.d/webitel-server /etc/ufw/applications.d/
ufw allow webitel
./bin/bootstrap.sh pull
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#
### 00:10:00 

![Стартуємо webitel](res/up.gif)

#
### 00:11:00

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.bash .numberLines}
vi env/environment
cp /opt/orchestration/etc/cron.d/webitel /etc/cron.d/
./bin/reebot.sh
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#
### 00:11:00 

![Let's encrypt webitel](res/letsencrypt.gif)

#
### 00:12:00 

![Перезапускаємо з HTTPS](res/reboot.gif)

#
### 00:13:00

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.bash .numberLines}
./bin/bootstrap.sh letsencrypt
vi env/environment
./bin/reebot.sh
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#
### 00:15:00 

![Ліцензіємо сервер](res/lic.gif)

#
