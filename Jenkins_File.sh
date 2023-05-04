#!/bin/bash
## Istall java 
 yum install java-1.8.0-openjdk-devel

##Install Jennkins repository 
 wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo 

##disable key check on the repo
 sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo

##Install latest Jenkins version 

  yam install jenkins

##Start the Jenkins Server 

 systemctl start jenkins 

##Check the system status 

 systemctl status jenkins

 ## Enable Jenkins to start on the start 
 systemctl init jenkins

  systemctl enable jenkins 

 ## Adjust the Firewall 

  firewall-cmd --permanent --zone=public --add-port=8080/tcp 

  firewall-cmd --reload

