""" useful plugins {{{
	call plug#begin('$HOME/.vim/plugged')
		Plug 'lifepillar/vim-solarized8'
		Plug 'christoomey/vim-tmux-navigator'
	call plug#end()
""" }}}

""" statusline {{{
  set laststatus=0
""" }}}

""" term gui colors {{{
  set termguicolors
""" }}}

""" visual configs {{{
  set tabstop=2
  set shiftwidth=2
  set noswapfile
  set splitright
  set splitbelow
  set undofile
  set undodir=~/.config/vim/undo
  set fillchars+=vert:│
  set clipboard=unnamedplus
""" }}}

""" cursor {{{
  let &t_SI="\e[6 q"
  let &t_EI="\e[2 q"
""" }}}

""" colorscheme {{{
	colorscheme solarized8_flat
""" }}}
