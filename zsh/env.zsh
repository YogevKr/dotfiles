# Setting and editing of env variables.

export LC_ALL=en_US.UTF-8

# Vars
export EDITOR='nvim'
export SUDO_EDITOR='nvim'

# PATH
export GOPATH="$(go env GOPATH)" # Go
export PATH="$PATH:$GOPATH/bin" # Go
export PATH="$HOME/.poetry/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"


# gcloud
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

# pipx
eval "$(register-python-argcomplete pipx)"
export PATH=~/.local/bin:$PATH

#export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/yogev/.cargo/bin:$PATH"
typeset -U PATH # Remove duplicates in $PATH
