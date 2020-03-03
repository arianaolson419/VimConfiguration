"Enable modern Vim features not compatible with Vi spec
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required.
Plugin 'VundleVim/Vundle.vim'

" Vim airline.
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Nice commenting functionality.
Plugin 'preservim/nerdcommenter'

" Autocompletion.
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line.
call vundle#end() " Required.
filetype plugin indent on " Required

" Set python tab behavior.
autocmd FileType python setlocal shiftwidth=2 softtabstop=2 expandtab

set backspace=indent,eol,start

" Set the Airline theme.
let g:airline_theme='base16_monokai'

" Use the monokai colorscheme
" (https://github.com/sickill/vim-monokai)
syntax enable
colorscheme monokai

" Customize NERDCommenter preferences.
let g:NERDSpaceDelims = 1 " Space after comment delim.
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLine = 1

" Add custom key mappings and preferences.
set number
set hlsearch
set ignorecase
set smartcase

let mapleader=','

" Edit and source .vimrc.
nnoremap <leader>s :source ~/.vimrc<CR>
nnoremap <leader>S :execute "bufdo source ~/.vimrc"<CR>:q<CR>
nnoremap <leader>e :tabnew ~/.vimrc<CR>

" Set tabs to 2 spaces.
nnoremap tt :set softtabstop=2 shiftwidth=2 expandtab<CR> :%retab!<CR>

"Editing shortcuts.
" -----------------
" Insert single character.
nnoremap <Space> i_<ESC>r
nnoremap <C-@> a_<ESC>r
nnoremap <leader><Space> A_<ESC>r

" Skip to end of line.
nnoremap ; $

nnoremap <leader>b o<ESC>
nnoremap <leader>B O<ESC>

" Open empty brackets.
nnoremap <leader><CR> i<CR><ESC>O |" New line insert mode.
nnoremap <leader>o a<CR><ESC> |" New line after {
nnoremap <leader>O i<CR><ESC> |" New line before }
nnoremap <leader>P a<CR><ESC>Vp |" Paste after {
nnoremap <leader>P i<CR><ESC>Vp |" Paste before }

" Improved squished line navigation.
nnoremap <Up> gk
nnoremap <Down> gj

" Handy editing shortcuts.
nnoremap <leader>c ct_
nnoremap <leader>J Jdt<Space>
nnoremap tc :execute "set colorcolumn=" . (&colorcolumn == "" ? "80" : "")<CR>

" Toggle off search highlighting.
:nnoremap <silent><expr> <leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" Highlight word under cursor.
:map <silent> * :let @/='\<lt>'.expand("<cword>").'\>'<bar>set hls<CR>

" Tab shortcuts
" -------------
nnoremap tn :tabnew<Space>
nnoremap tl :tabmove<CR>
nnoremap <C-Left> :tabp<CR>
nnoremap <C-Right> :tabn<CR>
nnoremap <A-Left> :tabm -<CR>
nnoremap <A-Right> :tabm +<CR>
