sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf

if [ -f /etc/nginx/sites-enabled/default ]; then
  sudo rm /etc/nginx/sites-enabled/default
fi

sudo /etc/init.d/nginx restart

#sudo cp -f etc/gunicorn.conf /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart
