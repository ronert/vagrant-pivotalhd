#!/bin/bash

# Install MADlib
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'mkdir /vagrant/madlib; tar -xzf /vagrant/madlib*.tgz -C /vagrant/madlib'
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'source /usr/local/hawq/greenplum_path.sh; mv "/vagrant/madlib/HAWQ 1.2" /vagrant/madlib/madlib_1.6; cd /vagrant/madlib/madlib_1.6; /vagrant/madlib/madlib_1.6/hawq_install.sh -r /vagrant/madlib/madlib_1.6/madlib*.rpm  -f /home/gpadmin/HAWQ_Segment_Hosts.txt'
