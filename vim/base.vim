""" useful plugins {{{
  call plug#begin('$HOME/.vim/plugged')
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'arcticicestudio/nord-vim'
    Plug 'tomasr/molokai'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-commentary'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'ervandew/supertab'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'airblade/vim-gitgutter'
    Plug 'justinmk/vim-syntax-extra'
    Plug 'bfrg/vim-cpp-modern'
    Plug 'vim-python/python-syntax'
  call plug#end()
""" }}}

""" git gutter sign and symbols {{{
  let g:gitgutter_sign_added='+'
  let g:gitgutter_sign_modified='~'
  let g:gitgutter_sign_removed='-'
""" }}}

""" term gui colors {{{
  if (has('termguicolors'))
    set termguicolors
  endif
""" }}}

""" statusline {{{
  set laststatus=0
""" }}}

""" python syntax highlight {{{
  let g:python_highlight_all=1
  let g:python_highlight_file_headers_as_comments=1
""" }}}

""" ultisnippets and supertab {{{
  let g:UltiSnipsExpandTrigger='<tab>'
  let g:UltiSnipsJumpForwardTrigger='<tab>'
  let g:UltiSnipsJumpBackwardTrigger='<S-tab>'
  let g:UltiSnipsSnippetDirectories=['ultisnips']
""" }}}

""" visual configs {{{
  syntax on
  set t_Co=256
  set guicursor=
  set cursorline
  set encoding=utf8
  set tabstop=2
  set pumheight=5
  set shiftwidth=2
  set expandtab
  set noswapfile
  set breakindent
  set softtabstop=2
  set autoindent
  set splitright
  set splitbelow
  set backspace=indent,eol,start
  set completeopt-=preview
  set foldmethod=indent
  set foldnestmax=10
  set nofoldenable
  set foldlevel=2
  set undofile
  set undodir=~/.config/vim/undo
  set fillchars+=vert:│
  set clipboard=unnamedplus
  set mouse=a
""" }}}
