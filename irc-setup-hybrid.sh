#!/bin/sh

# Installing Hybrid (IRC Network Server)

sudo mkdir /opt/hybrid

cd ~ && wget http://prdownloads.sourceforge.net/ircd-hybrid/ircd-hybrid-8.2.8.tgz

tar -xzf ircd-hybrid-8.2.8.tgz && sudo rm ircd-hybrid-8.2.8.tgz

cd ircd-hybrid-8.2.8
./configure --prefix=/opt/hybrid
sudo make && make install
cd .. && sudo rm -rf ircd-hybrid-8.2.8


# Configuring and starting Hybrid

sudo chown -R irc-admin /opt/hybrid

cp hybrid-ircd.conf /opt/hybrid/etc/ircd.conf

cd /opt/hybrid/bin
sudo runuser -u irc-admin ./ircd

