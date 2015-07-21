call pathogen#infect()
call pathogen#helptags()
set si

" disable bell!
set noeb vb t_vb=


filetype plugin indent on
filetype plugin on


"set omnifunc=syntaxcomplete#Complete
set number
set scrolloff=3
set laststatus=2
set nocompatible
set hidden
set background=dark
colorscheme herald 
version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
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

" statusline
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l/%L,%c%V%)\ %{&syntax}\ %P

set ignorecase
set smartcase
let NERDTreeChDirMode=2
set viewdir=%HOME%\vimfiles\viewdir

au FileType fsharp let g:fsharp_xbuild_path = 'C:\Program Files (x86)\Mono\bin\'
au FileType fsharp let g:fsharp_interactive_bin = 'C:\Program Files (x86)\Mono\bin\'
au FileType fsharp let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

