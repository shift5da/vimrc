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
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'honza/snipmate-snippets'
" Bundle 'tpope/vim-endwise'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tmhedberg/matchit'
Bundle 'Townk/vim-autoclose'

filetype plugin indent on     " required!


set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
set autochdir

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


" powerline
if has('statusline')
	set laststatus=2
	set encoding=utf-8
endif


" " NeoComplCache
" let g:neocomplcache_enable_at_startup=1
" let g:neoComplcache_disableautocomplete=1
" let g:neocomplcache_enable_underbar_completion = 1
" let g:neocomplcache_enable_camel_case_completion = 1
" let g:neocomplcache_enable_smart_case=1
" let g:neocomplcache_min_syntax_length = 3
" let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" set completeopt-=preview

" imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
" smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
" imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
" smap <C-l> <Plug>(neocomplcache_snippets_force_jump)
" " Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType c setlocal omnifunc=ccomplete#Complete


" " For snippet_complete marker.
" if has('conceal')
	" set conceallevel=2 concealcursor=i
" endif

" Tell Neosnippet about the other snippets
" let g:neosnippet#snippets_directory='~/.vim/bundle/snipmate-snippets/snippets'


source ~/.NeoComplCache.conf


if has('gui_running')
	set lines=50
	let g:molokai_original = 1
	set background=light
	set guifont=Monaco:h13
	set guioptions=aAce
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
