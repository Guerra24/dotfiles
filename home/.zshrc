# Oh my ZSH configuration
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ys"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git docker)

source $ZSH/oh-my-zsh.sh

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export EDITOR=nano

echo "Welcome to $(uname -s) $(uname -r) at $(echo $HOST)"
