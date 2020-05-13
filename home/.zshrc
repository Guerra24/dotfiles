# Oh my ZSH configuration
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git docker)
source $ZSH/oh-my-zsh.sh

# Home settings

# Set up PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

[ -d "$HOME/.linuxbrew/bin" ] && export PATH="$PATH:$HOME/.linuxbrew/bin"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export LANG=en_US.UTF-8
export EDITOR=nano

# WSL Stuff
if grep -q Microsoft /proc/version; then
    export LIBGL_ALWAYS_INDIRECT=1
    export DISPLAY=localhost:0.0
    umask 22
fi

echo "Welcome to $(uname -s) $(uname -r) at $(echo $HOST)"
