autoload -U promptinit; promptinit
prompt pure

source /Users/yogev/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


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



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yogev/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/yogev/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yogev/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/yogev/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export PATH=~/.local/bin:$PATH

####### save history #######
HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

## Anaconda
export PATH=/usr/local/anaconda3/bin:"$PATH"
alias conda27='source activate /anaconda3/envs/python27'
alias conda36='bash --init-file <(echo "source activate /anaconda3/envs/python36;")'
alias conda37='source activate /anaconda3/envs/python37'
alias up_conda2='conda27 && conda upgrade --all --yes && conda clean --all --yes && sd'
alias up_conda36='conda36 && conda upgrade --all --yes && conda clean --all --yes && sd'
alias up_conda37='conda37 && conda upgrade --all --yes && conda clean --all --yes && sd'

alias jnbc='conda37 && cd /Users/yogev/Google\ Drive/IDC/Year\ 3/Semester\ 1/SciComPy/SciComPy_mirrored && jupyter notebook --no-browser'
alias jlc='conda37 && cd /Users/yogev/Google\ Drive/IDC/Year\ 3/Semester\ 1/SciComPy && jupyter lab --no-browser'

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


sub() {
  open $1 -a "Sublime Text"
}


sem(){
  year=$(($1-$1/2))
  sem=$(($1/2))
  cd /Users/yogev/Google\ Drive/IDC/Year\ $year/Semester\ $sem
}

haste() {
	a=$(cat); curl -X POST -s -d "$a" https://hastebin.com/documents | awk -F '"' '{print "https://hastebin.com/"$4}'; 
}


#----------------------------------------
# Aliases
#----------------------------------------
#

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"


alias sem3='cd /Users/yogev/Google\ Drive/IDC/Year\ 3/Semester\ 1'

alias ll='ls -la'
alias reload='source ~/.zshrc'
alias ge='ssh -i ~/.ssh/google_compute_engine_yogev_kr  yogev_kr@104.198.243.181'
alias pi='ssh -i ~/.ssh/id_rsa_yogev_kriger pi@192.168.1.20'

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
