From "scratching an itch"...


vagrantfiles
============

My personal collection of `Vagrantfile`s, where I leverage the best tools I know of for speeding up the setup of virtual environments.


## Requirements

- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](http://www.vagrantup.com)
  + [vagrant-omnibus](https://github.com/schisamo/vagrant-omnibus)
  + [vagrant-cachier](https://github.com/fgrehm/vagrant-cachier)
  + [vagrant-librarian-chef](https://github.com/jimmycuadra/vagrant-librarian-chef)
- [chef](http://www.getchef.com)
- [librarian-chef](https://github.com/applicationsonline/librarian-chef)

In the root you can find a very basic setup script for installing the requirements.
Please consider it more like a guideline showing the steps required to satisfy the pre-requisites.

## Usage

All you need to do is `cd` to the Vagrantfile you are interested in, and run

    vagrant up

In a few minutes the VM will be started and provisioned by VirtualBox and Chef.

    vagrant ssh

..and you will be in.


## Simple customizations

Any Debian-like box should be compatible with these Vagrantfile's/Chef cookboks.

So you may change the property `config.vm.box` to e.g. `chef/debian-7.4`.
See https://vagrantcloud.com/ for all of the available boxes.