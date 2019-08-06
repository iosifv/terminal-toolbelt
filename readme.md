# Terminal Toolbelt

This repository consists of my personal bash aliases and functions.

## Installation

##### Clone this repo
```bash
cd ~ && mkdir www && mkdir www/github && cd www/github/
git clone git@github.com:iosifv/terminal-toolbelt.git
```

##### Set the current directory path

```bash
cd terminal-toolbelt/
cp loader.sh_TEMPLATE loader.sh
nano loader.sh
```

##### Source the launcer in your rc file (may differ)

```bash
nano ~/.bashrc
 - OR -
nano ~/.zshrc
 - OR -
 echo "source {{full-path-to-this-repo}}/loader-{os-that-you-are-using}.sh" >> ~/.zshrc
 echo "source ~/www/github/terminal-toolbelt/loader-osx.sh" >> ~/.zshrc
```

## Optional

##### Install oh-my-zsh
https://github.com/robbyrussell/oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Comment out the plugins code in zshrc as it's overwriten in the sources/config.sh file

##### Install zsh-syntax-highlighting
https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
```bash
brew install zsh-syntax-highlighting
```

##### Install zsh-autosuggestions
https://github.com/zsh-users/zsh-autosuggestions
This repo automatically sources the files from the default install location
```bash
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

##### Install Powerline Fonts
```bash
sudo apt-get install fonts-powerline
```

OR

https://github.com/powerline/fonts
```bash
git clone https://github.com/powerline/fonts.git && cd fonts && ./install.sh
cd .. && rm -rf fonts
```
Try with
```bash
echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"
```

##### Install Agnoster Theme for oh-my-zsh
https://github.com/agnoster/agnoster-zsh-theme
just replace the default theme "robbyrussel" with "agnoster"
```bash
nano ~/.zshrc
```

##### Install Powerlevel9k Theme for oh-my-zsh
https://github.com/bhilburn/powerlevel9k
https://github.com/bhilburn/powerlevel9k/wiki/Install-Instructions#step-1-install-powerlevel9k


```bash
brew tap sambadevi/powerlevel9k
brew install powerlevel9k
echo "source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc
```

##### Install Nerd-Fonts
https://github.com/ryanoasis/nerd-fonts

```bash
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
```

##### Install Solarized theme for OSX Terminal app

Use the default one
https://github.com/tomislav/osx-terminal.app-colors-solarized

Or use the ones located in this repo at /osx-terminal-theme.
These are tweaked a bit to be used with agnoster, autosugestions and syntax-highlighting

Double click on theme. Go to prefferences and click "default" once you make sure the theme is selected.
