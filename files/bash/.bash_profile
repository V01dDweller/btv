#!/usr/bin/env bash

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs
PATH=$HOME/bin:$HOME/.local/bin:$HOME/.local/lib:$PATH
export PATH

# MacOS Python stuff, e.g. ansible installed via pip install --user
if [ -d ~/Library/Python/3.7/bin ]; then
  export PATH=~/Library/Python/3.7/bin:$PATH
fi

# Add Homebrew to the PATH\
if [ -d /opt/homebrew/bin ]; then
  export PATH=/opt/homebrew/bin:$PATH
fi

# Add NodeJS to PATH
if [ -d /opt/homebrew/Cellar/node@18/18.17.0/bin ];then
  export PATH=/opt/homebrew/Cellar/node@18/18.17.0/bin:$PATH
fi

# MacOS GNU cureutils, e.g. after running 'brew install coreutils'
if [ -d /usr/local/opt/coreutils/libexec/gnubin ]; then
  export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:/usr/local/opt/grep/libexec/gnubin:/usr/local/opt/ncurses/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH
fi

# MacOS stop telling me about zsh
# credit: https://www.addictivetips.com/mac-os/hide-default-interactive-shell-is-now-zsh-in-terminal-on-macos/
export BASH_SILENCE_DEPRECATION_WARNING=1

# Add NodeJS to PATH
if [ -d ~/.local/node ]
then
  PATH=~/.local/node/bin:$PATH
  epxort PATH
fi

# History setttins
export HISTTIMEFORMAT="%m/%d/%y %T "
export HISTSIZE=10000000
export HISTFILESIZE=10000000
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

export TERM=xterm-256color
umask 022

# If promptline.vim was used then create airline prompt
if [ -f $HOME/.bash_prompt.sh ]
then
  source ~/.bash_prompt.sh
fi

LANG=C.UTF-8; export LANG
