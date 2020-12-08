Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"

  config.vm.define "ubuntu_k3s_server" do |ubuntu_k3s_server|
  
    config.vm.network "private_network", ip: "192.168.33.15"

    config.vm.synced_folder "./shared", "/vagrant_data"
      
    config.vm.provider "virtualbox" do |vb|
        vb.name = "Ubuntu k3s server"
        vb.memory = "2048"
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

  config.vm.define "ubuntu_k3s_node" do |ubuntu_k3s_node|
    config.vm.network "private_network", ip: "192.168.33.16"

    config.vm.provider "virtualbox" do |vb|
      vb.name = "Ubuntu k3s node"
      vb.memory = "2048"
      vb.cpus = "1"

      args = []
      config.vm.provision "k3s shell script", type: "shell",
          path: "scripts/k3s node.sh",
          args: args
    end
  end
end