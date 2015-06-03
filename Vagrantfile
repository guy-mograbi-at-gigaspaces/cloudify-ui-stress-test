
Vagrant.configure(2) do |config|
  config.vm.box = "cloudify-ui-stress-test"
  config.vm.box_url= "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

  config.vm.synced_folder "./synced_folder", "/vagrant", type: "rsync"

  config.vm.network "forwarded_port", guest: 80, host: 1515

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 4
  end


  config.vm.provision "shell" do |s|
    s.path = "./provision.sh"
    s.privileged = false
  end
end
