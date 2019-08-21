#!/bin/bash

if [ -f /etc/nginx/sites-enabled/default ]; then
  sudo rm /etc/nginx/sites-enabled/default
fi

# Nginx
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart


#Update Gunicorn
sudo apt-get update
sudo apt-get install -y python3.5
sudo apt-get install -y python3.5-dev
sudo unlink /usr/bin/python3
sudo ln -s /usr/bin/python3.5 /usr/bin/python3
sudo pip3 install --upgrade pip
sudo pip3 install --upgrade django==2.1
sudo pip3 install --upgrade gunicorn

# Gunicorn
sudo pkill -f gunicorn
sudo gunicorn -c /home/box/web/etc/gunicorn_hello.py hello:application &
sudo gunicorn -c /home/box/web/etc/gunicorn_ask.py ask.wsgi:application &

