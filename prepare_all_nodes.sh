#!/bin/bash
 
# Remove any pre-installed Ruby or Puppet packages to avoid 
# conflicts with Ruby/Puppet packages installed by PCC.
yum -y remove puppet ruby facter ruby-augeas ruby-libs libselinux-ruby
 
# Install the packages required for all cluster and admin nodes 
yum -y install postgresql-devel nc expect ed ntp dmidecode pciutils libgfortran wget unzip emacs

# Set timezone and run NTP (set to Europe - Amsterdam time).

/etc/init.d/ntpd stop; 
mv /etc/localtime /etc/localtime.bak; 
ln -s /usr/share/zoneinfo/Europe/Amsterdam /etc/localtime; 
/etc/init.d/ntpd start

# Create and set the hosts file like:
#
# 10.211.55.100 pcc.localdomain  pcc
# 10.211.55.101 phd1.localdomain  phd1
# ...
# 10.211.55.10N phdN.localdomain  phdN

cat > /etc/hosts <<EOF 
127.0.0.1     localhost.localdomain    localhost
::1           localhost6.localdomain6  localhost6
 
10.211.55.100 pcc.localdomain  pcc

EOF

for i in $(eval echo {1..$1}); do 
   echo "10.211.55.$((100 + $i)) phd$i.localdomain phd$i" >> /etc/hosts 
done
