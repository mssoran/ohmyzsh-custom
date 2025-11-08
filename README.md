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

# Another approach with submodules

I don't want to have another dir (.ohmyzsh-customNew) and links. An alternative is using [Git Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

## Creating the submodules:
- Go to .ohmyzsh-custom/plugins
- Create submodule:
```
git submodule add --depth 1 https://github.com/zsh-users/zsh-autosuggestions
git commit -am 'Add zsh-autosuggestions plugin submodule'
```
- Similarly other submodules:
```
git submodule add --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting
git submodule add --depth 1 https://github.com/marlonrichert/zsh-autocomplete
git commit -am 'Add zsh-syntax-highlighting and zsh-autocomplete plugin submodules'
```
- Install fzf for fzf plugin:
```
    brew install fzf
```


## Cloning with submodules
I didn't do it yet, but here is some notes to use when I do it the first time. Then, I
can update this part with the instructions:
- If you want to clone submodules shallowly, also pass --shallow-submodules. I may need to 
pass this during clone
- look at https://git-scm.com/book/en/v2/Git-Tools-Submodules
- I think here is what is needed:
    - git clone --recurse-submodules https://github.com/mssoran/ohmyzsh-custom.git ~/.ohmyzsh-custom
    - in fact, if you do only `git clone`, submodule dirs come empty. You need to `git submodule init` and `git submodule update` in each submodule dir. Alternatively, you can `git submodule update --init --recursive` to init and update all submodules at once.

## Updating submodules
My understanding is that, you need to go into each submodule, `git pull` them, then `git commit` your main repo. 

