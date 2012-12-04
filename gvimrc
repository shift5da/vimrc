set guifont=Monaco:h14

"关闭声音
set noeb
set vb
set vb t_vb=

"显示光标所在位置
set ruler

let g:molokai_original = 1
set background=light
colorscheme molokai
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

"设定自动补全功能
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i

"查找忽略大小写
set ic  

set tabstop=2
set cindent shiftwidth=2
set autoindent shiftwidth=2

filetype on
filetype plugin indent on

map <F8> :NERDTree<CR>

"在不同的窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>w :bn<CR>
map <leader>q :bp<CR>

" " Opens a new tab with the current buffer's path
" " Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

"自动加载
set autoread

"NERDTree
let NERDTreeChDirMode=2

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rc'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn)$'

"使用'\'+数字键切换tab
function! TabPos_ActivateBuffer(num)  
	let s:count = a:num   
	exe "tabfirst"  
	exe "tabnext" s:count    
endfunction  

function! TabPos_Initialize()  
	for i in range(1, 9)   
		exe "map <leader>" . i . " :call TabPos_ActivateBuffer(" . i . ")<CR>"  
	endfor  
	exe "map <leader>0 :call TabPos_ActivateBuffer(10)<CR>"  
endfunction  

autocmd VimEnter * call TabPos_Initialize()  


"开启ruby代码自动补全的功能
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby


"NERD commenter
let NERDSpaceDelims=1    "让注释与语句之间留一个空格
let NERDCompactSexyComs=1   "多行注释美化

"SuperTab
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-n>"
