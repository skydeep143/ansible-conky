 
# Ansible role for conky on AlmaLinux/Redhat

This Ansible role is designed to test Conky on AlmaLinux/Redhat systems. By utilizing this role, Conky is enabled for all users on the system.


# prerequisites

To execute this setup, the following prerequisites are required:

-   Redhat/Alma Linux Operating System
-   Installed Gnome/KDE Desktop environment
-   Python 3.8

## How to test this setup

 - [ ] **Installed AlmaLinux 8.6 Linux Operating Sytem using virtual box** : Image downloaded from here https://www.linuxvmimages.com/images/almalinux-8/. [More detail refer from here](docs/install-os.mp4) 
 - [ ] **Installed prerequisites on AlmaLinux VM :** 
 - Install python3.8 and git i.e `yum install python38 git`
 - Setup path for python3.8 as default python3 
 
	  `update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 2`

	  `update-alternatives --config python3`
 
 - For testing purpose created Linux users and set password :

    `useradd rupesh && passwd rupesh`
  

 - [ ] **Run Ansible playbook** 
 

 - Clone the git repo from here https://github.com/rupeshshewalkar/ansible-conky.git 
 - Create python virtual environment inside ansible-conky folder
 

    `pip3.8 install virtualenv --user`
   
    `virtualenv --python=python3 .venv`
  

 - Installed ansible and required package using pip:

     `source .venv/bin/activate && pip install -r requirements.txt`

   

 - Run playbook to install conky
   
 `ansible-playbook -i inventories/conky/ playbooks/conky.yml `

## Reference 

 1. [Install AlmaLinux](docs/install-os.mp4)
 2. [Run playbook to install Conky on AlmaLinux/Redhat](docs/setup-conky.mp4)
