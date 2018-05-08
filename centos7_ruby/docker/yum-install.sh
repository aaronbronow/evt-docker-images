#!/usr/bin/env bash
# This script needs to be run as root

# Uncomment if you want to use rpmforge packages
# curl -O http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
# rpm -ivh rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm

# Uncomment if you want to upgrade packages before installing
# yum -y upgrade

yum -y install epel-release https://centos7.iuscommunity.org/ius-release.rpm
rpm -ivh http://yum.postgresql.org/9.5/redhat/rhel-7-x86_64/pgdg-centos95-9.5-2.noarch.rpm
rpm -vhU https://nmap.org/dist/ncat-7.60-1.x86_64.rpm

yum -y update
yum -y install which wget sudo python python-pip git-core ssh-agent postgresql95-contrib postgresql95-devel

# install RVM requirements
yum -y install patch autoconf automake bison bzip2 gcc-c++ libffi-devel libtool make readline-devel sqlite-devel zlib-devel glibc-headers glibc-devel libyaml-devel openssl-devel

yum -y install freetds freetds-devel python36u python36u-pip
yum -y install firefox              # Required by some Capybara tests.
yum -y install fontconfig           # Required by PhantomJS.
yum -y install graphviz             # Required by rails-erd gem.
yum -y update
pip3.6 install yacron