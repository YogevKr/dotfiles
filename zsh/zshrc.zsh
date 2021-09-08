source ~/.zsh_plugins.sh

source ~/.dotfiles/zsh/env.zsh

source ~/.dotfiles/zsh/options.zsh
source ~/.dotfiles/zsh/functions/functions.zsh
source ~/.dotfiles/zsh/functions/fzf-functions.zsh
source ~/.dotfiles/zsh/alias.zsh

source ~/.dotfiles/zsh/secrets.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"

export PATH="$HOME/.poetry/bin:$PATH"


#### FIG ENV VARIABLES ####
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####


