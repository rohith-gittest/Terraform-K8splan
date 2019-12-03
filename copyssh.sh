#! /bin/bash
su - centos
cd /home/centos
cat id_rsa.pub >> /home/centos/.ssh/authorized_keys
