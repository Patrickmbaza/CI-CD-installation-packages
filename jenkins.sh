#!/bin/bash
#Install java
sudo apt update -y
sudo apt install -y openjdk-17-jdk
sudo systemctl restart java
sudo systemctl restart java

#Install maven
sudo wget https://dlcdn.apache.org/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.tar.gz
sudo tar -xvf apache-maven-3.9.9-bin.tar.gz
sudo cp -r apache-maven-3.9.9/ /opt
cd /opt
sudo apt install maven -y
sudo systemctl restart maven
sudo systemctl enable maven

#Install jenkins
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
 echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
 sudo apt-get update
  sudo apt-get install fontconfig openjdk-17-jre
  sudo apt-get install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
