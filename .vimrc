call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'chriskempson/base16-vim'
Plug 'scrooloose/nerdtree'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'nathanaelkane/vim-indent-guides'
call plug#end()


"Options
filetype plugin on
syntax on
au BufRead,BufNewFile *.g4 set filetype=antlr4

set mouse=a
set number

"colorscheme
colorscheme base16-google-dark
let base16colorspace=256
set t_Co=256
set termguicolors


"Status Line
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'murmur'
let g:airline_powerline_fonts = 1

"Ident
"set tabstop=2

"Nerdtree
"autocmd vimenter * NERDTree

"indentLine
let g:indent_guides_enable_on_vim_startup = 1
set ts=4 sw=4 noet
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

"java
autocmd FileType java setlocal omnifunc=javacomplete2Complete

nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)


