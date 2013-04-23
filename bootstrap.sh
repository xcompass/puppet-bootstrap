#!/bin/bash

rpm -ivh http://yum.puppetlabs.com/el/6/products/i386/puppetlabs-release-6-7.noarch.rpm
yum -y install puppet

gem install librarian-puppet

puppet resource package git ensure=present

# clone the bootstrap repo 
git clone https://github.com/xcompass/puppet-bootstrap.git puppet
cd puppet

# install the modules
librarian-puppet install

puppet apply --modulepath=modules base.pp
