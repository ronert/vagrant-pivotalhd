#!/bin/bash

# Install and launch h2o
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'cd /vagrant; wget http://h2o-release.s3.amazonaws.com/h2o/rel-lambert/5/h2o-2.6.1.5.zip'
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'unzip h2o-2.6.1.5.zip'
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'mv h2o-2.6.1.5 /home/gpadmin/h2o-2.6.1.5'
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'cd /home/gpadmin/h2o-2.6.1.5/hadoop'
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'nohup hadoop jar h2odriver_hdp2.1.jar water.hadoop.h2odriver -libjars ../h2o.jar -mapperXmx 1g -nodes 1 -output h2oout'
