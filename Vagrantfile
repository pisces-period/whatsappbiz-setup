Vagrant.configure("2") do |config|
    # ubuntu 16.04 Xenial x64
    config.vm.box = "ubuntu/xenial64"
    config.vm.provider "virtualbox"
    config.vm.define "wappbox" do |d|
        d.vm.hostname = "wappbox"
        d.vm.provision :shell, path: "bootstrap.sh" # install Docker, Docker-compose, GIT
        d.vm.provision :shell, path: "whatsapp_biz_install.sh" # spawn WhatsApp-Biz API containers
        d.vm.provision :shell, path: "whatsapp_biz_config.sh" # configure WhatsApp Biz API
end
