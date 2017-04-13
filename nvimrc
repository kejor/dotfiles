call plug#begin()

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    let g:airline_section_z = "%2l, %2c"
    let g:airline#extensions#whitespace#enabled = 0
    let g:airline_left_sep=''
    let g:airline_right_sep=''
    "let g:airline_section_z=''
    Plug 'altercation/vim-colors-solarized'
    Plug 'lervag/vimtex'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/nerdcommenter'
    Plug 'raimondi/delimitmate'
    Plug 'tpope/vim-fugitive'

call plug#end()

set nocompatible

filetype indent plugin on                          " turn on plugins
syntax on                                     " syntax highlighting on

set background=dark
colorscheme solarized
"let g:solarized_termtrans=1
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight CursorLineNr ctermbg=none ctermfg=LightBlue
highlight LineNr ctermbg=none ctermfg=Blue
highlight SpecialKey ctermbg=none ctermfg=Blue
hi MatchParen term=bold cterm=bold ctermbg=none ctermfg=LightBlue

set ignorecase                                     " ignore case in matching
set smartcase                                      " match capitals in search
set smarttab
set tabstop=4
set expandtab
set shiftwidth=4
set confirm                                        " do ask for confirmation
set hlsearch                                       " highlight searches
set clipboard=unnamed
set statusline=                                 " Clear statusline
set statusline+=[%n]                            " Buffer number
set statusline+=\ %<%.99f                       " Filename
set statusline+=\ %h                            " help file flag
set statusline+=%w                              " preview window flag [Preview]
set statusline+=%m                              " modified flag
set statusline+=%r                              " read only flag
set statusline+=%y                              " filetype
set statusline+=[%{strlen(&fenc)?&fenc:'none'}] " file encoding
set statusline+=%=                              " right/left separator
set statusline+=%-16(\ %l,%c-%v\ %)             " line number, column number - visual column number
set statusline+=%P                              " percent through file
set laststatus=2                                " Always on
set number relativenumber
set numberwidth=3
set incsearch
set showmatch
set backspace=indent,eol,start
set si
set autoindent
set copyindent
set breakindent
set wrap
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set path+=**
set wildmenu

let mapleader = "\<Space>"
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nnoremap <CR> :nohl<CR>
vmap > >gv
vmap < <gv
nnoremap Y y$
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk
nnoremap <leader>h g0
vnoremap <leader>h g0
nnoremap <leader>l g$
vnoremap <leader>l g$
nnoremap J 5j
vnoremap J 5j
nnoremap K 5k
vnoremap K 5k
cmap w!! w !sudo tee % >/dev/null

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>ss z=

map 0 ^

nmap <leader>w :w<CR>
nmap <leader>W :w!!<CR>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

autocmd FileType tex setlocal spell spelllang=es,en
