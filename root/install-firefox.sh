#!/bin/sh -e
# http://mozilla.debian.net/
curl http://mozilla.debian.net/archive.asc | apt-key add -
echo "deb http://mozilla.debian.net/ jessie-backports firefox-release" > /etc/apt/sources.list.d/mozilla.list
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y firefox
