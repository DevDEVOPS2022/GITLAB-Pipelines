#! /bin/bash
export DEBIAN_FRONTEND=noninteractive

echo Installing packages
sudo apt-get update
sudo apt-get install -y curl openssh-server ca-certificates perl

echo Installing Gitlab
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
sudo EXTERNAL_URL="http://localhost:80" apt-get -y install gitlab-ce
