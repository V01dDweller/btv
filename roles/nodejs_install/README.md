# nodejs_install

This Ansible role installs the NodeJS 19.x package for Ubuntu Linux 20.04+
from https://deb.nodesources.com.

## Requirements

Ansible user must be able to sudo to root.

## Dependencies

None.

## Variables

- `node_version` - Defaults to `19`.

## Example Playbook

```yaml
- name: Install NodeJS 19
  hosts: all
  gather_facts: false
  become: true
  roles:
    - role: nodejs_install
      tags:
        - node
        - nodejs
```

## License

BSD

## Author Information

By V01dDweller

[modeline]: # ( vim: set textwidth=78 colorcolumn=80: )
