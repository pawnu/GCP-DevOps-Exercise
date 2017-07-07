master=$(facter fqdn)
ip=$(facter ipaddress)
dir=$(pwd)
sudo sed -i "1 a masterfqdn=\\$master" $dir/startupagent.sh
sudo sed -i "1 a masterip=\\$ip" $dir/startupagent.sh

