call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'rking/ag.vim'
Plug 'airblade/vim-gitgutter'
Plug 'jlanzarotta/bufexplorer'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'arcticicestudio/nord-vim'
call plug#end()

set rnu

set nowrap
set sidescroll=5

set backspace=indent,eol,start

set nobackup
set nowritebackup
set noswapfile

set ruler
set showcmd
set history=50

set nolist
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»

set laststatus=2
set splitbelow
set splitright
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set numberwidth=3
set updatetime=100
set hlsearch

let mapleader=","

" FZF configuration
let g:fzf_layout = { 'down': '~20%' }
nnoremap <C-p> :FZF<CR>

"NERDTree configuration
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let NERDTreeQuitOnOpen = 0
let NERDTreeWinSize = 50
nmap <leader>t :NERDTreeToggle<CR>
nmap <leader>r :NERDTree %<CR>

" Window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Yank the full path of current buffer to clipboard
nnoremap <Leader>yf :let @"=expand('%:p')<CR>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  " let g:ctrlp_use_caching = 0
endif
nnoremap \ :Ag<SPACE>
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Buffer manager configuration
nmap <C-e> <leader>be

" Color theme configuration
syntax on
set t_Co=256
set background=dark

filetype on
autocmd Filetype python set expandtab sw=4 sts=4
autocmd Filetype javascript set expandtab sw=2 sts=2
