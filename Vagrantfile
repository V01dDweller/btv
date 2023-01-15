Vagrant.configure("2") do |config|

# Post-config script
  $post_config = <<-'SCRIPT'
  # Install some tools
  apt -y update
  apt -y install ansible
  SCRIPT

# Create the VM
  config.vm.define "ubuntu-01" do |subconfig|
    subconfig.vm.box = "ubuntu/jammy64"
    subconfig.vm.hostname = "ubuntu-01"
  end

# Virtual machine specs - VirtualBox
  config.vm.provider "virtualbox" do |spec|
    spec.memory = 6144
    spec.cpus = 2
  end

# Run post_config script
  config.vm.provision "shell", inline: $post_config
end
