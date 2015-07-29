" vim: set ft=vim :
runtime pathogen/autoload/pathogen.vim
call pathogen#infect()
set si

"" disable bell!
set noeb vb t_vb=


filetype plugin indent on
filetype plugin on

set omnifunc=syntaxcomplete#Complete
set number
set scrolloff=3
set laststatus=2
set nocompatible
set hidden

colorscheme default 
set background=dark

"version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo

"" Keyboard
set cpo&vim
imap <D-BS> 
imap <M-BS> 
imap <M-Down> }
inoremap <D-Down> <C-End>
imap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
map! <D-v> *
nmap gx <Plug>NetrwBrowseX
map <M-Down> }
noremap <D-Down> <C-End>
map <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vmap <BS> "-d
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P
noremap <C-tab> :tabnext<CR>
noremap <C-S-tab> :tabprevious<CR>

let &cpo=s:cpo_save
unlet s:cpo_save

set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set guitablabel=%M%t
set helplang=en
set langmenu=none
set mouse=a
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set termencoding=utf-8

"" statusline
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

set ignorecase
set smartcase

syntax on
set hlsearch
runtime! ftplugin/man.vim
" ctags for cppcomplete:
set tags+=./tags;/;~/tags;
set hidden

let NERDTreeChDirMode=2

" airline
let g:airline_powerline_fonts = 1

let g:airline_theme='laederon'

"" 256 color xterm
"set t_Co=256
