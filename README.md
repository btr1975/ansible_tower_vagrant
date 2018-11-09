# ansible_tower_vagrant
Prepped Ubuntu 16.04 LTS for Ansible-Tower

## Some Directions
* Modify the ip so you can use it
* The lowest memory for install is 4096, it will fail if it is any lower

```ruby
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
```
* Install directions, this is also located in the shell script
```text
# Step 1:
#     Download Ansible-Tower at: http://releases.ansible.com/ansible-tower/setup/
#     Download the version or the tar.gz that you want
#     Current is ansible-tower-setup-3.3.1-1.tar.gz
#
# Step 2:
#     Extract the tar.gz using the following command
#     tar xvzf ansible-tower-setup-3.3.1-1.tar.gz
#
# Step 3:
#     Go into the directory unzipping creates in our case it will be
#     ansible-tower-setup-3.3.1-1
#
# Step 4:
#     Edit the file called inventory
#     Variables to modify:
#         admin_password='' <-- This will be admins password
#         pg_password='' <-- This will be the password of the postgres dB
#         rabbitmq_password='' <-- This will be the rabbit password
#
#     You will only really need to know the admin password to log in to the web GUI
#
# Step 5:
#     Run the setup.sh, ansible will take over from there and install everything
#
```
* You can request a trial license here [Ansible-Tower Trial Licaense](https://www.ansible.com/license)
