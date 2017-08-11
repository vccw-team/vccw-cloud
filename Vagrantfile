# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.network :private_network, ip: "192.168.66.10"
  config.vm.provision "shell", inline: "apt install ansible -y"
  config.vm.provision "shell", inline: "cd /vagrant && ansible-playbook provision/playbook.yml --connection=local"
end
