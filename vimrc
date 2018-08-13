set nocompatible               " be iMproved
filetype off                   " required!       /**  从这行开始，vimrc配置 **/

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'

" My Bundles here:
"
" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
"Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
"Plugin 'L9'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
"Plugin 'git://git.wincent.com/command-t.git'
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
"Plugin 'file:///home/gmarik/path/to/plugin'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
"Plugin 'ascenator/L9', {'name': 'newL9'}
"Plugin 'bufexplorer.zip'
Plugin 'jlanzarotta/bufexplorer' " \be 查看buffer
Plugin 'scrooloose/nerdtree'
Plugin 'Markdown'
Plugin 'Align'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'tmhedberg/matchit'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-unimpaired'
Plugin 'YankRing.vim'
Plugin 'Blackrush/vim-gocode'
"解决yaml syntax卡顿问题
Plugin 'git@github.com:stephpy/vim-yaml.git' 
"函数,变量 map
Plugin 'majutsushi/tagbar'
"快速对齐
Plugin 'godlygeek/tabular'

"
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 简要帮助文档
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后


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
nmap   <C-l>b <leader>bt
"隐藏行号和相对行号
nmap <C-l>n :set nonu <bar> :set norelativenumber<CR>
"展示tags
nmap <F8> :TagbarToggle<CR>


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

"修改vim-gocode默认的format工具为goreturns
let g:gofmt_command = "goreturns"
