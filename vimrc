" vundle
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tomasr/molokai'
Bundle 'Lokaltog/vim-powerline'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle "garbas/vim-snipmate"
Bundle 'tpope/vim-endwise'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tmhedberg/matchit'
Bundle 'Townk/vim-autoclose'
Bundle 'pangloss/vim-javascript'

filetype plugin indent on     " required!



set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=3                 " minimum lines to keep above and below cursor
set foldenable                  " auto fold code

"关闭声音
set noeb
set vb
set vb t_vb=

"显示光标所在位置
set ruler


set t_Co=256

"隐藏底部滚动条
set guioptions-=b
"隐藏右边滚动条
set guioptions-=R
set guioptions-=r
"隐藏左边滚动条
set guioptions-=l
set guioptions-=L

" 定义 <Leader> 为逗号
let mapleader = ","

"不兼容VI键盘，使用vim键盘
set nocompatible

"禁止产生临时文件
set nobackup
set noswapfile

"高亮当前行
set cursorline
set cursorcolumn

"历史记录数
set history=50

"设置文件浏览器目录为当前目录
set bsdir=buffer

"设置编码
set enc=utf-8

"设置文件编码
set fenc=utf-8

"设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

"显示行号
set number 

"高亮显示查找的内容，并且自动定位到查找内容
set hls is 

"高亮语法
syntax on

" 代码折叠
set foldmethod=indent


"查找忽略大小写
set ic  

set tabstop=2
set smartindent shiftwidth=2
set autoindent shiftwidth=2

""filetype on
filetype plugin indent on


"在不同的窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


"自动加载
set autoread

"NERDTree
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['.DS_Store', '\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=2
" let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
" let NERDTreeKeepTreeInNewTab=1
" let g:nerdtree_tabs_open_on_gui_startup=0

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rc'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn)$'


"开启ruby代码自动补全的功能
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby


"NERD commenter
let NERDSpaceDelims=1    "让注释与语句之间留一个空格
let NERDCompactSexyComs=1   "多行注释美化


" powerline
if has('statusline')
	set laststatus=2
	set encoding=utf-8
endif


if has('gui_running')
	set lines=60
	let g:molokai_original = 1
	set background=light
	set guifont=Monaco:h12
	set guioptions=aAce
	set linespace=1
	map <D-1> 1gt
	map <D-2> 2gt
	map <D-3> 3gt
	map <D-4> 4gt
	map <D-5> 5gt
	map <D-6> 6gt
	map <D-7> 7gt
	map <D-8> 8gt
	map <D-9> 9gt
	map <D-0> :tablast<CR>
else
	set guifont=Monaco\ Regular:h13
	set background=dark
endif

colorscheme molokai

