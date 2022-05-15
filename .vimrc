:set number
:set tabstop=4
:set sw=4
:set expandtab
:set mouse=a
:set smarttab
:set autoindent
:filetype on

call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }


" For color scheme
Plug 'morhetz/gruvbox'

" Emmet for vim
Plug 'mattn/emmet-vim'

" Python Syntax Highlighting
"Plug 'sentientmachine/pretty-vim-python'
"Plug 'hdima/python-syntax'
Plug 'vim-python/python-syntax'

" for auto completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Auto pairs of open braces and etc
Plug 'jiangmiao/auto-pairs'

" line statusbar
Plug 'itchyny/lightline.vim'

" It gives keybinds to quickly comment in vim
Plug 'tpope/vim-commentary'

call plug#end()

" Color scheme activation
let g:gruvbox_contrast_dark= 'soft'
let g:gruvbox_termcolors = 241



syntax on
colorscheme gruvbox
set background=dark  cursorline

"key bindings
:inoremap jj <Esc> 

" Syntax Highlighting for python
" colorscheme molokai
highlight Comment cterm=bold


" Enable Emmet just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css,htmldjango EmmetInstall

let g:user_emmet_leader_key='<Tab>'

" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#show_docstring = 1

" Key mapping for NERDTree
:map <C-n> :NERDTree
let g:NERDTreeWinSize=23


" Key mapping for below vertical Terminal
:map <C-t> :below vertical terminal

" coc starting message disable
let g:coc_disable_startup_warning = 1


" custom Autopairs
au Filetype html,htmldjango let b:AutoPairs = AutoPairsDefine({"%" : "%"})

" copy and paste with xclip

vmap <C-c> :!xclip -f -sel clip<CR>
map <C-p> :-1r !xclip -o -sel clip<CR>

autocmd FileType python map <buffer> <C-e> :w<CR>:exec '!clear;python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-e> <esc>:w<CR>:exec '!clear;python' shellescape(@%, 1)<CR>


" for lightline status line to work without nerdtree
set laststatus=2

" for vim-commentary
" in case of filetype not supported
" autocmd FileType python setlocal commentstring=#\ %s

" For vim-commentary to comment using ctrl+/ 
" In vim-commentary gc is used for comment so
" xnoremap <C-\> gc

" for python syntax Highlighting python-syntax plugin
let g:python_highlight_all = 1

