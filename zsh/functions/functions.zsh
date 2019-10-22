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

## brew install/uninstall and dump
nbrew() {
  local dump_commands=('install' 'uninstall' 'cask') # Include all commands that should do a brew dump
  local main_command="${1}"

  brew ${@}

  for command in "${dump_commands[@]}"; do
    [[ "${command}" == "${main_command}" ]] && brew bundle dump --file="~/.dotfiles/Brewfile" --force
  done
}


## vim->nvim
function vim {
    nvim "$@"
}

# Update Zsh plugins
uz(){
  antibody bundle <~/.dotfiles/zsh/plugins.txt >~/.zsh_plugins.sh
  antibody update
}

# md <folder-name> - Create folder and cd to it
md(){
  mkdir "$1"
  cd "$1"
}

# cfile <file> - Copy content of file to clipboard
cfile(){
  cat $1 | pbcopy
}

# re <files> - Move files to trash.
re(){
  mv "$@" ~/.Trash
}

# zs - Search for most visited directories from z index and open them in finder.
zs() {
  z $1 && open .
}


# start_notebook_sagemaker and add stop task to todoist
start_notebook_sagemaker(){
    aws sagemaker start-notebook-instance --notebook-instance-name pinky
    echo "https://pinky.notebook.us-east-1.sagemaker.aws/lab"
}


# stop_notebook_sagemaker and close task in todoist
stop_notebook_sagemaker(){
    aws sagemaker stop-notebook-instance --notebook-instance-name pinky
    notebook_todoist_task_id=$(cat /tmp/running_sagemaker_notebook.txt | awk -F',' '{print $1}')
    todoist close $notebook_todoist_task_id
}
