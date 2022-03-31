#!/bin/bash

set -ex
apt-get update -y
apt-get install git -y
apt-get install python3 -y
apt install -y unzip

cd /home/ubuntu/
wget https://github.com/leyla-kose/aws_projects/archive/refs/heads/main.zip  #copy link address of 'DOWNLOAD ZIP' of your github repository (downloads your public repository to your ec2).
unzip main.zip

cd aws_projects-main/Project-503-Capstone-Project-Blog-Page-App-\(Django\)-on-AWS-Environment/
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt

cd src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80


