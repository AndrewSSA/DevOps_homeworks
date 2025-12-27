!#/bin/bash
apt-get update
apt-get install -y nginx
echo "Hello I'm VM3" > /vagrant_data/HelloVM3.txt