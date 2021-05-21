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
export LDFLAGS="-L/usr/local/opt/readline/lib"
#export CPPFLAGS="-I/usr/local/opt/readline/include"
#export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"

#export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
#export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

#export LDFLAGS="-L $(xcrun --show-sdk-path)/usr/lib -L brew --prefix bzip2/lib"
#export CFLAGS="-L $(xcrun --show-sdk-path)/usr/include -L brew --prefix bzip2/include"

eval "$(pyenv init -)"

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
