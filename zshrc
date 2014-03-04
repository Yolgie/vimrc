# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"

# how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=7

DISABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"

# zsh function to open a file in x (in background and without stdout/sdterr)
xopen() {
  xdg-open $1 > /dev/null 2>&1 &
}

# always start tmux
export ZSH_TMUX_AUTOSTART=true

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(rails git git-extras ruby bundler cap gem gnu-utils rake rbenv systemd zeus mvn web-search python pip yum)

source $ZSH/oh-my-zsh.sh

# Commands that start wit a ' ' are not put into the zsh history
setopt HIST_IGNORE_SPACE

# disable autocorrection
unsetopt correct
unsetopt correct_all

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin
export PATH=$PATH:/usr/local/games:/usr/games
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.rbenv/bin

# Use Vim for everything
export VISUAL=gvim
export EDITOR=vim

# Ruby rbenv
eval "$(rbenv init -)"
