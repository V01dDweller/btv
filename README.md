# btv (Bash, Tmux and Vim)

## WARNING: Old Project

*The project dates back to the final years of Red Hat Enterprise Linux 7 /
CentOS 7 which were version locked to Vim 7.x and Tmux 2.x. The priority was
to clone the source code for the latest versions of Vim 8.x/9.x, and Tmux 3.x,
install build tools then build them from scratch. As of the summer of 2026,
Vim 9 and Tmux 3.x are readily available in nearly every package manager. The
project may have value for demonstrating Ansible, but it has not been tested
in a while. My `.vimrc`, `.tmuxrc` and `.bashxx` files are still current,
otherwise use at your own risk.*

This is the Ansible version of my
[dotfiles](https://github.com/V01dDweller/dotfiles) project. It uses Ansible
to:

* Install Vim and Tmux from source
* Add some Vim plugins
* Add some Vim color schemes
* Install the latest version of NodeJS
* Install the Vim [Coc](https://github.com/neoclide/coc.nvim) plugin which requires NodeJS
* Install the Vim GitHub Copilot plugin
* Install TPM plugin for Tmux
* Add my Bash, Tmux and Vim dotfiles

## Tested On

* Ubuntu 20.04 (supports WSL 2)
* Ubuntu 22.04 (supports WSL 2)
* CentOS 7.9 or newer

**NOTE:** CentOS is version-locked to Ansible 2.9 which does not support fqcns
used in these roles and playbooks. Ansible 2.10+ can be installed via pip3 but
the Python 3 versions in CentOS 7 are ancient. Thus, the CentOS Dockerfile
included here installs Python 3.10.9 from source, before pip-installing
Ansible. Of course this means a docker build with this file is much slower.

## To Do

* Add roles for Bash and Git
* Add MacOS support
* Consider adding one or more roles for:
  - MinTTY/Git Bash/WSLTTY
  - iTerm
  - VSCode

## Requirements

* Python 3.9 or newer
* Ansible 2.10 or newer
* Must be able to sudo-to-root (roles use `become` directive)

## Installation

1. Clone this project

```sh
git clone https://github.com/V01dDweller/btv.git
```

1. CD into the `btv` directory.

1. Install Vim and Tmux roles from Ansible Galaxy:

```sh
ansible-galaxy install -r requirements.yml
```

1. Run the playbook. To suppress inventory warnings, use `localhost,` as the
inventory, e.g.:

```sh
ansible-playbook -i localhost, btv.yml
```

## Testing with Docker

### Ubuntu (preferred)

```sh
docker build -t myubuntu:latest . -f Dockerfile.ubuntu
docker run -d --name mytest_container sleep infinty
docker exec -it mytest_container bash
source .bash_profile
```

### CentOS (ymmv)

```sh
docker build -y mycentos:latest . -f Dockerfile.centos
docker run -d --name mytest_container sleep infinity
docker exec -it mytest_container bash
source .bash_profile
```

At this point, bash, tmux and vim should work and have a matching theme.

## License

BSD

## Author Information

By V01dDweller

[modeline]: # ( vi: set number textwidth=78 colorcolumn=80 nowrap: )
