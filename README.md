# WhatsApp Biz API Setup

Use this repository to seamlessly configure a single-instance development environment for WhatsApp Biz API.

The objective is to automatically set up the WhatsApp Biz API environment and provide you with the authentication token
to interact with the API end points.

I'm assuming the default db provided by WhatsApp. If you want to use your own db, read the _further information_ section.

Follows a breakdown of the repository:

#### Vagrantfile

The _Vagrantfile_ specifies the creation of a VM, which is called _'wappbox'_. 

You do not need to use it. You might choose to run the bash scripts directly on your host or target system instead.

If you do not wish to use the _Vagrantfile_, simply ignore it.

If you wish to use it, open your terminal or Powershell and run `vagrant up` command at the root directory of this repository.

Up next, run the `vagrant ssh wappbox` command to SSH into the Vagrant VM.

Otherwise, skip this previous step and run the bash scripts directly.

Three bash scripts are used to setup the WhatsApp Biz environment.

* bootstrap.sh
* whatsapp_biz_install.sh
* whatsapp_biz_config.sh

#### bootstrap.sh

This bash script accomplishes the following tasks:
* install _docker_, _docker-compose_ and _GIT_ (although GIT usually comes pre-installed on Ubuntu 16.04)

#### whatsapp_biz_install.sh

This bash script accomplishes the following tasks:
* clone the _'WhatsApp Business Setup Scripts'_ GIT repo onto the _'vagrant/biz'_ directory 
* export the environment variable `{{ CURRENT_VERSION }}` (replace this with the latest version of the WhatsApp API) 
* spawn the docker services with `docker-compose up` command

OBS: Replace `{{ CURRENT_VERSION }}` variable placeholder before running this script.

#### whatsapp_biz_config.sh

This bash script accomplishes the following tasks:
* replace the default admin password via cURL
* writes the resulting authentication token into a a `auth_token.json` file

OBS: Replace `{{ HOSTNAME }}`, `{{ PORT }}` and `{{ NEW_PASSWORD }}` variable placeholders before running this script.

#### Further Information

For further information, please check out the links below:

https://developers.facebook.com/docs/whatsapp/changelog
https://developers.facebook.com/docs/whatsapp/installation/dev-single-instance
https://developers.facebook.com/docs/whatsapp/api/users/login
