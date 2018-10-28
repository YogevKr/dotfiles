# test

# Created by newuser for 5.4.2

autoload -U promptinit; promptinit
prompt pure

source /Users/yogev/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yogev/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/yogev/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yogev/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/yogev/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

####### save history #######
HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

## Anaconda
export PATH=/usr/local/anaconda3/bin:"$PATH"
alias conda27='source activate python27'
alias conda36='source activate python36'
alias conda37='source activate python37'
alias up_conda2='conda27 && conda upgrade --all --yes && conda clean --all --yes && sd'
alias up_conda36='conda36 && conda upgrade --all --yes && conda clean --all --yes && sd'
alias up_conda37='conda37 && conda upgrade --all --yes && conda clean --all --yes && sd'
alias jnbc='conda37 && cd /Users/yogev/Google\ Drive/IDC/Year\ 3/Semester\ 1/SciComPy/SciComPy_mirrored && jupyter notebook --no-browser'
alias jlc='conda37 && cd /Users/yogev/Google\ Drive/IDC/Year\ 3/Semester\ 1/SciComPy/SciComPy_mirrored && jupyter lab --no-browser'

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
