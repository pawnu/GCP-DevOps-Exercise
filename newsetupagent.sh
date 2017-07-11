#!/bin/bash

master=$(facter fqdn)
ip=$(facter ipaddress)
dir=$(pwd)

sudo sed -i "1 a masterfqdn=\\$master" $dir/jenkins.sh
sudo sed -i "1 a masterip=\\$ip" $dir/jenkins.sh

sudo sed -i "1 a masterfqdn=\\$master" $dir/sonarqube.sh
sudo sed -i "1 a masterip=\\$ip" $dir/sonarqube.sh

sudo sed -i "1 a masterfqdn=\\$master" $dir/tomcat.sh
sudo sed -i "1 a masterip=\\$ip" $dir/tomcat.sh

sudo sed -i "1 a masterfqdn=\\$master" $dir/nexus.sh
sudo sed -i "1 a masterip=\\$ip" $dir/nexus.sh

sudo sed -i "1 a masterfqdn=\\$master" $dir/splunk.sh
sudo sed -i "1 a masterip=\\$ip" $dir/splunk.sh
