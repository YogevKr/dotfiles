## Installation 

## 1. Install brew

```console
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## 2. Install deps

```console
git clone https://github.com/YogevKr/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
brew bundle
```

## 3. Install dotfiles

```console
cd ~/.dotfiles
./install
reload
```

## 4. Enable karabiner configuration
```console
goku
```

## 5. Install nvim plugins
```console
nvim
:PlugInstall
```

## 6. Pull secrets

```console
cd ~/.dotfiles
source pull-secrets.sh
```

That's it!

## 7. Reboot

```console
sudo reboot
```

## 8. Done!

:beers:
