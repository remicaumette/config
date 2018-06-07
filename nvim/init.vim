call plug#begin('~/.local/share/nvim/plugged')
	Plug 'arcticicestudio/nord-vim'	
	Plug 'vim-airline/vim-airline'
	Plug 'tmux-plugins/vim-tmux'
	Plug 'tmux-plugins/vim-tmux-focus-events'
	Plug 'pangloss/vim-javascript'
	Plug 'leafgarland/typescript-vim'
	Plug 'jparise/vim-graphql'
	Plug 'ianks/vim-tsx'
	Plug 'mhinz/vim-startify'
	Plug 'roxma/nvim-completion-manager', { 'do': ':UpdateRemotePlugins' }
	Plug 'roxma/ncm-clang'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()

autocmd VimEnter *
	\  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	\|   PlugInstall --sync | q
	\| endif

syntax on
colorscheme nord

let g:nord_italic_comments = 1
let g:airline_powerline_fonts=1

set mouse=a
set encoding=utf-8
set tabstop=4
let g:airline_theme = 'nord'
set shiftwidth=4
set autoindent
set number
set cursorline

