#!/bin/bash
#set -e -x
sudo hostname jenkins-server
sudo apt update
sudo apt install git -y
sudo apt-get install default-jdk -y
java -version
sudo apt install maven -y
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
echo deb http://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt update
sudo apt install jenkins -y
sudo cat /var/lib/jenkins/secrets/initialAdminPassword > password.txt