#!/usr/bin/env bash

set -ex

sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -q -o 'Dpkg::Options::=--force-confdef' -o 'Dpkg::Options::=--force-confold' upgrade dist
sudo apt install ansible git -y

PLAYBOOK_DIR=$HOME/.playbook
PLAYBOOK_REPO=https://github.com/vccw-team/vccw-cloud

ansible localhost -m git -a "repo=${PLAYBOOK_REPO} dest=${PLAYBOOK_DIR} version=HEAD"
cd $PLAYBOOK_DIR

if [ ! -f hosts ]; then
  cat << EOS > hosts
[default]
localhost
EOS
fi

ansible-playbook provision/playbook.yml --connection=local
