Vagrant.configure("2") do |config|
  config.vm.box = "aspyatkin/ubuntu-18.04-server"
  
  config.vm.network "private_network", type: "dhcp"
  
  config.vm.provider "virtualbox" do |v|
    v.gui = false
    v.linked_clone = true

    v.check_guest_additions = true
    if Vagrant.has_plugin?("vagrant-vbguest") then
      config.vbguest.auto_update = false
    end

    v.memory = 4096
    v.cpus = 1
  end

  config.vm.provision "shell", path: "./install_packages.sh"

  config.vm.define "gitlab-server", primary: true do |host|
    host.vm.hostname = "gitlab-server"
    host.vm.network "private_network", ip: "192.168.200.10"
    host.vm.network "forwarded_port", guest: 80, host: 8000, host_ip: "127.0.0.1"
    host.vm.provision "shell", path: "./install_gitlab.sh"
    host.vm.provision "shell", path: "./install_docker.sh"
  end

  config.vm.define "build-server" do |host|
    host.vm.hostname = "build-server"
    host.vm.network "private_network", ip: "192.168.200.11"
    host.vm.provision "shell", path: "./install_docker.sh"
  end
end
