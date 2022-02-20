#! /bin/bash

yum update -y
python3 --version
sudo pip3 install flask
sudo yum install git -y
mkdir flask
cd flask
mkdir templates
cd templates
sudo wget https://raw.githubusercontent.com/leyla-kose/aws_projects/main/Project-001-Roman-Numerals-Converter/templates/index.html
sudo wget https://raw.githubusercontent.com/leyla-kose/aws_projects/main/Project-001-Roman-Numerals-Converter/templates/result.html
cd ..
sudo wget https://raw.githubusercontent.com/leyla-kose/aws_projects/main/Project-001-Roman-Numerals-Converter/app.py
sudo python3 app.py