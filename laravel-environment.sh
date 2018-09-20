#!/usr/bin/env bash

# This Script is intended to be use in the following situation:
# When you have a fresh Ubuntu 16.04.1/2/3/4 installation and wish to
# set a web development environment for PHP developers.

# Stack:
# Server: Apache2
# Database: MySQL
# Language: PHP
# PHP Dependencies:
        # php-pear
        # php7.2-curl
        # php7.2-dev
        # php7.2-gd
        # php7.2-mbstring
        # php7.2-zip
        # php7.2-mysql
        # php7.2-xml
        # php7.0-cli
        # php7.0-common
	# php7.2-sqlite3
        # libapache2-mod-php7.2;
# PhpMyAdmin
# Curl
# Composer
# Git

echo "---------------------------------------"
echo        "Updating & Upgrading Ubuntu"
echo "---------------------------------------"

sudo apt-get update;
sudo apt-get upgrade -y;
sudo apt-get dist-upgrade -y;

echo "---------------------------------------"
echo "Finalizing Updating & Upgrading Ubuntu"
echo "---------------------------------------"

echo "**************************************"
echo "************************************"
echo "**********************************"
echo "********************************"
echo "******************************"
echo "****************************"
echo "**************************"
echo "************************"
echo "**********************"
echo "********************"
echo "******************"
echo "****************"
echo "**************"
echo "************"
echo "**********"
echo "********"
echo "******"
echo "****"
echo "**"
echo "*"

echo "---------------------------------------"
echo  "Initializing Environment Installation"
echo "---------------------------------------"

echo "#================|  Installing Apache2 Server... |================#";

sudo apt-get install -y apache2;

echo "#================|  Finalizing Apache2 Server... |================#";

echo "**************************************"
echo "************************************"
echo "**********************************"
echo "********************************"
echo "******************************"
echo "****************************"
echo "**************************"
echo "************************"
echo "**********************"
echo "********************"
echo "******************"
echo "****************"
echo "**************"
echo "************"
echo "**********"
echo "********"
echo "******"
echo "****"
echo "**"
echo "*"

# Choose between PHP Versions
echo "#================|  Installing PHP... |================#";
echo "####"
echo "Select PHP Version to install:"

echo "1. PHP-7.0"
echo "2. PHP-Latest"

echo "Number? "

read phpVersion

echo "You selected number: $phpVersion"

case $phpVersion in 

	1) 
		echo "#================|  Installing PHP-7.0... |================#";

		sudo apt-get update;
		sudo apt-get install -y php7.0 
					libapache2-mod-php7.0 
					php7.0-fpm 
					php7.0-cli 
					php7.0-common 
					php7.0-mbstring 
					php7.0-gd 
					php7.0-intl 
					php7.0-xml 
					php7.0-mysql 
					php7.0-zip;
		
		echo "**************************************"
        echo "************************************"
        echo "**********************************"
        echo "********************************"
        echo "******************************"
        echo "****************************"
        echo "**************************"
        echo "************************"
        echo "**********************"
        echo "********************"
        echo "******************"
        echo "****************"
        echo "**************"
        echo "************"
        echo "**********"
        echo "********"
        echo "******"
        echo "****"
        echo "**"
        echo "*"

		echo "#================|  End of PHP-7.0 Installation... |================#";;

	2) 
		echo "#================|  Installing PHP-Latest... |================#";

		sudo apt-get install -y python-software-properties;
		sudo add-apt-repository -y ppa:ondrej/php;
		sudo apt-get update;
		sudo apt-get install -y php7.2 
					php-pear 
					php7.2-curl 
					php7.2-dev 
					php7.2-gd 
					php7.2-mbstring 
					php7.2-zip 
					php7.2-mysql 
					php7.2-xml 
					php7.0-cli 
					php7.0-common 
					libapache2-mod-php7.2;
		
		echo "**************************************"
        echo "************************************"
        echo "**********************************"
        echo "********************************"
        echo "******************************"
        echo "****************************"
        echo "**************************"
        echo "************************"
        echo "**********************"
        echo "********************"
        echo "******************"
        echo "****************"
        echo "**************"
        echo "************"
        echo "**********"
        echo "********"
        echo "******"
        echo "****"
        echo "**"
        echo "*"

		echo "#================|  End of PHP-Latest Installation... |================#";;

	*) echo "#=====|  Sorry, you must be 1 or 2, exiting... |=====#";;
esac

echo "#================|  Finalizing PHP Installation... |================#";

echo "**************************************"
echo "************************************"
echo "**********************************"
echo "********************************"
echo "******************************"
echo "****************************"
echo "**************************"
echo "************************"
echo "**********************"
echo "********************"
echo "******************"
echo "****************"
echo "**************"
echo "************"
echo "**********"
echo "********"
echo "******"
echo "****"
echo "**"
echo "*"

