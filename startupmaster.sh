#!/bin/bash
#Install ntp for syncing time
sudo apt-get install ntpdate
sudo ntpdate pool.ntp.org ; sudo apt-get update && sudo apt-get -y install ntp ; sudo service ntp restart

#Install puppet server which installs puppet master
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
sudo dpkg -i puppetlabs-release-trusty.deb
sudo apt-get update
sudo apt-get install -y puppetserver

#Install puppet gce_compute module
sudo puppet module install puppetlabs-gce_compute

#Get some facts about the master
master=$(facter fdqn)
ip=$(facter ipaddress)

#insert puppetmaster details to hosts file
sudo sed -i '1i\'"$ip $master puppetmaster" /etc/hosts
sudo sed -i '1i\'"127.0.0.1 $master puppetmaster" /etc/hosts

#automatically sign agent certificate
echo "*.$(hostname --domain)" | sudo tee /etc/puppet/autosign.conf

#create site.pp file with docker
echo "include 'docker'" | sudo tee /etc/puppet/manifests/site.pp

#Allow traffic coming from port 8140 for agents
sudo ufw allow 8140

#startup the puppet server
sudo service puppetserver start

