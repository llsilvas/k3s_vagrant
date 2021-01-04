#/bin/bash

sudo apt-get update && apt-get upgrade -y

sudo apt install curl -y

sudo apt install python3-vagrant -y

# create kubecfg user
sudo useradd -m kubecfg

# create ssh directory
sudo mkdir -p /home/kubecfg/.ssh

# copy keys to .ssh directory
sudo cp /vagrant/keys/* /home/kubecfg/.ssh/

# make kubecfg authorized by the same key
sudo cp /home/kubecfg/.ssh/id_rsa.pub /home/kubecfg/.ssh/authorized_keys

sudo cp /vagrant/user/* /home/kubecfg/

# # Change ownership
sudo chown -R kubecfg. /home/kubecfg/.ssh/

# Change permissions
sudo chmod 700 /home/kubecfg/.ssh/
sudo chmod 600 /home/kubecfg/.ssh/id_rsa
sudo chmod 644 /home/kubecfg/.ssh/id_rsa.pub
sudo chmod 700 /home/kubecfg/.ssh/authorized_keys

# Make kubecfg sudoer
echo "kubecfg ALL=(ALL)	NOPASSWD: ALL" | sudo tee -a /etc/sudoers.d/kubecfg

# install ansible
sudo apt-get update
apt-get install -y software-properties-common 
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get install ansible -y

sudo apt-get upgrade

# run ansible playbook as kubecfg user
sudo su - kubecfg -c "cd /vagrant/ansible;ansible-playbook main.yaml"

sudo cat /etc/rancher/k3s/k3s.yaml > kubeconfig.txt