# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "kalirolling"

  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    # Customize the amount of memory on the VM:
    vb.memory = "4096"
  end

  config.vm.provider :aws do |aws, override|
    aws.access_key_id = ENV['AWS_ACCESS_KEY']
    aws.secret_access_key = ENV['AWS_SECRET_KEY']

    aws.region = "eu-north-1"
    aws.instance_type = "t1.micro"
    aws.subnet_id = "subnet-0fe53cc638f581fe8"

    aws.ami = "ami-0351068c0d40b2c12"

    override.ssh.private_key_path = "~/.config/ssh/id_ed25519"
  end

  # Run an ansible playbook within the Vagrant VM. For examples of other provisioners
  # and their usage, please see the Vagrant website
  #
  # config.vm.provision "ansible_local" do |ansible|
  #   ansible.playbook = "ansible/pentest-mgmt.yml"
  #   ansible.install_mode = "pip"
  # end
  config.ssh.username = "kali"
  config.vbguest.auto_update = false
end

