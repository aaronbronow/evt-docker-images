#!/usr/bin/env bash
# This script needs to be run as root

# Uncomment if you want to use rpmforge packages
# curl -O http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
# rpm -ivh rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm

# Uncomment if you want to upgrade packages before installing
# yum -y upgrade

yum -y update
yum -y upgrade
yum clean all
#yum -y install epel-release
#yum -y update
rpm -ivh http://yum.postgresql.org/9.5/redhat/rhel-7-x86_64/pgdg-centos95-9.5-2.noarch.rpm
yum -y update
# yum -y install vim git-core postgresql95-server postgresql95-contrib postgresql95-devel man nano
yum -y install git-core postgresql95-contrib which

yum -y install firefox              # Required by some Capybara tests.
yum -y install fontconfig           # Required by PhantomJS.
yum -y install graphviz             # Required by rails-erd gem.

# /usr/pgsql-9.5/bin/postgresql95-setup initdb
# systemctl start postgresql-9.5.service
# systemctl enable postgresql-9.5.service
# su - postgres -c "psql postgres -tAc \"SELECT 1 FROM pg_roles WHERE rolname='vagrant'\" | grep -q 1 || createuser -s vagrant"
