#!/bin/bash

#Allow puppet to use tcp:8140
sudo ufw allow 8140

#Install ntp for syncing time
sudo apt-get install -y ntpdate
sudo ntpdate pool.ntp.org ; sudo apt-get update && sudo apt-get -y install ntp ; sudo service ntp restart

#Install puppet
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
sudo dpkg -i puppetlabs-release-trusty.deb
sudo apt-get update
sudo apt-get install -y puppet


#Get some facts about the agent
agent=$(facter fdqn)
myip=$(facter ipaddress)

#insert puppet agent details to hosts file
sudo sed -i '1i\'"$myip $agent puppet" /etc/hosts
sudo sed -i '1i\'"127.0.0.1 $agent puppet" /etc/hosts
sudo sed -i '1i\'"$masterip $masterfqdn puppetmaster" /etc/hosts

#Insert servername
sudo sed -i "1 a server=\\$masterfqdn" /etc/puppet/puppet.conf

#Get docker
sudo wget -qO- https://get.docker.com/ | sh

#Pull bitbucket
sudo docker pull atlassian/bitbucket-server

#Run bitbucket
sudo docker run -v /data/bitbucket:/var/atlassian/application-data/bitbucket --name="bitbucket" -d -p 7990:7990 -p 7999:7999 atlassian/bitbucket-server

#Start the agent
sudo puppet resource service puppet ensure=running enable=true

#Test agent
sudo puppet agent --test --server=$masterfqdn
