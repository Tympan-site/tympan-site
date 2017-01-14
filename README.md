tympan-site
===========

Jekyll site and Ansible httpd configuration for [tympan.org].

site
----

A basic [Jekyll][jekyll] site, using [beautiful-jekyll][beautiful-jekyll] as a
starting point.

server config
-------------

Depends, for the moment, on Ansible for configuring server(s).

  - https://docs.ansible.com/ansible/intro_installation.html

Installation process so far:

    $ git clone git://github.com/ansible/ansible.git --recursive
    $ cd ./ansible
    $ sudo pip install paramiko PyYAML Jinja2 httplib2 six pycrypto

Provisioning:

    $ cd ansible
    $ ssh-add ~/.ssh/tympan_key
    $ ansible-playbook -i hosts -vvv ./upgrade.yml
    $ ansible-playbook -i hosts -vvv ./tympan.yml

[tympan]: https://tympan.org
[jekyll]: https://jekyllrb.com/
[beautiful-jekyll]: http://deanattali.com/beautiful-jekyll/
