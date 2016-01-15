"leader
let mapleader=","

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'kylef/apiblueprint.vim.git'
Plugin 'Townk/vim-autoclose.git'
Plugin 'chriskempson/base16-vim.git'
Plugin 'vim-scripts/buffet.vim.git'
Plugin 'rizzatti/dash.vim.git'
Plugin 'editorconfig/editorconfig-vim.git'
Plugin 'elixir-lang/vim-elixir.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'mattn/gist-vim.git'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'PProvost/vim-ps1.git'
Plugin 'saltstack/salt-vim.git'
Plugin 'ervandew/supertab.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'godlygeek/tabular.git'
Plugin 'majutsushi/tagbar.git'
Plugin 'vim-scripts/taglist.vim.git'
Plugin 'thinktainer/tagman.vim.git'
Plugin 'pivotal/tmux-config.git'
Plugin 'edkolev/tmuxline.vim.git'
Plugin 'sjl/tslime.vim.git'
Plugin 'bling/vim-airline.git'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-bundler.git'
Plugin 'thinktainer/vim-cache-dirs.git'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'tpope/vim-cucumber.git'
Plugin 'tpope/vim-dispatch.git'
Plugin 'tpope/vim-fireplace.git'
Plugin 'facebook/vim-flow.git'
Plugin 'pangloss/vim-javascript.git'
Plugin 'mxw/vim-jsx.git'
Plugin 'lepture/vim-jinja.git'
Plugin 'elzr/vim-json.git'
Plugin 'tpope/vim-characterize.git'
Plugin 'tpope/vim-leiningen.git'
Plugin 'tpope/vim-markdown.git'
Plugin 'tpope/vim-projectionist.git'
Plugin 'rodjek/vim-puppet.git'
Plugin 'tpope/vim-ragtag.git'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-rbenv.git'
Plugin 'vim-ruby/vim-ruby.git'
Plugin 'tpope/vim-sensible.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-unimpaired.git'
Plugin 'jimenezrick/vimerl'
Plugin 'Quramy/vison.git'
Plugin 'mattn/webapi-vim.git'
Plugin 'markcornick/vim-terraform'
Plugin 'OmniSharp/omnisharp-vim'

call vundle#end()
filetype plugin indent on
set si

" disable bell!
set noeb vb t_vb=

filetype plugin on
set noexpandtab tabstop=4 shiftwidth=4 textwidth=0

set omnifunc=syntaxcomplete#Complete
set number
set scrolloff=3
set laststatus=2
set nocompatible
set hidden
set shellcmdflag=-c
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
nnoremap <Leader>n :NERDTreeToggle<Enter>

" javascript
let g:flow#autoclose=1
au FileType javascript setl sw=2 et
let g:syntastic_javascript_checkers = ['eslint']
let g:jsx_ext_required = 0
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


"base16
let base16colorspace=256  " Access colors present in 256 colorspace "

"tslime
let g:tslime_ensure_trailing_newlines=1

"Bufferlist
nnoremap <Leader>b :Bufferlist<Cr>

if filereadable(expand("~/.vimrc_background"))
	let base16colorspace=256
	source ~/.vimrc_background
endif

