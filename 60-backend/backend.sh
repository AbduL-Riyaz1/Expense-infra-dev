#!/bin/bash

dnf install ansible -y

# push 
# ansible-playbook -i inventory mysql.yaml

# pull 
ansible-pull -i localhost -u https://github.com/AbduL-Riyaz1/expense-ansible-roles-tf.git main.yaml -e COMPONENT=backend  -e ENVIRONMENT=$1