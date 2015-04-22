# install mysql db
if [ ! -f /var/lib/mysql/ibdata1 ]; then
  mysql_install_db
fi

# run mysql
service mysql start

# update permissions
echo "GRANT ALL ON *.* TO moby@'%' IDENTIFIED BY '6fRFZ1ZYkrf2BeqI' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql
echo "GRANT ALL PRIVILEGES ON *.* TO 'debian-sys-maint'@'localhost' IDENTIFIED BY '$(grep -m 1 password /etc/mysql/debian.cnf | awk '{print $3}')'" | mysql
echo "CREATE DATABASE \`moby_alpha\` CHARACTER SET utf8 COLLATE utf8_general_ci" | mysql
