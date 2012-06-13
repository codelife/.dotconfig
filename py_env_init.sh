#!/bin/bash - 
#===============================================================================
#
#          FILE:  py_env_init.sh
# 
#         USAGE:  ./py_env_init.sh 
# 
#   DESCRIPTION:  init python enviorment
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR: Collin Lee (), lijun877@gmail.com
#       COMPANY: SeeGame.COM
#       CREATED: 06/13/2012 10:59:11 PM CST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
id=`id -u`
if [ $id -ne 0 ]; then
    echo "please use sudo or run this script as root"
fi
sleep 3
dist=`lsb_release  -a|grep distributor -i |awk -F':' '{print $2}'`
echo $dist
if [ $dist = 'Fedora' ] ;then
    package_manager="yum install -y "
else
    package_manager="apt-get install -y"
else
fi

$package_manager wget
$package_manager python-setuptools
$package_manager gcc
$package_manager python-devel
$package_manager libevent-devel
$package_manager libxml2
$package_manager libxml2-devel
$package_manager libxslt
$package_manager libxslt-devel
wget http://pypi.python.org/packages/source/p/pip/pip-1.1.tar.gz#md5=62a9f08dd5dc69d76734568a6c040508
tar xzf pip-1.1.tar.gz
cd pip-1.1 && python setup.py install
pip install gevent
pip install lxml
