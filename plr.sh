#!/bin/bash

# Install PLR
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'mkdir /vagrant/plr; cp /vagrant/plr*.tgz plr'
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'tar -xzf /vagrant/plr*.tgz -C /vagrant/plr'
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'source /usr/local/hawq/greenplum_path.sh; cd /vagrant/plr/plr; /vagrant/plr/plr/plr_install.sh -f /home/gpadmin/HAWQ_Segment_Hosts.txt'
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'source /usr/local/hawq/greenplum_path.sh; export MASTER_DATA_DIRECTORY=/data1/master/gpseg-1/;  gpstop -ar'
