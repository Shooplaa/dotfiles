" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'dylanaraps/wal.vim'

call plug#end()

" UI
syntax on
colorscheme wal
set t_Co=256
set splitbelow
set splitright
set guicursor=
set scrolloff=3
set sidescrolloff=5
set display+=lastline

" Tree
let NERDTreeShowHidden=1

" Tabs
set expandtab
set tabstop=4
set shiftwidth=4
set number relativenumber numberwidth=5
set smarttab
set ai
set si

" Search
set ignorecase
set smartcase
set nohlsearch
set incsearch
set magic

" Sound
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Files
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
filetype plugin indent on
au FileType c,cpp,cs,java setlocal commentstring=//\ %s
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let g:livepreview_previewer = 'zathura'

" Keybindings
map <C-o> :NERDTreeToggle<CR>

" i3 Config Syntax
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end
