"leader
let mapleader=","

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
set shellcmdflag=-c

set background=light
colorscheme vividchalk 

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

set ignorecase
set smartcase

syntax on
set hlsearch
runtime! ftplugin/man.vim
" ctags for cppcomplete:
"set tags+=./tags;/;~/tags;
set hidden

" rubyspec
autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
highlight def link rubyRspec Function

" html
au FileType html set sw=2 ts=2 et

" NERDTree
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.beam$', '\~$']
nnoremap <Leader>f :NERDTreeFind<ENTER><C-w><C-p>

" javascript
let g:flow#autoclose=1
au FileType javascript setl sw=2 et
let g:syntastic_javascript_checkers = ['eslint']
au BufRead,BufNewFile *.json set filetype=json
au FileType json setl sw=2 ts=2 et
let g:syntastic_json_checkers = ['jsonlint']

" erlang
au FileType erlang set sw=2 ts=2 et

" airline
let g:airline_powerline_fonts=1
let g:airline_theme='laederon'

"editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig'

"unite
nnoremap <C-p> :Unite file_rec/async<cr>
nnoremap <space>/ :Unite grep:.<cr>
nnoremap <space>s :Unite -quick-match buffer<cr>

"json
