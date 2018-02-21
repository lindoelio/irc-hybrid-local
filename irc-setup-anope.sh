#!/bin/sh

# Installing Anope Services

sudo mkdir /opt/anope

cd ~ && wget https://github.com/anope/anope/releases/download/2.0.2/anope-2.0.2-source.tar.gz

tar -xzf anope-2.0.2-source.tar.gz && rm anope-2.0.2-source.tar.gz

cp anope-config.cache anope-2.0.2-source/config.cache

cd anope-2.0.2-source
./Config -quick && cd build
sudo make && sudo make install
cd .. && sudo rm -rf anope-2.0.2-source


# Configuring and starting Anope Services

sudo chown -R irc-admin /opt/anope

cp anope-services.conf /opt/anope/conf/services.conf

cd /opt/anope/bin
sudo runuser -u irc-admin ./anoperc start