echo "#================|  Installing MySQL... |================#";

sudo apt-get update;
sudo apt-get upgrade;
sudo apt-get install mysql-server -y;

echo "**************************************"
echo "************************************"
echo "**********************************"
echo "********************************"
echo "******************************"
echo "****************************"
echo "**************************"
echo "************************"
echo "**********************"
echo "********************"
echo "******************"
echo "****************"
echo "**************"
echo "************"
echo "**********"
echo "********"
echo "******"
echo "****"
echo "**"
echo "*"

echo "#================|  Installing PhpMyAdmin... |================#";

sudo apt-get update;
sudo apt-get install -y phpmyadmin php-gettext;

echo "**************************************"
echo "************************************"
echo "**********************************"
echo "********************************"
echo "******************************"
echo "****************************"
echo "**************************"
echo "************************"
echo "**********************"
echo "********************"
echo "******************"
echo "****************"
echo "**************"
echo "************"
echo "**********"
echo "********"
echo "******"
echo "****"
echo "**"
echo "*"

echo "In following options select:"
echo "Server: apache2"
echo "dbconfig-common: yes"
echo "USR: root"
echo "PWD: root"

echo "**************************************"
echo "************************************"
echo "**********************************"
echo "********************************"
echo "******************************"
echo "****************************"
echo "**************************"
echo "************************"
echo "**********************"
echo "********************"
echo "******************"
echo "****************"
echo "**************"
echo "************"
echo "**********"
echo "********"
echo "******"
echo "****"
echo "**"
echo "*"



sudo phpenmod mcrypt;
sudo phpenmod mbstring;

echo "**************************************"
echo "************************************"
echo "**********************************"
echo "********************************"
echo "******************************"
echo "****************************"
echo "**************************"
echo "************************"
echo "**********************"
echo "********************"
echo "******************"
echo "****************"
echo "**************"
echo "************"
echo "**********"
echo "********"
echo "******"
echo "****"
echo "**"
echo "*"

sudo systemctl restart apache2;

echo "#================|  Finalizing PhpMyAdmin Installation... |================#";

echo "**************************************"
echo "************************************"
echo "**********************************"
echo "********************************"
echo "******************************"
echo "****************************"
echo "**************************"
echo "************************"
echo "**********************"
echo "********************"
echo "******************"
echo "****************"
echo "**************"
echo "************"
echo "**********"
echo "********"
echo "******"
echo "****"
echo "**"
echo "*"

echo "#================|  Installing GIT... |================#";

sudo apt-get install git -y;

echo "#================|  Finalizing GIT Installation... |================#";

echo "**************************************"
echo "************************************"
echo "**********************************"
echo "********************************"
echo "******************************"
echo "****************************"
echo "**************************"
echo "************************"
echo "**********************"
echo "********************"
echo "******************"
echo "****************"
echo "**************"
echo "************"
echo "**********"
echo "********"
echo "******"
echo "****"
echo "**"
echo "*"

echo "#================|  Installing Curl... |================#";

sudo apt-get install -y curl;

echo "#================|  Finalizing Curl Installation... |================#";

echo "**************************************"
echo "************************************"
echo "**********************************"
echo "********************************"
echo "******************************"
echo "****************************"
echo "**************************"
echo "************************"
echo "**********************"
echo "********************"
echo "******************"
echo "****************"
echo "**************"
echo "************"
echo "**********"
echo "********"
echo "******"
echo "****"
echo "**"
echo "*"

echo "#================|  Installing Composer... |================#";

cd ~;
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer;
composer;

echo "#================|  Finalizing Composer Installation... |================#";

echo "**************************************"
echo "************************************"
echo "**********************************"
echo "********************************"
echo "******************************"
echo "****************************"
echo "**************************"
echo "************************"
echo "**********************"
echo "********************"
echo "******************"
echo "****************"
echo "**************"
echo "************"
echo "**********"
echo "********"
echo "******"
echo "****"
echo "**"
echo "*"

echo "---------------------------------------"
echo  "Finalizing Environment Installation"
echo "---------------------------------------"

echo "---------------------------------------"
echo        "Verifying Services Status"
echo "---------------------------------------"

sudo service apache2 status;
echo "!! Press letter 'Q' to exit !!"

echo "PHP Version"
php -v;

echo "**************************************"
echo "************************************"
echo "**********************************"
echo "********************************"
echo "******************************"
echo "****************************"
echo "**************************"
echo "************************"
echo "**********************"
echo "********************"
echo "******************"
echo "****************"
echo "**************"
echo "************"
echo "**********"
echo "********"
echo "******"
echo "****"
echo "**"
echo "*"

echo "---------------------------------------"
echo        "End of Environment Setup"
echo "---------------------------------------"

echo "---------------------------------------"
echo                "GoodBye!!"
echo "---------------------------------------"
