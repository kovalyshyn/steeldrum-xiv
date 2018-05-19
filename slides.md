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
 - Нашу рефералку [ТИЦ](https://m.do.co/c/e56e7c26e8f3)

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
![Ліцензуємо сервер](res/lic.gif)

#
### 00:19:00 
![Створюємо webitel домен](res/domain.png)

#
### 00:21:00 
 - Нашу рефералку [ТИЦ](https://zadarma.com/?ref=0c6f2237dab98e500eeb8fb8a1d63d80)

![Налаштування SIP](res/zadarma.png)

#
### 00:24:00 

![Підключення SIP](res/gw.png)

#
### 00:25:00 

![Лінія зареєстрована](res/gw-up.png)

