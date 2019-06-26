plugins=(
  git
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
  )


autoload -U promptinit; promptinit
prompt pure

## fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

 [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
source /Users/yogev/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# gcloud
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'


# go pathes
export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# pyenv

export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"
eval "$(pyenv init -)"


## Run pipenv shell automatically
function auto_pipenv_shell {
    if [ ! -n "${PIPENV_ACTIVE+1}" ]; then
        if [ -f "Pipfile" ] ; then
            pipenv shell
        fi
    fi
}

function cd {
    builtin cd "$@"
    auto_pipenv_shell
}


function vim {
    nvim "$@"
}

export PATH=~/.local/bin:$PATH

export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

####### save history #######
HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

alias d='deactivate'
alias sd='source deactivate'

alias brewski='brew update && brew upgrade && brew cleanup; brew prune; brew doctor'

#----------------------------------------
# Functions
#----------------------------------------
#

re(){
  mv "$1" ~/.Trash
}

sem(){
  year=$(($1-$1/2))
  sem=$(($1/2))
  cd /Users/yogev/Google\ Drive/IDC/Year\ $year/Semester\ $sem
}

haste() {
	a=$(cat); curl -X POST -s -d "$a" https://hastebin.com/documents | awk -F '"' '{print "https://hastebin.com/"$4}'; 
}

nbrew() {
  local dump_commands=('install' 'uninstall' 'cask') # Include all commands that should do a brew dump
  local main_command="${1}"

  brew ${@}

  for command in "${dump_commands[@]}"; do
    [[ "${command}" == "${main_command}" ]] && brew bundle dump --file="${HOME}/.Brewfile" --force
  done
}

#----------------------------------------
#fzf
#----------------------------------------

# fh - repeat history
h() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}



#----------------------------------------
# Aliases
#----------------------------------------
#

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"

alias sem3='cd /Users/yogev/Google\ Drive/IDC/Year\ 3/Semester\ 1'

alias ll='exa -la'
alias reload='source ~/.zshrc'
alias ge='ssh -i ~/.ssh/google_compute_engine_yogev_kr  yogev_kr@104.198.243.181'
alias pi='ssh -i ~/.ssh/id_rsa_yogev_kriger pi@192.168.1.20'

alias wifi-pass='wifi-password'
