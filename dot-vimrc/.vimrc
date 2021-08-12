syntax on                       " Enables highlighting 

" Enable your mouse
set mouse=a

" Removes the sound of getting into the eol
set noerrorbells

" Modify identing settings
set autoindent                  " Autoindent always ON
set tabstop=4 softtabstop=4     " Insert 4 spaces for a tab
set shiftwidth=4                " Change the number of space characters inserted for identation
set expandtab                   " Converts tabs to spaces
set smartindent                 " Makes identing smart

" Display long lines as just on line
set nowrap                      
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set ruler                       " Show the cursor position all the time
set number                      " Show line numbers
set relativenumber              " Show numbers as relative by default
set cursorline                  " Highlight the current line
set showmatch                   " Highlight matching parentheses and brackets

set encoding=utf8              " The encoding displayed
set fileencoding=utf-8          " The encoding written to file
set showcmd
set clipboard=unnamedplus       " Copy paste between vim and everything else

set laststatus=2                " Check utility on Theprimeagen video

" Displays a vertical limit in the column 80
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

" Theme
Plug 'morhetz/gruvbox'

" IDK
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'kien/ctrlp.vim'

" Autocompletion - ycm
Plug 'Valloric/YouCompleteMe'

" To see all your mistakes, I guess
Plug 'mbbill/undotree'

" Beatiful Status Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" To be an HTML ninja
Plug 'mattn/emmet-vim'

" Surround text with parentheses, brackets, labels, etc
Plug 'tpope/vim-surround'

" Live HTML, CSS and JavaScript
Plug 'turbio/bracey.vim'

" VimTex a plugin for LaTeX files.
Plug 'lervag/vimtex'

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

" CTRLP
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Remaping Leader Key
let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>

" Explorer Tree
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR> 

nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

" YCM
" The best part.
" ------------------------------------------
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>

" -- EMMET CONFIG --
" redefine trigger key
let g:user_emmet_leader_key=','

" Airline CONFIG
" ------------------------------------------

let g:airline#extensions#tabline#enabled = 1 " enable tabline
let g:airline#extensions#tabline#formatter = 'default' " path formatter

" enable powerline fonts
let g:airline_powerline_fonts = 1

" Airline customization

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

" Switch to your current theme
let g:airline_theme = 'dark'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode

" Enable .rasi syntax highlighting
au BufNewFile,BufRead /*.rasi setf css

