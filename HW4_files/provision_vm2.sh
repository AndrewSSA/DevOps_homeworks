!#/bin/bash
apt-get update
apt-get install -y nginx
echo "Hello I'm VM2" > /vagrant_data/HelloVM2.txt