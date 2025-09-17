# ohmyzsh-custom

Custom prompt for dark theme

* Doesn't view user/host
* Shows the directory currently in
* Prompt shows if in a git repo
* Shows if git repo is dirty
* Shows if the last command is success/failure

![Example Prompt](/example.png)

# Installation in .oh-my-zsh/custom

```sh
git clone https://github.com/mssoran/ohmyzsh-custom.git ~/.oh-my-zsh/custom
```

# Alternative Installation

Alternatively, clone to any directory and change your ZSH_CUSTOM to point to that directory

```sh
git clone https://github.com/mssoran/ohmyzsh-custom.git ~/.ohmyzsh-custom
```

```sh
ZSH_CUSTOM=~/.ohmyzsh-custom
```

# Newer local changes Sep 2025

I did some local changes, so this dir needs to be fixed. Until then, here is how it
can be made working manually:

## How did I build .ohmyzsh-customNew

We need to build `.ohmyzsh-customNew/`. To do that, run the following commands when
in `.ohmyzsh-custom/`

```sh
# first link to theme
cd ~
mkdir .ohmyzsh-customNew
cd .ohmyzsh-customNew
ln -s ../.ohmyzsh-custom/themes/ themes


# add other plugins
mkdir plugins

# add zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions plugins/zsh-autosuggestions

# add zsh-autocomplete
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git plugins/zsh-autocomplete

# add zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git plugins/zsh-syntax-highlighting


```


