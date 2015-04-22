
# setup git
cd /var/git/tate-js
git checkout ep
cd /var/git/tate-php
git checkout ep

# setup sites
ln -s /var/git/Moby/web /var/www/alpha.moby
ln -s /var/git/Moby/api /var/www/alpha.api.moby

# start redis
service redis-server start

# start apache
service apache2 start

# go to homedir
cd ~
