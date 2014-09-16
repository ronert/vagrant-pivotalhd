#!/bin/bash

# Install h2o
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'cd /vagrant; wget http://h2o-release.s3.amazonaws.com/h2o/rel-lambert/5/h2o-2.6.1.5.zip'
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'unzip h2o-2.6.1.5.zip'
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'cd h2o-2.6.1.5'
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 'nohup java -Xmx1g -jar h2o.jar'
sshpass -p gpadmin ssh -o StrictHostKeyChecking=no gpadmin@phd1 ''
