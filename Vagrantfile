# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "railsbridgebox"
  config.vm.box_url = "http://s3.amazonaws.com/railsbridgeboston/railsbridgevm-4.0.box"
  
  config.vm.synced_folder ".", "/vagrant", disabled: true
  project_name = File.basename(File.expand_path(File.dirname(__FILE__)))
  config.vm.synced_folder ".", "/#{project_name}"

  config.vm.network :forwarded_port, guest: 3000, host: 3000

  # Provider-specific configuration so you can fine-tune various
  config.vm.provider :virtualbox do |vb|
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
end
