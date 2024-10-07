#!/bin/bash

set -e

##
# Standard script for building ruby on all linux distros.
#
RUBY_INSTALL_VERSION=0.9.3
RUBY_VERSION=3.3.5

wget -O ruby-install-$RUBY_INSTALL_VERSION.tar.gz https://github.com/postmodern/ruby-install/archive/v$RUBY_INSTALL_VERSION.tar.gz
tar -xzvf ruby-install-$RUBY_INSTALL_VERSION.tar.gz && cd ruby-install-$RUBY_INSTALL_VERSION/
make install

ruby-install ruby --install-dir /opt/ruby $RUBY_VERSION

gem update --system
gem install bundler

rm -rf /usr/local/src/* ~/.cache/ruby-install
