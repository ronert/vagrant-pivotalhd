sudo yum install -y gcc gcc-gfortran gcc-c++ readline-devel libXt-devel libXt-devel libXt libX11-devel zlib-devel
cd /vagrant/postgresql-8.2.15/ 
./configure
make

export R_HOME=/vagrant/plr/R-3.1.1/
cd contrib/plr
make
