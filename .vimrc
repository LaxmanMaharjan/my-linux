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

" For python 
Plug 'deoplete-plugins/deoplete-jedi'

" For color scheme
Plug 'morhetz/gruvbox'

" For color scheme
Plug 'joshdick/onedark.vim'


" For color scheme
Plug 'gosukiwi/vim-atom-dark'

" Emmet for vim
Plug 'mattn/emmet-vim'

" Python Syntax Highlighting
Plug 'sentientmachine/pretty-vim-python'

" for auto completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Autocompletion tool 
""Plug 'Shougo/deoplete.nvim'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'

" Auto pairs of open braces and etc
Plug 'jiangmiao/auto-pairs'

call plug#end()

" Color scheme activation
let g:gruvbox_contrast_dark= 'soft'
let g:gruvbox_termcolors = 241

" onedark customization
"if (has("autocmd"))
"  augroup colorextend
"    autocmd!
    " Make `Function`s bold in GUI mode
"    autocmd ColorScheme * call onedark#extend_highlight("Function", { "gui": "bold" })
    " Override the `Statement` foreground color in 256-color mode
"    autocmd ColorScheme * call onedark#extend_highlight("Statement", { "fg": { "cterm": 128 } })
    " Override the `Identifier` background color in GUI mode
"    autocmd ColorScheme * call onedark#extend_highlight("Identifier", { "bg": { "gui": "#333333" } })
"  augroup END
"endif

let g:onedark_color_overrides = {
\ "black": {"gui": "#2F343F", "cterm": "235", "cterm16": "0" },
\ "purple": { "gui": "#C678DF", "cterm": "170", "cterm16": "5" }
\}


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

" Key mapping for below vertical Terminal
:map <C-t> :below vertical terminal

" coc starting message disable
let g:coc_disable_startup_warning = 1


" custom Autopairs
au Filetype html,htmldjango let b:AutoPairs = AutoPairsDefine({"%" : "%"})

" copy and paste with xclip

vmap <C-c> :!xclip -f -sel clip<CR>
map <C-p> :-1r !xclip -o -sel clip<CR>




