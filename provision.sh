#!/bin/bash
apt-get update
apt-get install -y python-dev python-pip
pip install ansible
mkdir -p /etc/ansible/roles
ln -s /vagrant /etc/ansible/roles/ansible-logstash
ansible-playbook -i "localhost," -c local /vagrant/playbook.yml
