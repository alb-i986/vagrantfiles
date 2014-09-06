Basic Vagrantfile
=================

Vagrant base box: Ubuntu Precise 64

Chef cookbooks:
- apt: basically runs `apt-get update`
- htop: installs `htop`

## Possible customizations
Any Debian-like box should be compatible with these Vagrantfile/Chef cookboks.
So you may change the property `config.vm.box` to another box, e.g. `chef/debian-7.4`.
