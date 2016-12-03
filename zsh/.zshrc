# Oh my ZSH configuration
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Home settings

# Set up PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

export LANG=en_US.UTF-8
export EDITOR=vim.gtk

echo "Welcome to $(uname -s) $(uname -r) at $(echo $HOST)"
