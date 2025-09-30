set nocompatible

"---- General Settings ----
set number
syntax on
filetype on
filetype plugin on
set laststatus=2
set nowrap
set showmode
set termguicolors
colorscheme evening "slate
set mouse=a

" ---- Custom Auto Complete ----
inoremap { {<CR>}<Esc>ko<Tab>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " "\"<Left>
inoremap ' ''<Left>
inoremap <expr> ) getline('.')[col('.') - 1] == ')' ? "<Right>" : ")"
inoremap <expr> ] getline('.')[col('.') - 1] == ']' ? "<Right>" : "]"
inoremap <expr> } getline('.')[col('.') - 1] == '}' ? "<Right>" : "}"


" Set cursor to a steady vertical bar when in Insert mode
let &t_SI = "\033[5 q" " INSERT  |

" Set cursor to a steady block when leaving Insert mode
let &t_EI = "\033[2 q" " NORMAL  █



"---- Status Line ----
" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %Y\ %R\ %M

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\row:\ %l\ col:\ %c\ percent:\ %p%%


"---- Tabs and Search ----

" Converts tabs to spaces with length 4
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
"filetype plugin indent on
set autoindent

" Makes searching through the file easier (Tip :e to open file tree and :e# to close file tree)
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

set ruler
set showcmd

"Don't save backup files, using git
set nobackup


let mapleader = "<space>"
"set clipboard=unnamedplus
set autoread

"---- Window Tiling ----
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


