# vim_addons

This Ansible role installs my favorite Vim addons on a Linux host running
Ubuntu 20.04+ x64.

* The Pathogen plugin manager
* My `.vimrc` and `.gvimrc` files

A list of plugins, including
1. [ALE](https://github.com/dense-analysis/ale) - Asynchronous Linting Engine
1. [Airline](https://github.com/vim-airline/vim-airline) - Enhanced always on-status line
1. [Airline Themes](https://github.com/vim-airline/vim-airline-themes) - Extra Themes for Airline
1. [AnsiEsc](https://github.com/vim-scripts/AnsiEsc.vim) - Convert ASCII escapes to color
1. [Ansible](https://github.com/pearofducks/ansible-vim) - Ansible syntax highlighting
1. [Autosave](https://github.com/907th/vim-auto-save) - Self explanatory
1. [CoC](https://github.com/neoclide/coc.nvim) - The Conqueror of Completion
1. [Colorizer](https://github.com/chrisbra/Colorizer) - Colorize HTML/CSS color codes
1. [Delview](https://github.com/vim-scripts/delview) - Delete saved views
1. [Dracula](https://github.com/dracula/vim) - Dracula color scheme
1. [Fugitive](https://github.com/tpope/vim-fugitive) - Git integration
1. [Git-Gutter](https://github.com/airblade/vim-gitgutter) - Shows git changes in the gutter
1. [Github Copilot](https://github.com/github/copilot.vim) - Your AI pair programmer
1. [Jenkinsfile](https://github.com/martinda/Jenkinsfile-vim-syntax) - Jenkinsfile syntax highlighting
1. [Lion](https://github.com/tommcdo/vim-lion.git) - Aligning text by a character
1. [Loupe](https://github.com/wincent/loupe) - Search enhancement
1. [NERDTree](https://github.com/preservim/nerdtree) - Filesystem Explorer
1. [Nginx.vim](https://github.com/chr4/nginx.vim) - Nginx conf file syntax highlighting
1. [PS1](https://github.com/PProvost/vim-ps1) - PowerShell syntax highlighting
1. [Promptline](https://github.com/edkolev/promptline.vim) - Bash prompt sync with Airline
1. [Repeat](https://github.com/tpope/vim-repeat) - Repeat plug-in remaps like Vim-Surround
1. [Surround.vim](https://github.com/tpope/vim-surround) - Quickly change "surroundings"
1. [Tmuxline](https://github.com/edkolev/tmuxline.vim) - Tmux theme sync with Airline
1. [Vinegar](https://github.com/tpope/vim-vinegar) - Better netrw?

## Requirements

An Ubuntu Linux x64 host running version 20.04 or later. Note that the
`become` directive is never used since these are intended for a non-root user.

## Dependencies

- Vim 9 or later. This may be installed via the package manager or via the
  `V01dDweller.vim_install` Ansible role.

## Variables

- `vim_coc_dir` - Defaults to `~/.vim/pack/coc/start`. The directory where the
  CoC git repo will be cloned. 
- `vim_copilot_dir` - Defaults to `vim_copilot_dir`. The  directory where the
  GitHub Copilot repo will be cloned.
- `vim_plugins` - The list of vim plugins managed by Pathogen. Note that the
  list does not include CoC or GitHub Copilot. They must be installed
  separately.

## Example Playbook

```yaml
- name: Install Vim with addons
  hosts: localhost
  connection: local
  gather_facts: false
  roles:
    - role: V01dDweller.vim_install
      tags: vim
      become: true

    - role: vim_addons
      tags:
        - vim
        - vim_addons
```

## License

BSD

## Author Information

By V01dDweller, lucan88@msn.com

[modeline]: # ( vi: set number textwidth=78 colorcolumn=80 nowrap: )
