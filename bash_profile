
# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

export PATH=$PATH:/path/to/directory/of/executable/downloaded/in/previous/step

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yogev/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/yogev/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yogev/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/yogev/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# Path to the bash it configuration
export BASH_IT="/Users/yogev/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
#export BASH_IT_THEME='sexy'
export BASH_IT_THEME='sexy'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Load Bash It
#source $BASH_IT/bash_it.sh
 

export PATH=/usr/local/php5/bin:$PATH

#----------------------------------------
# Functions
#----------------------------------------
#

sub() {
  open $1 -a "Sublime Text"
}

idc() {
  ssh -o TCPKeepAlive=yes -o ServerAliveInterval=20 yogev.kriger@linux.idc.ac.il
}

sem(){
  year=$(($1-$1/2))
  sem=$(($1/2))
  cd /Users/yogev/Google\ Drive/IDC/Year\ $year/Semester\ $sem
}

rs(){
  rsync yogev.kriger@linux.idc.ac.il:$1 $2
}
# added by Anaconda3 5.3.0 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
