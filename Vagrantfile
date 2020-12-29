Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"

  config.vm.define "k3s_server" do |k3s_server|
  
    k3s_server.vm.network "private_network", ip: "192.168.3.10"

    k3s_server.vm.synced_folder "./shared", "/vagrant_data"
      
    k3s_server.vm.provider "virtualbox" do |vb|
        vb.name = "k3s_server"
        vb.memory = "1024"
        vb.cpus = "1"
        
      args = []
      k3s_server.vm.provision "k3s shell script", type: "shell",
          path: "scripts/k3s.sh",
          args: args

      args = []
      k3s_server.vm.provision "dashboard shell script", type: "shell",
          path: "scripts/dashboard.sh",
          args: args

      k3s_server.vm.provision "shell", inline: "apt-get update && apt-get upgrade -y"
    end
  end
  config.vm.define "k3s_node1" do |k3s_node1|
  
    k3s_node1.vm.network "private_network", ip: "192.168.3.11"

    k3s_node1.vm.synced_folder "./shared", "/vagrant_data"
      
    k3s_node1.vm.provider "virtualbox" do |vb|
        vb.name = "k3s_node1"
        vb.memory = "1024"
        vb.cpus = "1"
      
      args = []
      k3s_node1.vm.provision "k3s shell script", type: "shell",
          path: "scripts/k3s_node.sh",
          args: args

      k3s_node1.vm.provision "shell", inline: "apt-get update && apt-get upgrade -y"
    end
  end  

  config.vm.define "k3s_node2" do |k3s_node2|
  
    k3s_node2.vm.network "private_network", ip: "192.168.3.12"

    k3s_node2.vm.synced_folder "./shared", "/vagrant_data"
      
    k3s_node2.vm.provider "virtualbox" do |vb|
        vb.name = "k3s_node2"
        vb.memory = "1024"
        vb.cpus = "1"

      args = []
      k3s_node2.vm.provision "k3s shell script", type: "shell",
          path: "scripts/k3s_node.sh",
          args: args
      
      k3s_node2.vm.provision "shell", inline: "apt-get update && apt-get upgrade -y"
    end
  end  
end