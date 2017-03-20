#!/bin/bash
apt-get update
echo "Done apt-get"
echo "Installing PHP5-CLI CURL"
apt-get -y install php5-cli curl
echo "Done"
cd /tmp
wget https://raw.githubusercontent.com/MsotoM/FOSPunga/master/install_panel.php
php install.php
wget https://raw.githubusercontent.com/MsotoM/FOSPunga/master/db_install.sh
chmod 755 db_install.sh
./db_install.sh
