# vimConfig
vim config

Installation
---------------------
* CheckOut

>	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle    
>	git clone git@github.com:DigDeeply/vimConfig.git	~/vimConfig

* Link vimrc file and the screen file

>	ln -s ~/vimConfig/vimrc ~/.vimrc && ln -s ~/vimConfig/screenrc ~/.screenrc

* Install plugins

>	vim +BundleInstall +qall

* Wait for installing plugins

>	Have some tea

* Install oh-my-zsh with Curl; with error message: "Zsh is not installed! Please install zsh first!"; try to install zsh, yum install zsh || apt-get install zsh

> sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

* link .zshrc config

> ln -s ~/vimConfig/zshrc ~/.zshrc
