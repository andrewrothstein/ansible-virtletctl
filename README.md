andrewrothstein.virtletctl
=========
![Build Status](https://github.com/andrewrothstein/ansible-virtletctl/actions/workflows/build.yml/badge.svg)

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
