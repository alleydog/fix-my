# fix-my-trouble

Установка недостающих пакетов
sudo apt install kbd dirmngr mc links curl cmus mlocate mtr-tiny mpv

Решение проблем индикатором раскладки
pkill dde-dock

Google
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

Сервис
sudo nano /etc/systemd/system/fix-my-trouble.service

>> fix-my-trouble.service
[Unit]
Description=Fix My Trouble
After=multi-user.target

[Service]
Type=idle
ExecStart=/etc/systemd/system/fix-my-trouble.sh

[Install]
WantedBy=multi-user.target

Скрипт
sudo nano /etc/systemd/system/fix-my-trouble.sh

>> fix-my-trouble.sh
#!/bin/sh -e
sudo setkeycodes 3a 42
sudo iptables -t mangle -A POSTROUTING -j TTL --ttl-set 65

Права
sudo chmod u+x /etc/systemd/system/fix-my-trouble.sh
sudo chmod 644 /etc/systemd/system/fix-my-trouble.service

Запуск
sudo systemctl daemon-reload
sudo systemctl enable /etc/systemd/system/fix-my-trouble.service
