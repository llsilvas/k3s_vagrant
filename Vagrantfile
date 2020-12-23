Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"

  config.vm.define "k3s_server" do |k3s_server|
  
    config.vm.network "private_network", ip: "192.168.3.10"

    config.vm.synced_folder "./shared", "/vagrant_data"
      
    config.vm.provider "virtualbox" do |vb|
        vb.name = "k3s_server"
        vb.memory = "1024"
        vb.cpus = "1"
        
      args = []
      config.vm.provision "k3s shell script", type: "shell",
          path: "scripts/k3s.sh",
          args: args

      args = []
      config.vm.provision "dashboard shell script", type: "shell",
          path: "scripts/dashboard.sh",
          args: args
    end
  end
end