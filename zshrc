# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gallois"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=7

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(rails git ruby bundler debian gnu-utils git rake rbenv systemd zeus)

source $ZSH/oh-my-zsh.sh

# disable autocorrection
unsetopt correct
unsetopt correct_all

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
