#!/bin/bash
# install prereq
# (very basic script, for debian x86_64)

PROJECT_NAME=vagrantfiles
TMP_DIR=$(mktemp -d --tmpdir $PROJECT_NAME.XXXXXX)

is_cmd_available() {
  cmd=$1
  which $cmd > /dev/null || return 1
  return 0
}


# virtualbox
is_cmd_available virtualbox || {
  VIRTUALBOX_DEB=virtualbox-4.3_4.3.14-95030~Debian~wheezy_amd64.deb
  wget -O $TMP_DIR/$VIRTUALBOX_DEB http://download.virtualbox.org/virtualbox/4.3.14/$VIRTUALBOX_DEB &&
  sudo dpkg -i $TMP_DIR/$VIRTUALBOX_DEB
}

# vagrant
is_cmd_available vagrant || {
  VAGRANT_DEB=vagrant_1.6.5_x86_64.deb
  wget -O $TMP_DIR/$VAGRANT_DEB https://dl.bintray.com/mitchellh/vagrant/$VAGRANT_DEB &&
  sudo dpkg -i $TMP_DIR/$VAGRANT_DEB
}

# vagrant plugins
vagrant plugin install vagrant-cachier
vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-librarian-chef

# chef
## ?? is it installed by vagrant-omnibus ??
#https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chef-server_11.1.3-1_amd64.deb

# bundler
sudo gem install bundler

# install all the requirements defined in the Gemfile
# => librarian-chef
bundle install
