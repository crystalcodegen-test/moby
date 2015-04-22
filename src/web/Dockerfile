#
# moby-web image
#

FROM ubuntu

# add docker folder
ADD docker /docker

# install packages
RUN apt-get update && apt-get install $(cat /docker/apt) -y

# setup db hosts
RUN cat /docker/hosts >> /etc/hosts

# install pecl extensions
#RUN pecl=$(cat /docker/pecl) && yes '' | pecl install $pecl

# create log directory
RUN mkdir /var/log/moby
RUN chmod -R 777 /var/log/moby

# setup apache vhosts
RUN cat /docker/apache.conf >> /etc/apache2/apache2.conf

# setup apache
RUN a2enmod rewrite
RUN a2enmod vhost_alias
RUN service apache2 restart

# setup php
RUN cat /docker/php.ini >> /etc/php5/apache2/php.ini
RUN cat /docker/php.ini >> /etc/php5/cli/php.ini

# setup sites
RUN cat /docker/init.sh >> /etc/bash.bashrc
