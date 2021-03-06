#!/bin/bash

set -eu

echo "Authenticating with 1Password"
export OP_SESSION_my=$(op signin https://my.1password.com yogev.kr@gmail.com --output=raw)

echo "Pulling $1 secrets"

if [ $1 == "work" ]
then 
	op get document 'secrets.zsh.work' > ~/.dotfiles/zsh/secrets.zsh
	
	# ssh
        op get document 'ssh_config.work' > ~/.dotfiles/ssh/config
	ln -sfn ~/.dotfiles/ssh/config ~/.ssh/config

elif [ $1 == "personal" ]
then
	op get document 'secrets.zsh.personal' > ~/.dotfiles/zsh/secrets.zsh

	# ssh
	op get document 'ssh_config.personal' > ~/.dotfiles/ssh/config
	ln -sfn ~/.dotfiles/ssh/config ~/.ssh/config
else
	echo "Input must be work or personal only."
fi

echo "Done!"
