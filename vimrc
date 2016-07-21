set nocompatible               " be iMproved
filetype off                   " required!       /**  从这行开始，vimrc配置 **/

" vundle {
set rtp+=~/.vim/bundle/vundle/
" 如果在windows下使用的话，设置为 
" set rtp+=$HOME/.vim/bundle/vundle/
call vundle#rc()
" }
"
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
" github上的用户写的插件，使用这种用户名+repo名称的方式
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" vim-scripts repos
" vimscripts的repo使用下面的格式，直接是插件名称
Bundle 'taglist.vim'
Bundle 'winmanager'
Bundle 'bufexplorer.zip'
Bundle 'The-NERD-tree'
Bundle 'Markdown'
Bundle 'Align'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'tmhedberg/matchit'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-unimpaired'
Bundle 'YankRing.vim'
Bundle 'Blackrush/vim-gocode'
"Bundle 'FencView.vim'
"Bundle 'SuperTab'
"Bundle 'c.vim'

" non github reposo
" 非github的插件，可以直接使用其git地址
" Bundle 'git://git.wincent.com/command-t.git'
" ...

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" vundle主要就是上面这个四个命令，例如BundleInstall是全部重新安装，BundleInstall!则是更新
" 一般安装插件的流程为，先BundleSearch一个插件，然后在列表中选中，按i安装
" 安装完之后，在vimrc中，添加Bundle 'XXX'，使得bundle能够加载，这个插件，同时如果
" 需要配置这个插件，也是在vimrc中设置即可
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
"
"
"
"
"
"""""""""""""""""""""""""""""""""""""" 
" 语法着色与高亮设置
""""""""""""""""""""""""""""""""""""""

"开启语法高亮
syntax enable
syntax on

"配色
"colo ruki
"colors ruki
:colorscheme peachpuff


"由于目前没有找到ruki插件，暂时取消该功能，找到该插件后，再启用该功能

"设置高亮搜索
:set hlsearch

""""""""""""""""""""""""""""""""""""""
" 文件设置
""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set fileencoding=chinese
set fileencodings=ucs-bom,utf-8,chinese
set ambiwidth=double

"检测文件的类型
filetype on
filetype plugin indent on

"默认无备份
:set nobackup
:set nowritebackup

""""""""""""""""""""""""""""""""""""""
" 鼠标设置
""""""""""""""""""""""""""""""""""""""

"鼠标支持
"if has('mouse')
":set mouse=a
"endif

"使鼠标用起来象微软 Windows,似乎正好解决 连续多行缩进问题、退格问题
":behave mswin

""""""""""""""""""""""""""""""""""""""
" 编辑器设置
""""""""""""""""""""""""""""""""""""""

"显示行号
set number
set relativenumber

"Tab 宽度
:set ts=4

"自动缩进
:set sw=4

"show existing tab with 4 spaces width
:set tabstop=4
"when indenting with '>', use 4 spaces width
:set shiftwidth=4
"On pressing tab, insert 4 spaces
:set expandtab

"C/C++ 风格的自动缩进
:set cin

"设定 C/C++ 风格自动缩进的选项
:set cino=:0g0t0(sus
")  用于闭合括号; 正常高亮

"打开普通文件类型的自动缩进
:set ai

"在编辑过程中，在右下角显示光标位置的状态行
:set ruler

"显示匹配括号
:set showmatch

"在insert模式下能用删除键进行删除
:set backspace=indent,eol,start

"代码折叠, 命令 za
":set foldmethod=indent
":set foldlevel=100  "启动vim时不要自动折叠代码

"新折叠用法  {{{   }}} marker
:set foldmethod=marker
"设定折叠颜色
:highlight Folded ctermfg=0

""""""""""""""""""""""""
" let 快捷设置
""""""""""""""""""""""""
let @p='"0p' "用于快捷的粘贴寄存器0的数据

"""""""""""""""""""""""
" 映射命令
"""""""""""""""""""""""
"映射命令行下的c编译并执行
cmap <C-r>c !gcc % && ./a.out<CR>
cmap <C-r>p !php % <CR>
cmap <C-r>l !php -l % <CR>
cmap <C-r>g !go run % <CR>
nmap <silent> <C-g>g :NERDTreeToggle<CR>

"快速编辑buffer
nmap   <F5> :ls<CR>:e #

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
" Status Line
if has('statusline')
	set laststatus=1        " Always show
endif





cmap <C-R><F4> :call TitleDet()<cr>
function AddTitle()
    call append(0,"/**")
    call append(1,"* ")
    call append(2,"* @Author fukun - fukun@360.cn")
    call append(3,"* @date ".strftime("%Y-%m-%d"))
    call append(4,"* @Last modified: ".strftime("%Y-%m-%d %H:%M"))
    call append(5,"* @Filename: ".expand("%:t"))
    call append(6,"* @Description: ")
    call append(7,"*")
    call append(8,"**/")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf

function UpdateTitle()
    normal m'
    execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction

function TitleDet()
    let n=1
    while n < 10
        let line = getline(n)
        if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n + 1
    endwhile
    call AddTitle()
endfunction 

let g:airline#extensions#tabline#enabled = 0
let g:airline_theme='luna'
