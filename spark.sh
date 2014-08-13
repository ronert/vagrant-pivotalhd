#!/bin/bash

# Install Spark
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'mkdir /vagrant/spark; tar -xzf /vagrant/spark*.tgz -C /vagrant/spark'
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'echo "export HADOOP_CONF_DIR=/etc/gphd/hadoop/conf" >> /home/gpadmin/.bashrc'
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'export SPARKPATH=`find /vagrant/spark -iname bin`; echo "export PATH=$SPARKPATH:$PATH" >> /home/gpadmin/.bashrc'
