#!/bin/bash
yum update -y
yum install -y httpd
systemctl restart httpd
systemctl enable httpd
cd /var/www/html/
wget https://www.free-css.com/assets/files/free-css-templates/download/page278/brandon.zip
unzip brandon.zip
#mv solar-energy-website-template/ solar
mv -f brandon/* .
systemctl restart httpd
systemctl enable httpd
