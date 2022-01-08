#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
ln -fs /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
apt-get update && apt-get install -y vim curl git tzdata
dpkg-reconfigure --frontend noninteractive tzdata

