set nocompatible
filetype off

set completeopt-=preview

filetype off
set number
set foldmethod=indent
set foldlevel=99

set clipboard+=unnamedplus

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin('elzr/vim-json')
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()            " required

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za


call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/jpalardy/vim-slime.git', { 'for': 'python' }
" " Optional: If you want a nice status line in Vim
Plug 'ellisonleao/gruvbox.nvim'
Plug 'neanias/everforest-nvim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/kshenoy/vim-signature.git'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'mtdl9/vim-log-highlighting'
Plug 'nvim-tree/nvim-web-devicons'
call plug#end()

" " Optional: configure vim-airline to display status
let g:airline_theme = 'base16'
let g:airline_powerline_fonts = 1
let g:airline_section_y = ''
let g:airline_extensions = []

let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}
let g:slime_dont_ask_default = 1


filetype plugin indent on
autocmd vimenter * if !argc() | NERDTree | endif
"autocmd VimEnter * if !wincmd p

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


set background=dark 
colorscheme gruvbox
