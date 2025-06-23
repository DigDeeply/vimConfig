# vimConfig
vim config

Installation
---------------------
* CheckOut

>	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim    
>	git clone git@github.com:DigDeeply/vimConfig.git	~/vimConfig

* Link vimrc file and the screen file

>	ln -s ~/vimConfig/vimrc ~/.vimrc && ln -s ~/vimConfig/screenrc ~/.screenrc

* Install plugins

>	vim +PluginInstall +qall

* Wait for installing plugins

>	Have some tea

* if lost vim theme "luna.vim", try

> wget "https://raw.githubusercontent.com/vim-airline/vim-airline-themes/master/autoload/airline/themes/luna.vim" -O ~/.vim/bundle/vim-airline/autoload/airline/themes/luna.vim

* Install oh-my-zsh with Curl; with error message: "Zsh is not installed! Please install zsh first!"; try to install zsh, yum install zsh || apt-get install zsh

> sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

* install zsh-plugins
> git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
> git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions

* link .zshrc config

> ln -s ~/vimConfig/zshrc ~/.zshrc
