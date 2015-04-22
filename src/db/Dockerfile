#
# moby-db image
#

FROM ubuntu

# disable interactivity
ENV DEBIAN_FRONTEND noninteractive

# add docker folder
ADD docker /docker

# setup apt
RUN apt-get update && apt-get install mysql-server-5.5 -yq

# setup mysql
RUN sed -i "s/^bind-address/#bind-address/" /etc/mysql/my.cnf

# setup init
RUN cat /docker/init.sh >> /etc/bash.bashrc
