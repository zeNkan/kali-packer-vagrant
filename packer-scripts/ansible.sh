#!/bin/bash

# Install Ansible repository.
export DEBIAN_FRONTEND=noninteractive
apt-get -y update -qq --option "Dpkg::Options::=--force-confold"
apt-get -y install python3-pip python3-apt

# Install Ansible.
pip3 install --upgrade ansible
