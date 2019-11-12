" Stevie Howard | @stvhwrd

" ------------ Vim options & variables -------------------------------------------
set encoding=utf-8          " UTF-8
set autoindent              " Auto-indent new lines
set background=dark         " Use colors that look good on a dark background
set backspace=indent,eol,start
set expandtab               " Insert spaces instead of tabs
set hlsearch                " Highlight all search results
set ignorecase              " Always case-insensitive
set incsearch               " Searches for strings incrementally
set linebreak               " Break lines at word (requires wrap lines)
set nocompatible            " Make Vim more useful
set number                  " Show line numbers
set shiftwidth=4            " Number of auto-indent spaces
set showbreak=+++           " Wrap-broken line prefix
set showmatch               " Highlight matching brace
set smartcase               " Enable smart-case search
set smartindent             " Enable smart-indent
set smarttab                " Enable smart-tabs
set softtabstop=4           " Number of spaces per tab
set textwidth=82            " Line wrap (number of columns)
set visualbell              " Use visual bell (no beeping)

let mapleader=","           " Remap <leader> key to comma

filetype plugin indent on   " Enable filetype-specific goodies

syntax on                   " Enable syntax highlighting

" ------------ key mappings ------------------------------------------------------
inoremap jk <Esc>           " Use 'jk' to get out of INSERT mode
inoremap kj <Esc>           " Use 'kj' to get out of INSERT mode

nnoremap <C-J> <C-W><C-J>   " 'ctrl-j' instead of 'ctrl-w then j'
nnoremap <C-K> <C-W><C-K>   " 'ctrl-k' instead of 'ctrl-w then k'
nnoremap <C-L> <C-W><C-L>   " 'ctrl-l' instead of 'ctrl-w then l'
nnoremap <C-H> <C-W><C-H>   " 'ctrl-h' instead of 'ctrl-w then h'

" ------------ GUI config --------------------------------------------------------
if has("gui_running")
    set guifont=Hasklig:h15
endif

" ------------ junegunn/vim-plug -------------------------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')       " Specify a directory for plugins
Plug 'airblade/vim-gitgutter'           " Shows a git diff in the gutter
Plug 'edkolev/tmuxline.vim'             " Vim-Airline for tmux
Plug 'ferrine/md-img-paste.vim'         " Markdown image paste from clipboard
Plug 'itspriddle/vim-marked'            " Open the current Markdown buffer in Marked.app
Plug 'joshdick/onedark.vim'             " Port of Atom's One Dark theme
Plug 'scrooloose/nerdtree'              " File tree explorer
Plug 'sheerun/vim-polyglot'             " Language pack for Vim
Plug 'vim-airline/vim-airline'             " Vim-Airline status bar
call plug#end()                         " Initialize plugin system

" ------------ ferrine/md-img-paste.vim ------------------------------------------
autocmd FileType markdown nmap <silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" there are some defaults for image directory and image name, you can change them
" let g:mdip_imgdir = 'img'
" let g:mdip_imgname = 'image'

" ------------ airblade/vim-gitgutter --------------------------------------------
let g:gitgutter_max_signs = 500     " Maximum number of lines to mark, default=500

" ------------ joshdick/onedark.vim ----------------------------------------------
"colorscheme onedark     " Enable One Dark theme

" ------------ vim-airline/vim-airline -------------------------------------------
let g:airline_powerline_fonts = 1

" - fin -
