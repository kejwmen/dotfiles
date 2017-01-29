set nocompatible

syntax on
filetype on
filetype plugin on
filetype indent on
set number
set showmatch
set expandtab
set mouse=
set splitbelow
set splitright
set ignorecase
set smartcase
set gdefault
set magic
set scrolloff=25

let mapleader="\<SPACE>"

nmap <Leader>s :%s//g<Left><Left>

nnoremap <leader>sv :source $MYVIMRC<CR>    

" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on': ['NERDTree', 'NERDTreeToggle', 'NERDTreeMirror'] }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'fmoralesc/vim-tutor-mode'
Plug 'alessandroyorba/sidonia'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

colorscheme sidonia

" Airline
let g:airline_theme='base16_default'
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s: '

" Open file menu
nnoremap <Leader>o :Files<CR>
" Open buffer menu
nnoremap <Leader>b :CtrlPBuffer<CR>
" Open most recently used files
nnoremap <Leader>f :CtrlPMRUFiles<CR>

nnoremap <Leader>pi :PlugInstall<CR>

map <Leader>n :NERDTreeToggle<CR>

let g:gitgutter_enabled = 1

" Buffers
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>wl :Windows<CR>
nmap <leader>bl :Buffers<CR>
nmap <leader>T :enew<cr>

" Move between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

