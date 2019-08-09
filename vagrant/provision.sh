# Install php and other packages needed
sudo apt install software-properties-common python-software-properties -y
sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php -y
sudo apt update -y
sudo apt install php7.3 php7.3-cli php7.3-common php7.3-mbstring php7.3-intl  -y
sudo apt install curl git unzip -y

# Remove apache packages and install nginx
sudo apt purge apache2 apache2-data apache2-utils -y
sudo apt install nginx

# Install Composer
sudo curl -s https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer

# Install Node
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt install -y nodejs

sudo apt autoremove -y

# Run Composer
cd /var/www
sudo -Hu vagrant composer install
