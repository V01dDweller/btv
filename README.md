# btv (Bash, Tmux and Vim)

This is the Ansible version of my
[dotfiles](https://github.com/V01dDweller/dotfiles) project. It uses Ansible
to:

* Install Vim and Tmux from source
* Add some Vim plugins
* Add some Vim color schemes
* Install the latest version of NodeJS
* Install the Vim [Coc](https://github.com/neoclide/coc.nvim) plugin which requires NodeJS
* Install TPM plugin for Tmux
* Add my Bash, Tmux and Vim dotfiles

## Tested On

* Ubuntu 22.04 (supports WSL 2)
* CentOS 7.9 or newer

## Requirements

* Python 3.9 or newer
* Ansible 2.10 or newer
* Must be able to sudo-to-root as roles use `become` directive

## Installation

1. Clone this project

```sh
git clone https://github.com/V01dDweller/btv.git
```

2. CD into the `btv` directory.

3. Install Vim and Tmux roles from Ansible Galaxy:

```sh
ansible-galaxy install -r requirements.yml
```

4. Run the playbook. To suppress inventory warnings, use `localhost,` as the
inventory, e.g.:

```sh
ansible-playbook -i localhost, btv.yml
```

[modeline]: # ( vi: set number textwidth=78 colorcolumn=80 nowrap: )
