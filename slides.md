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

# webitel
- Українська платформа телефонії з відкритим кодом
- Понад 10 000 користувачів у світі
- Широкі функціональні можливостi
- Аудіо та відео конфернції
- Шифрування розмов

# Цифри
- 50 серверів у 12 країнах
- 500 000 дзвінків у день
- 50 000 000 секунд щоденних розмов

# Подарунок 

- 10 користувачів на 1 рік безкоштовно o_O
- cтворіть власну АТС на своєму сервері DigitalOcean
- та експерементуйте з Webitel!

# Давайте спільно налаштуємо Webitel

- ;) зізнаюсь, що поки ви пили пиво, я вже це зробив...

# 00:00:00 
 - Нашу рефералку [ТИЦ](https://m.do.co/c/e56e7c26e8f3)

![Створюємо сервер](res/do-create.gif)

# 00:02:00 

![Клонуємо з GitHub](res/git-clone.gif)

# 00:04:00 

![Налаштовуємо середовище](res/ufw.gif)

# 00:05:00

![Завантажуємо образи із Docker Hub](res/images.gif)

# 00:08:00

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

# 00:10:00 

![Стартуємо webitel](res/up.gif)

# 00:11:00

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.bash .numberLines}
vi env/environment
cp /opt/orchestration/etc/cron.d/webitel /etc/cron.d/
./bin/reebot.sh
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# 00:11:00 

![Let's encrypt webitel](res/letsencrypt.gif)

# 00:12:00 

![Перезапускаємо з HTTPS](res/reboot.gif)

# 00:13:00

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.bash .numberLines}
./bin/bootstrap.sh letsencrypt
vi env/environment
./bin/reebot.sh
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# 00:15:00 

![Ліцензуємо сервер](res/lic.gif)

# 00:19:00 

![Створюємо webitel домен](res/domain.png)

# 00:21:00 
 - Нашу рефералку [ТИЦ](https://zadarma.com/?ref=0c6f2237dab98e500eeb8fb8a1d63d80)

![Налаштування SIP](res/zadarma.png)

# 00:24:00 

![Підключення SIP](res/gw.png)

# 00:25:00 

![Лінія зареєстрована](res/gw-up.png)

# Підключаємо телефон

- Створити користувача
- Зареєструвати SIP телефон
- [Вхідна маршрутизація](json/in.json)
- [Вихідна маршрутизація](json/out.json)

# Телефонуємо

## +380 89 120 5014

# Дякую за увагу!

    Telegram: @webitel
    v.kovalyshyn (at) webitel.com

# PS

Для одержання безкоштовної ліцензії та дотакових матеріалів - напишіть запит на мій Email у вільній формі :-)

### v.kovalyshyn (at) webitel.com
