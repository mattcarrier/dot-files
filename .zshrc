# path
tilde=~
export PATH=$HOME/src/mattcarrier/dot-files/bin:$PATH
export PATH=$HOME/.local/bin:$PATH  # pipx

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# poetry
export POETRY_CONFIG_DIR="${tilde}/src/mattcarrier/dot-files/pypoetry"

# sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# nvm
zstyle ':omz:plugins:nvm' lazy yes
zstyle ':omz:plugins:nvm' autoload yes

# ohmyzsh
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="${tilde}/src/mattcarrier/dot-files/.oh-my-zsh/custom"
ZSH_THEME="robbyrussell"
plugins=(nvm docker git sdk poetry pyenv virtualenv)
source $ZSH/oh-my-zsh.sh
