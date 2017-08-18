#!/usr/bin/env bash

set -ex

sudo apt install ansible

PLAYBOOK_DIR=$HOME/.playbook
PLAYBOOK_REPO=https://github.com/vccw-team/vccw-cloud

ansible localhost -m git -a "repo=${PLAYBOOK_REPO} dest=${PLAYBOOK_DIR} version=HEAD"
cd $PLAYBOOK_DIR

if [ ! -f hosts ]; then
  cat << EOS > hosts
hosts=localhost
EOS
fi

ansible-playbook provision/playbook.yml --connection=local
