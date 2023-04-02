
#!/usr/bin/bash

sudo systemctl daemon-reload
sudo rm -f /etc/nginx/sites-enabled/default
#!/bin/bash
sudo apt-get install -y apache2
sudo cp /home/ubuntu/blogprojectdrf/nginx/nginx.conf /etc/nginx/sites-available/blog
sudo ln -s /etc/nginx/sites-available/blog /etc/nginx/sites-enabled/
#sudo ln -s /etc/nginx/sites-available/blog /etc/nginx/sites-enabled
sudo nginx -t
sudo gpasswd -a www-data ubuntu
sudo systemctl restart nginx

