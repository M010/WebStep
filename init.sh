sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default

sudo /etc/init.d/nginx restart
sudo /etc/init.d/gunicorn restart

gunicorn -w 4 -b 0.0.0.0:8000 ask.ask.wsgi:application


