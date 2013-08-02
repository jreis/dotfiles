set nocompatible
set background=dark
filetype on
filetype plugin on
filetype indent on
set autowrite

set hidden
let mapleader=","
set showcmd
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let vundle manage vundle
" required!
Bundle 'gmarik/vundle'

" my bundles
Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'rstacruz/sparkup'
Bundle 'wesgibbs/vim-irblack'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'actionshrimp/vim-xpath'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-surround'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'vim-scripts/closetag.vim'
Bundle 'majutsushi/tagbar'

filetype plugin indent on

syntax on
set writebackup
set lazyredraw
set ttyfast
set nowrap
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set showmatch
set ignorecase
set smartcase
set smarttab
set scrolloff=4
set hlsearch
set incsearch
set foldenable
set foldmethod=syntax
set foldlevel=5
set foldlevelstart=99
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
set history=1000
set undolevels=1000
set nobackup
set noswapfile
set wildmenu
set wildmode=list:full
set title
set noerrorbells
set cursorline
set hidden
set laststatus=2
set encoding=utf-8
set t_Co=256
set noshelltemp
set shell=cmd.exe
set shellcmdflag=/C

set list
set listchars=nbsp:¬,tab:»·,trail:·

" Starting from vim 7.3 undo can be persisted across sessions
" http://www.reddit.com/r/vim/comments/kz84u/what_are_some_simple_yet_mindblowing_tweaks_to/c2onmqe
if has("persistent_undo")
    set undodir=~/.vim/undodir
    set undofile
endif

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" Remap VIM 0 to first non-blank character
map 0 ^

" Breaking lines with ,[enter] without having to go to insert mode
nmap <leader><cr> i<cr><esc>

" Reload changes to .vimrc automatically
autocmd BufWritePost ~/.vimrc source ~/.vimrc

command! Q q
command! W w

let g:ctrlp_map = '<c-p>'
nmap <silent> \ :NERDTreeToggle<cr>

nnoremap <leader>n :bnext<cr>
nnoremap <leader>p :bprevious<cr>

autocmd FileType xslt
    \ setlocal shiftwidth=2 |
    \ setlocal tabstop=2
au BufRead,BufNewFile *.config set filetype=xml

nmap <silent> <leader>/ :nohlsearch<CR>

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

inoremap jj <Esc>
inoremap jk <Esc>

vnoremap . :normal .<CR>

nmap <leader>y "+y
nmap <leader>Y "+yy
nmap <leader>p "+p
nmap <leader>P "+P

vmap <leader>y "+y
vmap <leader>Y "+yy

" YankRing stuff
nnoremap <leader>r :YRShow<CR>

nmap Y y$

nmap <space> zz

nnoremap ]t vatatv
nnoremap [t vatatov

nnoremap gp `[v`]

autocmd InsertLeave * if expand('%') != '' | update | endif

nmap <silent> <leader>o 10zl
nmap <silent> <leader>i 10zh

nmap <f10> :silent :!start explorer /select,%:p<CR>

nmap <leader>u :silent :!start cmd /c "c:\program files\unlocker\unlocker.exe" "%:p"<CR>

nnoremap <silent> <F8> :TlistToggle<CR>

map <F2> :set nowrap!<CR>

nmap <leader>fx :set filetype=xml<CR>
nmap <leader>fh :set filetype=html<CR>

vmap <leader>c <esc>^i<!--<esc>A--><esc>
vmap <leader>u <esc>^4xf-D

nmap <leader>w :w<CR>

let g:tagbar_ctags_bin = "C:\\Program\ Files\ (x86)\\ctags\\ctags.exe"
let g:tagbar_usearrows = 1
nnoremap <leader>t :TagbarToggle<cr>

let g:snippets_dir="H:/vimfiles/snippets"

"window movements

noremap <silent> <leader>h :wincmd h<CR>
noremap <silent> <leader>j :wincmd j<CR>
noremap <silent> <leader>k :wincmd k<CR>
noremap <silent> <leader>l :wincmd l<CR>

noremap <silent> <leader>ch :wincmd h<CR>:close<CR>
noremap <silent> <leader>cj :wincmd j<CR>:close<CR>
noremap <silent> <leader>ck :wincmd k<CR>:close<CR>
noremap <silent> <leader>cl :wincmd l<CR>:close<CR>

noremap <silent> <leader>cc :close<CR>

noremap <silent> <leader>mh <C-W>H
noremap <silent> <leader>mj <C-W>J
noremap <silent> <leader>mk <C-W>K
noremap <silent> <leader>ml <C-W>L

let g:Powerline_symbols="fancy"

if has("gui_running")
	set guifont=Consolas_for_Powerline_FixedD:h10:cANSI
	set background=dark
	colorscheme ir_black

	set guioptions-=T
	set guioptions-=l
	set guioptions-=L
	set guioptions-=r
	set guioptions-=R
	set guioptions-=m
	set guioptions-=b

	set lines=40
	set columns=120
endif

let g:LustyJugglerSuppressRubyWarning = 1

let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax
autocmd BufRead,BufNewFile *.vb setlocal filetype=vbnet 

set nolist

nmap <silent> <leader>x :% !h:\tools\xmllint.exe % --format<CR>

map <F12> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

nmap <leader>x :XPathSearchPrompt<CR>

nmap <leader>j :SplitjoinJoin<CR>
nmap <leader>s :SplitjoinSplit<CR>


" neocomplcache
" A beter autocomplete system!

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_enable_smart_case = 1

" default # of completions is 100, that's crazy
let g:neocomplcache_max_list = 5

" words less than 3 letters long aren't worth completing
let g:neocomplcache_auto_completion_start_length = 3

" Map standard Ctrl-N completion to Cmd-Space
inoremap <D-Space> <C-n>

" This makes sure we use neocomplcache completefunc instead of
" the one in rails.vim, otherwise this plugin will crap out
let g:neocomplcache_force_overwrite_completefunc = 1

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

" Prevent hanging with python: https://github.com/skwp/dotfiles/issues/163
let g:neocomplcache_omni_patterns['python'] = ''

nnoremap <C-Up> :silent! let &guifont = substitute(
 \ &guifont,
 \ ':h\zs\d\+',
 \ '\=eval(submatch(0)+1)',
 \ '')<CR>
nnoremap <C-Down> :silent! let &guifont = substitute(
 \ &guifont,
 \ ':h\zs\d\+',
 \ '\=eval(submatch(0)-1)',
 \ '')<CR>

noremap <F2> :<c-u>call MultiCursorPlaceCursor()<cr>
nnoremap <Leader>] :<c-u>call MultiCursorManual()<cr>
nnoremap <Leader>c :<c-u>call MultiCursorRemoveCursors()<cr>
xnoremap <F2> :<c-u>call MultiCursorVisual()<cr>
nnoremap <Leader><F2> :<c-u>call MultiCursorSearch('')<cr>
nnoremap <Leader>w :<c-u>call MultiCursorSearch('<c-r><c-w>')<cr>
let g:multicursor_quit = "<leader>qq"

function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END
