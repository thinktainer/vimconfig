call pathogen#infect()
set si

" disable bell!
set noeb vb t_vb=


filetype plugin indent on
filetype plugin on
set noexpandtab tabstop=4 shiftwidth=4 textwidth=0

set omnifunc=syntaxcomplete#Complete
set number
set scrolloff=3
set laststatus=2
set nocompatible
set hidden
set shellcmdflag=-ci

set background=dark
colorscheme solarized 

version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo

" Keyboard
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

" vim: set ft=vim :
" statusline
"set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

set ignorecase
set smartcase

syntax on
set hlsearch
runtime! ftplugin/man.vim
" ctags for cppcomplete:
"set tags+=./tags;/;~/tags;
set hidden

autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
highlight def link rubyRspec Function

let NERDTreeChDirMode=2

