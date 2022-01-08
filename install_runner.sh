#! /bin/bash
export DEBIAN_FRONTEND=noninteractive
export ARCH=amd64

sudo apt-get update
curl -LJO "https://gitlab-runner-downloads.s3.amazonaws.com/latest/deb/gitlab-runner_${ARCH}.deb"
dpkg -i gitlab-runner_${ARCH}.deb

# gitlab runner one-step registration
#sudo gitlab-runner register \
#  --non-interactive \
#  --url "http://192.168.200.10/" \
#  --registration-token "PROJECT_REGISTRATION_TOKEN" \
#  --executor "shell" \
#  --description "shell-runner" \
#  --tag-list "shell-runner" \
#  --run-untagged="true" \
#  --locked="false" \
#  --access-level="not_protected"

