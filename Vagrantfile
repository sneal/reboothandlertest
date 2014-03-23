
Vagrant.configure("2") do |config|
  config.vm.box_url = 'https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-11.2.0.box'
  config.vm.box = 'opscode_ubuntu-12.04_chef-11.2.0'
  config.vm.provider :virtualbox do |v|
    v.gui = true
  end
  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug
    chef.add_role 'booted'
    chef.cookbooks_path = "~/src/chef-repo/cookbooks"
    chef.roles_path = "~/src/chef-repo/roles"
    chef.add_recipe "reboot-handler"
    chef.add_recipe "reboothandlertest"
  end
end
