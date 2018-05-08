andrewrothstein.virtletctl
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-virtletctl.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-virtletctl)

Installs [virtletctl](https://github.com/Mirantis/virtlet).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.virtletctl
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
