# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
    config.vm.define "my-ansible-server" do |ansible|
        ansible.vm.box = "ubuntu/xenial64"
        ansible.vm.hostname = "my-ansible-server"
        ansible.vm.network "public_network", ip: "192.168.1.60"
        config.vm.provider "virtualbox" do |v|
            v.cpus = 1
            v.memory = 4096
            v.name = "my-ansible-server"
        end
        ansible.vm.provision :shell, path: "install_ansible_requirements.sh"
    end
end

