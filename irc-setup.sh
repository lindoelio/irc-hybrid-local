#!/bin/sh

# Configuring pre-requisites

sudo apt install -y build-essential cmake openssl libssl-dev wget
sudo apt autoclean

adduser irc-admin --system --no-create-home
usermod -a -G sudo irc-admin

sudo chmod +x ./irc-setup-hybrid.sh
sudo chmod +x ./irc-setup-anope.sh

# Configuring Hybrid IRC Network and Anope Services

./irc-setup-hybrid.sh
./irc-setup-anope.sh

