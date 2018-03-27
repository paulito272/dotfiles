syntax on
set encoding=utf8
set nocompatible
set shiftround
set splitright
set splitbelow
set lazyredraw
set ttyfast
set nowrap
set showcmd
set number relativenumber
set ignorecase smartcase
set nobackup nowritebackup noswapfile
set noerrorbells novisualbell
set ignorecase smartcase
set clipboard=unnamed
set spell spelllang=en_us
set expandtab shiftwidth=4 tabstop=4
set list listchars=tab:▸\ ,trail:·,precedes:←,extends:→
set list
set rtp+=$HOME/.local/lib/python3.5/site-packages/powerline/bindings/vim/
set t_Co=256

" Ignored files/directories from autocomplete (and CtrlP)
set wildignore+=*/tmp/*
set wildignore+=*.so
set wildignore+=*.pyc
set wildignore+=*.zip

" Enable code folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Enable color columns
set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Colors & Formatting
colorscheme onedark

" Leader Mappings
map <Space> <leader>
nnoremap <leader>q :qa<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>e :NERDTree<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>. :CtrlPTag<CR>
nnoremap <F8> :TagbarToggle<CR>

" Get off my lawn - helpful when learning Vim :)
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Mappings to move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Create the `tags` file
command! MakeTags !ctags -R .

" Go to definition shortcuts
map <C-\> :vsp <CR>:exec('tag '.expand('<cword>'))<CR>

" Automatically remove newline whitespaces upon save
autocmd BufWritePre *.py :%s/\s\+$//e

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-sensible'
Plug 'valloric/matchtagalways'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'craigemery/vim-autotag'
call plug#end()
