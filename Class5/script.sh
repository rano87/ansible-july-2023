#!/bin/bash

if [ -f passwords ]; then
ansible-vault decrypt file
ansible-playbook -i hosts main.yml
ansible-vault encrypt file
else
ansible-playbook -i hosts main.yml
ansible-vault encrypt file
fi