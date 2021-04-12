Vagrant.configure("2") do |config|

	(1..3).each do |i|
		config.vm.define "worker#{i}" do |worker|
			worker.vm.box = "ubuntu/xenial64"
			worker.vm.network "private_network", ip: "192.168.1.11#{i}"
			worker.vm.provider "virtualbox" do |workervm|
				workervm.memory = 1024
				workervm.cpus = 1
			end
			worker.vm.provision "shell", path: "scripts/worker.sh"
			worker.vm.hostname = "worker#{i}"
		end
	end

	config.vm.define "master" do |master|
		master.vm.box = "ubuntu/xenial64"
		master.vm.network "private_network", ip: "192.168.1.110"
		master.vm.provider "virtualbox" do |mastervm|
			mastervm.memory = 1024
			mastervm.cpus = 1
		end
		master.vm.provision "shell", path: "scripts/master.sh"
		master.vm.hostname = "master"
	end

end
