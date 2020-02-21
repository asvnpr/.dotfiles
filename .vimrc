"""""Vundle plugin manager config below:"""""
set nocompatible              " be iMproved, required
filetype off                  " required

 "set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" "tab completion:
Plugin 'SuperTab'

" "color theme gruvbox:
Plugin 'morhetz/gruvbox'

" "python mode plugin:
Plugin 'Python-mode-klen'

" " autocomplete code
Plugin 'davidhalter/jedi-vim'

" "powerline. displays status
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" "allows native git commands on vim
Bundle 'tpope/vim-fugitive'

" "adds file browser to vim
Bundle 'scrooloose/nerdtree'

" " use same keystrokes for tmux and vim splits
Bundle 'christoomey/vim-tmux-navigator'
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo

" Plugin 'tpope/vim-fugitive'

" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
"
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
"
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
"
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
 call vundle#end()            " required
 "filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
 filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

set nocompatible "This fixes the problem where arrow keys do not function properly on some systems.
syntax on  "Enables syntax highlighting for programming languages
set mouse=a  "Allows you to click around the text editor with your mouse to move the cursor
set showmatch "Highlights matching brackets in programming languages
set autoindent  "If you're indented, new lines will also be indented
set smartindent  "Automatically indents lines after opening a bracket in programming languages
set backspace=2  "This makes the backspace key function like it does in other programs.
set tabstop=4  "How much space Vim gives to a tab
set number  "Enables line numbering"
set textwidth=100  " lines longer than 100 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth' 
set smarttab  "Improves tabbing
set ignorecase "ignores case in search *, /, #
set smartcase "exception to ignore case when search includes upper case char
colorscheme gruvbox  "Changes the color scheme. Change this to your liking. Lookin /usr/share/vim/vim61/colors/ for options
set background=dark "sets theme to dark
set foldmethod=manual  "Lets you hide sections of code
" " Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2


""""highlights excessive lines""""
augroup vimrc_autocmds
    autocmd!
        autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
        autocmd FileType python match Excess /\%100v.*/
        autocmd FileType python set nowrap
        augroup END

"toggles file browser in vim with F2
map <F2> :NERDTreeToggle<CR> 
"disable python mode rope autocomplete
let g:pymoe_rope = 0
"python mode syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" Don't autofold code
let g:pymode_folding = 0

"enable jedi configuration
let g:jedi#auto_vim_configuration = 0
"complete with '.'
let g:jedi#popup_on_dot = 1
"jedi displays function call signatures in insert mode in real-time, highlighting the current argument.Jedi displays function call signatures in insert mode in real-time, highlighting the current argument.
let g:jedi#show_call_signatures = "1"
let g:jedi#completions_enabled = 1
"clipboard cp/paste config:
set clipboard+=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard

"--- The following commands make the navigation keys work like standard editors
imap <silent> <down> <c-o>gj
imap <silent> <up> <c-o>gk
nmap <silent> <down> gj
nmap <silent> <up> gk
""--- Ends navigation commands
"--- The following adds a sweet menu, press F4 to use it.
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<c-z>
map <f4> :emenu <c-z>
""--- End sweet menu

" --- enable one keystroke vim splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"--- split bottom and right instead of default
set splitbelow
set splitright
