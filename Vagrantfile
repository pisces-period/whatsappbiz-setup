Vagrant.configure("2") do |config|
    # ubuntu 16.04 Xenial x64
    config.vm.box = "ubuntu/xenial64"
    config.vm.provider "virtualbox"
    config.vm.provision :shell, path: "bootstrap.sh" # install Docker, Docker-compose, GIT
    config.vm.provision :shell, path: "whatsapp_biz_install.sh" # spawn WhatsApp-Biz API containers
    config.vm.provision :shell, path: "whatsapp_biz_config.sh" # configure WhatsApp Biz API
end
