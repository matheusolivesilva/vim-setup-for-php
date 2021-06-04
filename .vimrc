" Vundle plugins manager
set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'leafOfTree/vim-vue-plugin'
call vundle#end()
filetype plugin indent on

" PHP language configs
set nocompatible              " be iMproved, required
set number
filetype off                  " required
" Tab key produces 4 spaces, and tab characters are converted to spaces
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
" when you start searching text with /, search is performed at every new character insertion
set incsearch
set nopaste
set autoindent
set fileformats=unix,dos
" docblock comments are continued when a newline is inserted
set comments=sr:/*,mb:*,ex:*/
syntax on
filetype on
filetype plugin on
" check syntax with Ctrl + L
autocmd FileType php noremap <C-L> :!/usr/bin/env php -l %<CR>
autocmd FileType phtml noremap <C-L> :!/usr/bin/env php -l %<CR>


" vim-plug plugin manager
call plug#begin('~/.vim/plugged')

" useful plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
"Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vue plugins
Plug 'leafOfTree/vim-vue-plugin'

" php plugins
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'ncm2/ncm2'
Plug 'phpactor/ncm2-phpactor'
Plug 'marlonfan/coc-phpls'
call plug#end()

"nerdtree plugin
nnoremap <C-e> :NERDTreeToggle<CR>
" Vim NERDTree Syntax Highlight Configs
let g:NERDTreeExtensionHighlightColor = {}
"let g:NERDTreeExtensionHighlightColor['css'] = '' 
let s:blue = "689FB6"
let g:NERDTreeExtensionHighlightColor['css'] = s:blue




" Activate gruv box plugin when vim is open
"autocmd vimenter * colorscheme gruvbox

" set UTF-8 support and font to vim-devicons work corectly
set encoding=UTF-8
set guifont=DroidSansMono\ Nerd\ Font\ 11

"The command below open NERDTree automatically
"autocmd vimenter * NERDTree
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"coc autocompletion plugin configs
" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
function! s:check_back_space() abort
      let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <Tab>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<Tab>" :
          \ coc#refresh()

" lightline plugin, se more at https://github.com/itchyny/lightline.vim
set laststatus=2
if !has('gui_running')
  set t_Co=256
  endif

" set place of term split
set splitbelow
set termwinsize=10x0
