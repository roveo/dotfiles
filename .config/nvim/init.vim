syntax on set background=light
filetype plugin indent on

set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set encoding=UTF-8
set number
set cursorline
set nowrap
set colorcolumn=80

call plug#begin('~/.config/nvim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'davidhalter/jedi'
Plug 'zchee/deoplete-jedi'
Plug 'mitsuhiko/vim-python-combined'
Plug 'ntpeters/vim-better-whitespace'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhartington/oceanic-next'
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/indentLine'
Plug 'carlitux/deoplete-ternjs'
Plug 'freitass/todo.txt-vim'
Plug 'elzr/vim-json'
Plug 'tomlion/vim-solidity'
Plug 'trevordmiller/nova-vim'
Plug 'sbdchd/neoformat'
Plug 'posva/vim-vue'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'qpkorr/vim-bufkill'
call plug#end()

colorscheme solarized

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#sources#jedi#python_path = '/usr/local/bin/python3'

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
let g:airline_solarized_bg = 'light'

" Moving between buffers
nmap <C-n> :bn<CR>
nmap <C-p> :bN<CR>

" Run FZF fuzzy search
nmap <A-p> :FZF<CR>

" Move lines around
nmap <A-k> ddkP
nmap <A-j> ddjP

" Move between buffers
nmap <A-l> :bn<CR>
nmap <A-h> :bN<CR>

" Run python files
autocmd FileType python nmap <F5> :!python3 %:p<CR>
autocmd FileType python nmap <F6> :!python3 %:p

" Custom indent
autocmd FileType javascript,json,html,vue setlocal shiftwidth=2 tabstop=2

" vim-json
let g:vim_json_syntax_conceal = 0

" commands
command J %!python -m json.tool

highlight Normal ctermbg=none
highlight NonText ctermbg=none

let g:python2_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

nmap H :bp<CR>
nmap L :bn<CR>

" Disallow buffer switch in NERDTree
autocmd FileType nerdtree noremap <buffer> <A-h> <nop>
autocmd FileType nerdtree noremap <buffer> <A-l> <nop>

" Close window with :BD
nmap <C-x> :BD<CR>
