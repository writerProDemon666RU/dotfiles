#!/bin/sh
set -e

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg \
	| apt-key add -
apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" \
	| tee /etc/apt/sources.list.d/sublime-text.list

apt-get update
apt-get install sublime-text
