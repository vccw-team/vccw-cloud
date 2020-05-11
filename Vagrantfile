# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04"
  config.vm.network :private_network, ip: "192.168.66.10"
  config.vm.provision :shell, :path => File.join( File.dirname(__FILE__), 'provision.sh' )
end
