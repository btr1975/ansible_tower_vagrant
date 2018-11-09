#!/bin/bash

# Description: Vagrant Setup Ubuntu 16.04 LTS for Ansible
# Author: Benjamin P. Trachtenberg
# Version: 1.0.0
#
# Step 1:
#     Download Ansible-Tower at: http://releases.ansible.com/ansible-tower/setup/
#     Download the version or the tar.gz that you want
#     Current is ansible-tower-setup-3.3.1-1.tar.gz
#
# Step 2:
#     Extract the tar.gz using the following command
#     tar xvzf ansible-tower-setup-3.3.1-1.tar.gz
#
# Step 3:
#     Go into the directory unzipping creates in our case it will be
#     ansible-tower-setup-3.3.1-1
#
# Step 4:
#     Edit the file called inventory
#     Variables to modify:
#         admin_password='' <-- This will be admins password
#         pg_password='' <-- This will be the password of the postgres dB
#         rabbitmq_password='' <-- This will be the rabbit password
#
#     You will only really need to know the admin password to log in to the web GUI
#
# Step 5:
#     Run the setup.sh, ansible will take over from there and install everything
#
apt-get update
apt-get install -y software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get install -y ansible



