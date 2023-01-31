#!/bin/bash

    #Author : Utrains
    #Date : 18-Nov-2022

## ---------- script to Install Jenkins on centos 7 server -----------------

##Step 1: Install Java

yum install java-11-openjdk-devel -y

##Step 2: Enable the Jenkins repository

curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo

rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

##Step 3: Install the latest stable version of Jenkins

yum install jenkins -y

systemctl start jenkins

systemctl status jenkins

systemctl enable jenkins