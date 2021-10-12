#! /bin/sh
#installing java
sudo yum install java-1.8.0-devel &&
sudo /usr/sbin/alternatives --config java &&
sudo /usr/sbin/alternatives --config javac &&
#installing maven to update project
sudo wget https://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo &&
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo &&
sudo yum install -y apache-maven &&

#https://gist.github.com/npearce/6f3c7826c7499587f00957fee62f8ee9 for commands description
sudo amazon-linux-extras install docker &&
sudo service docker start &&
sudo usermod -a -G docker ec2-user &&
sudo chkconfig docker on &&
sudo yum install -y git &&
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose &&
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose &&
sudo chmod +x /usr/local/bin/docker-compose