" TODO: this may not be in the correct place. It is intended to allow overriding <Leader>.
set t_co=256
let mapleader=","
filetype plugin indent on
set nocp
set backspace=indent,eol,start


" source ~/.vimrc.before if it exists.
if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

" =============== Vundle Initialization ===============

" This loads all the plugins specified in ~/.vim/vundles.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif


"============================set colorscheme=========
colo badwolf

"==============code folding============

set foldenable              " enable folding 
set foldlevelstart=10       " open most folds by default
set foldmethod=indent       " fold based on indent level                          
nnoremap <space> za         " space open/closes folds

" ================ Search ===========================

set incsearch               " search as characters are entered
set hlsearch                " highlight matches
set showmatch               " highlight matching [{()}]
set showcmd                 " show command in bottom bar

"============================edit vimrc/zshrc and load vimrc bindings==============

nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

"==============================move backup to /tmp================================

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup


"==============================toggle between number and relativenumber==============

function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
map <F2> :call ToggleNumber()<CR>

" ==========================strips trailing whitespace at the end of files.============================

function! StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
map <F3> :call StripTrailingWhitespaces()<CR>


"=============================My costumisation started======================= 
set mouse=a "enable mouse
set shiftwidth=4
set expandtab
syntax on                   " syntax highlighting
set ai                      " autoindent
set softtabstop=4           " number of spaces in tab when editing 
set tabstop=4               " number of visual spaces per TAB 
set rnu
set cursorline              " highlight current line 
filetype indent on          " load filetype-specific indent files 
set wildmenu                " visual autocomplete for command menu 
set lazyredraw              " redraw only when we need to.
set vb
" ================Keymaps================================================================

map <C-h> <C-w><C-h>
map <C-j> <C-w><C-j>
map <C-k> <C-w><C-k>
map <C-l> <C-w><C-l>
map <Right> <nop>
map <Left> <nop>
map <Up> <nop>
map <Down> <nop>
inoremap <leader><space> :nohlsearch<CR>
map ,. <Esc>
