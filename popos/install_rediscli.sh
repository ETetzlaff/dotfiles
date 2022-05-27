#! /bin/sh

cd /tmp
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
cp src/redis-cli /usr/local/bin/
chmod 755 /usr/local/bin/redis-cli
