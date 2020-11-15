## Steps

1. `mkdir -p ~/bin`
1. `cd bin/`
1. `git clone git@github.com:MD-MRP/dotfiles.git`
1. `ln -nfs ~/bin/dotfiles/.bashrc ~/.bashrc`
1. *install oh-my-zsh*
    1. `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh>`)"
    1. `sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)`

1. `ln -nfs ~/bin/dotfiles/.zshrc ~/.zshrc`
1. `ln -nfs ~/bin/dotfiles/vim/vimrc ~/.vimrc`
1. `touch ~/.vim`
1. `ln -nfs ~/bin/dotfiles/vim ~/.vim`
1. `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
1. `vim ~/.vimrc`
    1. `PluginInstall`
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


<br/>

### Colorls
<img align="right" alt="GIF" src="https://raw.githubusercontent.com/mrpmohiburrahman/assets/main/dotFilesAssets/filesAndFoldersIcons_compressed.gif?token=AINKGPOAN7EMJPHXSJSO6DC7XHJOC" width="300"/>

1. Install colorls for special folder and file view. add icon to make it more
beautiful.
    1. Install nerdfonts [nerdfont](https://github.com/ryanoasis/nerd-fonts/blob/master/readme.md#option-4-homebrew-fonts)
    1. In iterm2, go to Profiles->Text->Non-ASCII Font->select 'Hack Nerd Font', 'regular', size 23 and select 'Use ligatures'(optional)
    1. Install colorls by following these [steps](https://github.com/athityakumar/colorls#installation)

1. yarn-autocompletions
    1. Donwload binary from this [link](https://github.com/g-plane/zsh-yarn-autocompletions/releases)
    2. Install it as shown [here](https://github.com/g-plane/zsh-yarn-autocompletions#add-as-a-zsh-plugin)
