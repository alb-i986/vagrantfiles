Django Vagrantfile
==================

Vagrant base box: Ubuntu Precise 64

Chef cookbooks:
- apt: basically runs `apt-get update`
- htop: installs `htop`
- git: installs `git`
- mysql: installs mysql-server, mysql-client
- python: installs python, pip, virtualenv