tympan-site
===========

Configuration management for tympan.org.

Depends, for the moment, on Ansible.

  - https://docs.ansible.com/ansible/intro_installation.html

Installation process so far:

    $ git clone git://github.com/ansible/ansible.git --recursive
    $ cd ./ansible
    $ sudo pip install paramiko PyYAML Jinja2 httplib2 six pycrypto

Provisioning:

    $ ssh-add ~/.ssh/tympan_key
    $ ansible-playbook -i hosts -vvv ./upgrade.yml
    $ ansible-playbook -i hosts -vvv ./tympan.yml
