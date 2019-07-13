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

## 4. Pull secrets

```console
cd ~/.dotfiles
source pull-secrets.sh
```

That's it!

## 5. Reboot

```console
sudo reboot
```

## 6. Profit!

:beers:
