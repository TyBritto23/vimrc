set nocompatible

"---- General Settings ----
let mapleader = " "
set number
syntax on
filetype on
filetype plugin on
set laststatus=2
set nowrap
set showmode
set termguicolors
set mouse=a
set showmatch
set cursorline
" Removes highlight after search
nnoremap <leader>h :noh<cr>
" Opens terminal on the left side of the screen
nnoremap <leader>t <Esc>:vert term<cr>

"Use Tab / Shift-Tab to cycle
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

"--- Plugins Start ---
call plug#begin()
Plug 'vim-scripts/AutoComplPop'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
call plug#end()

" ---- Comments ----
" Map Space+/ to the toggle command
nmap <leader>/ gcc
vmap <leader>/ gc

" ---- Color Scheme ----
colorscheme gruvbox "gruvbox is a plugin, colorscheme is not
set bg=dark

" ---- Plugins End ----

"---- File Tree ----
nnoremap <leader>b <Esc>:Lex<cr>:vertical resize 30<cr>

" Set cursor to a steady vertical bar when in Insert mode
let &t_SI = "\033[5 q" " INSERT  |

" Set cursor to a steady block when leaving Insert mode
let &t_EI = "\033[2 q" " NORMAL  █

"---- Status Line ----
set laststatus=2

function! GitBranch()
    let branch = system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
    return strlen(branch) > 0 ? branch : ''
endfunction

augroup GitStatusline
    autocmd!
    autocmd BufEnter,BufWritePost,DirChanged * let b:git_branch = GitBranch()
augroup END

function! ShowGitBranch()
    return get(b:, 'git_branch', '') != '' ? ''.b:git_branch.' ' : ''
endfunction

function! Mode()
    let mode_char = mode()
    if mode_char ==# 'n'
        return 'NORMAL'
    elseif mode_char ==# 'v'
        return 'VISUAL'
    elseif mode_char ==# 'V'
        return 'V-LINE'
    elseif mode_char ==# "\<C-V>"
        return 'V-BLOCK'
    elseif mode_char ==# 'i'
        return 'INSERT'
    elseif mode_char ==# 'R'
        return 'REPLACE'
    elseif mode_char ==# 'c'
        return 'COMMAND'
    elseif mode_char ==# 's'
        return 'SELECT'
    elseif mode_char ==# 'S'
        return 'S-LINE'
    elseif mode_char ==# "\<C-S>"
        return 'S-BLOCK'
    elseif mode_char ==# 't'
        return 'TERMINAL'
    else
        return '???'
    endif
endfunction

set statusline=\ %{Mode()}\ %{ShowGitBranch()}\ %F%m%h%R\ %=\row:\ %l\ col:\ %c\ Percent:\ %p%%



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

"Don't save backup files, using git
set nobackup

"set clipboard=unnamedplus
set autoread

"---- Window Tiling ----
nnoremap <S-h> <C-w>h
nnoremap <S-j> <C-w>j
nnoremap <S-k> <C-w>k
nnoremap <S-l> <C-w>l

" Switch to the window on the right from within the terminal
tnoremap <S-l> <C-w>l



