<p align="center">
    <img alt="GIF" src="https://raw.githubusercontent.com/mrpmohiburrahman/assets/main/dotFilesAssets/final.gif?token=AINKGPKS64U5S3KAX4T62P27XICVS" width="600"/>
</p>
<p align="center">
    <img alt="mac os" src="https://img.shields.io/badge/OS-macOS-informational?style=flat-square&logo=apple&logoColor=white)](https://en.wikipedia.org/wiki/MacOS"/>
    <img alt="terminal iterm2" src="https://img.shields.io/badge/Terminal-iterm2-informational?style=flat-square&logo=powershell&logoColor=white&color=2bbc8a"/>
    <img alt="shell zsh" src="https://img.shields.io/badge/shell-zsh-2bbc8a.svg?&style=flat-square&logo=gnu-bash&logoColor=white&color=2bbc8a"/>
    <img alt="framwork oh-my-zsh" src="https://img.shields.io/badge/Framework-Oh_My_Zsh-informational?style=flat-square&logo=powershell&logoColor=white&color=2bbc8a"/>
    <img alt="editor vim" src="https://img.shields.io/badge/editor-vim-informational?style=flat-square&logo=vim&logoColor=white&color=2bbc8a"/>
    <img alt="c code" src="https://img.shields.io/badge/code-c-informational?style=flat-square&logo=c&logoColor=white&color=2bbc8a"/>
    <img alt="c++ code" src="https://img.shields.io/badge/code-c++-blue.svg?style=flat-square&logo=c%2B%2B"/>
    <img alt="license" src="https://img.shields.io/github/license/Naereen/StrapDown.js.svg?style=flat-square"/>
</p>
<br/>

