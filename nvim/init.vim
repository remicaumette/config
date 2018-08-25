call plug#begin('~/.config/nvim/plugged')
	Plug 'arcticicestudio/nord-vim'	
	Plug 'vim-airline/vim-airline'
	Plug 'tmux-plugins/vim-tmux'
	Plug 'mhinz/vim-startify'
    Plug 'rust-lang/rust.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/nerdtree'
    Plug 'cespare/vim-toml'
    Plug 'w0rp/ale'
	Plug '/usr/local/opt/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

autocmd VimEnter *
	\  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	\|   PlugInstall --sync | q
	\| endif

syntax on
colorscheme nord

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

let g:nord_italic_comments = 1
let g:airline_powerline_fonts = 1
let g:rustfmt_autosave = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_completion_enabled = 1
let g:ale_rust_rls_toolchain = 'stable'

set mouse=a
set encoding=utf-8
set tabstop=4
let g:airline_theme = 'nord'
set shiftwidth=4
set autoindent
set number
set noswapfile
set ignorecase

map ; :Files<CR>
map <C-n> :NERDTreeToggle<CR>

