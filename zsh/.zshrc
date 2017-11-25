# Setup PATH
PATH=$(getconf PATH)
PATH+=:/usr/local/bin
PATH+=:$HOME/bin
PATH+=:/sbin

export PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/nick/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment to use hyphen-insensitive completion
HYPHEN_INSENSITIVE="true"

# Uncomment to disable auto-setting terminal title
DISABLE_AUTO_TITLE="true"

# Plugins can be found in: ~/.oh-my-zsh/plugins/*
# Custom plugins: ~/.oh-my-zsh/custom/plugins/
plugins=(git extract command-not-found)

source $ZSH/oh-my-zsh.sh

# Set default editor
export EDITOR='vim'

# Vi = Vim
alias vi=vim

# Python
alias pip=pip3
alias python=python3

# Tmux sessions
alias attach="tmux attach -t"
alias session="tmux new -s"

# Source configs
alias szsh="source ~/.zshrc"
alias stmux="tmux source ~/.tmux.conf"

# Open configs
alias zshrc="vim ~/.dotfiles/.zshrc"
alias vimrc="vim ~/.dotfiles/.vimrc"
alias tmuxconf="vim ~/.dotfiles/.tmux.conf"

# Set desktop background
# Need feh: sudo apt install feh
alias setbg="feh --bg-scale"

# Start-up mpd client
alias music="ncmpcpp"

# Add support for fuzzy matching
# 0 -- vanilla completion    (abc => abc)
# 1 -- smart case completion (abc => Abc)
# 2 -- word flex completion  (abc => A-big-Car)
# 3 -- full flex completion  (abc => ABraCadabra)
zstyle ':completion:*' matcher-list '' 'r:|?=** m:{a-z\-}={A-Z\_}'
