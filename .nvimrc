" =============================================
"                  Indra's nvimrc
" =============================================
" Yeah go me

set nocompatible
filetype off

syntax on
set nu
colorscheme ron

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
" let g:ycm_path_to_python_interpreter = '/usr/local/lib/python2.7'
let g:syntastic_asciidoc_asciidoc_exec = 'asciidoctor'
let g:airline#extensions#tabline#enabled = 1

" ------------------------------- Vim-Plug -------------------------------
set rtp+=~/.nvim/autoload/plug.vim
call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/syntastic'
" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'bling/vim-airline'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }

call plug#end()


"----------------------------------------------
"                  Shortcuts 
"----------------------------------------------
iab #d #define
iab #i #include 
iab /**/ /********************************************************************/ iab syso System.out.println(
iab syso System.out.println(

"set leader key
let mapleader = ","

" Get rid of highlited search
nmap <silent> ,/ :nohlsearch<CR>

" Change : for a ;
nnoremap ; :

let mapleader = ","
nmap <leader>ne :NERDTree<cr>

" Open new vertial split
nnoremap <leader>v <C-W>v
" Open new horizontal split
nnoremap <leader>s <C-W>s

" Skip into message
set shortmess+=I

" Set text wrap
set wrap

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l 

" resizing windows
map > <C-W>>
map < <C-W><
map _ <C-W>- 
map + <C-W>+

" NERDTree stuff
map <C-n> :NERDTreeToggle<CR>
map <C-b> :bn<CR>
map <C-v> :bp<CR>

" playing hard mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"----------------------------------------------
"                  Settings
"----------------------------------------------
" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
			
" Tab related stuff, set tab size to 4 spaces
set smartindent
set tabstop=4
set shiftwidth=4

" Set fontsize and font
:set guifont=Inconsolata\ 10 

" Highlight search results
set hlsearch

" Set auto indenting
set autoindent
