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
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
" Bundle 'tomtom/tcomment_vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'bling/vim-airline'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'tpope/vim-endwise'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tmhedberg/matchit'
Bundle 'Townk/vim-autoclose'
Bundle 'pangloss/vim-javascript'
Bundle 'ervandew/supertab'
Bundle 'flazz/vim-colorschemes'
Bundle 'vim-scripts/actionscript.vim--Cuss'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'matze/vim-move'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set tm=500
set vb t_vb=

" 代码折叠
set foldmethod=indent
set foldlevel=100  " 启动vim时不要自动折叠代码

"显示行号
set number 

"高亮当前行
set cursorline

"高亮当前列
set cursorcolumn

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

if has('gui_running')
  set lines=60
  " set guifont=Monaco:h12
  set guifont=Inconsolata:h14
  set guioptions=aAce
  set transparency=1
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
  " set guifont=Monaco\ Regular:h12
  set guifont=Courier\ Regular:h13
endif

let g:molokai_original = 1
colorscheme molokai
" colorscheme desert
" colorscheme desertEx
" colorscheme kib_darktango
" colorscheme anotherdark
" colorscheme bensday

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines





" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>


" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" 快速复制
vmap <leader>aa "ay
nmap <leader>ss "ap

"NERDTree
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['.DS_Store', '\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=2
" let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=1
let NERDTreeShowHidden=1


"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rc'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn)$'


"开启ruby代码自动补全的功能
" autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
" autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
" autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
" autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
" autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby
" autocmd BufRead,BufNewFile *.as set filetype=actionscript


"NERD commenter
let NERDSpaceDelims=1    "让注释与语句之间留一个空格
let NERDCompactSexyComs=1   "多行注释美化

let g:SuperTabDefaultCompletionType = "context"

"vim-move
let g:move_key_modifier = 'D'