## DotFiles
* [How to use](#how-to-use)
* [Custom ZSH Theme](#custom-zsh-theme)
* [Vim](#vim)
* [Colorls](#colorls)
* [yarn-autocompletions](#yarn-autocompletions)
<br/>

## How to use

To better version controlling, I have put all my dotfiles in '~/bin/' directory and create symbolic link to files from the dotfiles directory to the other files that are situated elsewhere. So you don't have to go to different folders every time when you want to edit different files. All you have to do is `cd ~/bin/dotfiles` and edit files there. That's it.

1. `mkdir -p ~/bin`
1. `cd bin/`
1. `git clone git@github.com:MD-MRP/dotfiles.git`
1. `ln -nfs ~/bin/dotfiles/.bashrc ~/.bashrc`
1. *install [oh-my-zsh](https://ohmyz.sh/#install)*
    1. using curl `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh>)"`
    or
    1. using wget `sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)`

1. `ln -nfs ~/bin/dotfiles/.zshrc ~/.zshrc`
<br/>

## Custom ZSH Theme
<img align="right" alt="GIF" src="https://raw.githubusercontent.com/mrpmohiburrahman/assets/main/dotFilesAssets/prompt.gif?token=AINKGPJZHNQRK4FRCQURGQK7XHX2S" width="400"/>

1. `ln -s ~/bin/dotfiles/ZSH_THEME/mrp.zsh-theme ~/.oh-my-zsh/custom/themes/mrp.zsh-theme`
1. set [ZSH_THEME="mrp"](https://github.com/mrpmohiburrahman/dotfiles/blob/6b9e3537c5f4851c2f61d92ed7e1a338d2cd068c/.zshrc#L11)
1. Apple icon and version control icon are collected from [nerd font icon set](https://www.nerdfonts.com/cheat-sheet)
1. For Apple icon(shown in prompt), I have to direct copy paste it in [here](https://github.com/mrpmohiburrahman/dotfiles/blob/a2a0dd48bec7f2c17422a8fc3ca012f729c50192/ZSH_THEME/mrp.zsh-theme#L1) right after '%F{#46b5d1}' and '%F{#d16246}'.
1. For version control icon, I have to put unicode escape sequence in [here](https://github.com/mrpmohiburrahman/dotfiles/blob/a2a0dd48bec7f2c17422a8fc3ca012f729c50192/ZSH_THEME/mrp.zsh-theme#L4) which is '\ue727'
<br/>

## Vim

<img align="right" alt="GIF" src="https://raw.githubusercontent.com/mrpmohiburrahman/assets/main/dotFilesAssets/vim.gif?token=AINKGPPLA7GEABKFGDOKB5S7XHRSG" width="400"/>

1. Create symbolic link
    1. `ln -nfs ~/bin/dotfiles/vim/vimrc ~/.vimrc`
    1. `touch ~/.vim`
    1. `ln -nfs ~/bin/dotfiles/vim ~/.vim`
    
1. Install Vundle `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

1. Add plugin in [here](https://github.com/mrpmohiburrahman/dotfiles/blob/2601e36c85c408b982ab6fcf7faf31bb15300651/vim/.vimrc#L19). This repo contains following vim plugins:
    1. [preservim/nerdtree](https://github.com/preservim/nerdtree)
    1. [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs)
    1. [morhetz/gruvbox](https://github.com/morhetz/gruvbox)
    1. [arcticicestudio/nord-vim](https://github.com/arcticicestudio/nord-vim)
    1. [joshdick/onedark.vim](https://github.com/joshdick/onedark.vim)
    1. [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot)
    1. [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim)
1. `vim ~/.vimrc`
1. `PluginInstall`
<!--
    1. `sudo apt install build-essential cmake3 python3-dev`
    1. `cd ~/bin/dotfiles/vim/bundle/YouCompleteMe/`
    1. `git submodule update --init --recursive`
    1. `python3 install.py --clangd-completer`
    1. "colorScheme": "One Half Dark" #in list
    1. Keybindings
    `{
    "command": "closeTab",
        "keys": [
                "ctrl+w"
                ]
    },
    {
    "command": "newTab",
        "keys": [
                "ctrl+t"
                ]
    },`
    1. *Install pathed Powerline font for windows*
        1. Clone powerline font
        1. Administrator powershell
        1. `Set-ExecutionPolicy Bypass`
        1. `.\install.ps1`
        1. `Set-ExecutionPolicy Default`
        1. `fontFace": "DejaVu Sans Mono for Powerline`
-->

<br/>

## Colorls
<img align="right" alt="GIF" src="https://raw.githubusercontent.com/mrpmohiburrahman/assets/main/dotFilesAssets/filesAndFoldersIcons_compressed.gif?token=AINKGPOAN7EMJPHXSJSO6DC7XHJOC" width="400"/>

1. Install colorls for special folder and file view. add icon to make it more
beautiful.
    1. Install nerdfonts [nerdfont](https://github.com/ryanoasis/nerd-fonts/blob/master/readme.md#option-4-homebrew-fonts)
    1. In iterm2, go to Profiles->Text->Non-ASCII Font->select 'Hack Nerd Font', 'regular', size 23 and select 'Use ligatures'(optional)
    1. Install colorls by following these [steps](https://github.com/athityakumar/colorls#installation)
    1. Make alias in [.zshrc](https://github.com/mrpmohiburrahman/dotfiles/blob/0770fddc710ad13e1f562b74a8056a7270003d08/.zshrc#L105)`alias ls="colorls"`
    1. Add tab completion to colorls in [.zshrc](https://github.com/mrpmohiburrahman/dotfiles/blob/0770fddc710ad13e1f562b74a8056a7270003d08/.zshrc#L106) `source $(dirname $(gem which colorls))/tab_complete.sh`
    1. change the color of colorls output
        1. `sudo ln -s ~/bin/dotfiles/config/colorls/dark_colors.yaml /Library/Ruby/Gems/2.6.0/gems/colorls-1.4.2/lib/yaml/dark_colors.yaml`
<br/>
<br/>

## yarn-autocompletions
<img align="right" alt="GIF" src="https://raw.githubusercontent.com/mrpmohiburrahman/assets/main/dotFilesAssets/yarn_completion.gif?token=AINKGPJXZ3MPT5XJIAOWYIC7XHNKE" width="400"/>

1. yarn-autocompletions
    1. Donwload binary from this [link](https://github.com/g-plane/zsh-yarn-autocompletions/releases)
    2. Install it as shown [here](https://github.com/g-plane/zsh-yarn-autocompletions#add-as-a-zsh-plugin)
