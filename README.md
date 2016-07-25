I need something to install sensu client fast.

I will just use this repo, and add my files and stuff


git clone https://github.com/Mayeu/ansible-playbook-sensu.git


# Usage

We recommend to use virtualenv whenever possible.

    virtualenv env
    source env/bin/activate
    pip install -r requirements.txt

To get set up.

Then to run the common tasks, you can take a look at the Makefile. For example, to provision the machines in .ansible/hosts

    make provision

To configure the inventory, you will need the file .ansible/hosts with a [sensuclients] host group.


# Issues

## Ansible fails to connect to host. But manual SSH works

It seems to be an issue with the way Ansible uploads files to the machine.

The default method is sFTP, but is not enabled in all the systems. Like some Amazon AMI.

To overcome this, is quite annoying.

 - Copy your ansible.cfg from whatever you use, and modify with the values in the local ansible.cfg given as example.


## Ansible still fails to connect, And is using scp to upload

Sometimes, if you are using AWS EC2, ansible will try to create sockets with very long names, and fail.

To reduce the length of the names, perform the same steps as the issue #1. Copy the ansible.cfg settings
of this repo into your ansible. Then create the folder.

 - Create the directory

        mkdir /tmp/ansible

This will configure ansible to use shorter names.


