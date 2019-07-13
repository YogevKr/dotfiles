#!/bin/bash

set -eu

echo "Authenticating with 1Password"
export OP_SESSION_my=$(op signin https://my.1password.com yogev.kr@gmail.com --output=raw)

echo "Update $1 secrets"

if [ $1 == "work" ]
then
	old=$(op get item secrets.zsh.work | jq '.uuid')
	op create document ~/.dotfiles/zsh/secrets.zsh --title=secrets.zsh.work
        op delete item $old

	# ssh
	old=$(op get item ssh_config.work | jq '.uuid')
	op create document ~/.dotfiles/ssh/config --title=ssh_config.work
	op delete item $old

elif [ $1 == "personal" ]
then
	old=$(op get item secrets.zsh.personal | jq '.uuid')
	echo $old
	op create document ~/.dotfiles/zsh/secrets.zsh --title=secrets.zsh.personal
	op delete item $old

	# ssh
	old=$(op get item ssh_config.personal | jq '.uuid')
	echo $old
	op create document ~/.dotfiles/ssh/config --title=ssh_config.personal
 	op delete item $old

else
	echo "Input must be work or personal only."
fi

echo "Done!"
