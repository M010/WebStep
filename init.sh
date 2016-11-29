mv /home/box/WebStep /home/box/web
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/gunicorn-django.conf /etc/gunicorn.d/test-django
sudo /etc/init.d/nginx restart
sudo /etc/init.d/gunicorn restart

# gunicorn -w 4 -b 0.0.0.0:8000 ask.wsgi:application


