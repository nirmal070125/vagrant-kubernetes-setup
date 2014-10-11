#!/bin/bash

echo " ---> Step 0: Flush everything"
vagrant destroy -f

echo " ---> Step 1: Provision vagrant"
vagrant up

echo " ---> Step 2: Setup ssh tunnel into master"
vagrant ssh-config master > ssh.config
