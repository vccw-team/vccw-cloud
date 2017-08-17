#!/usr/bin/env bash

set -ex

PLAYBOOK_DIR=$HOME/.playbook
PLAYBOOK_REPO=https://github.com/vccw-team/vccw-cloud

ansible localhost -m git -a "repo=${PLAYBOOK_REPO} dest=${PLAYBOOK_DIR} version=HEAD"
cd $PLAYBOOK_DIR
ansible-playbook provision/playbook.yml --connection=local
