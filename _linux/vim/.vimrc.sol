"
" Author: Filemon Mateus
" Repo  : https://github.com/filemonmateus/dotfiles
" Date  : 17 January 2019
"

""" Useful plugins {{{
  call plug#begin('~/.vim/plugged')
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'jiangmiao/auto-pairs'
    Plug 'justinmk/vim-syntax-extra'
    Plug 'tpope/vim-commentary'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'ervandew/supertab'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug '/usr/local/opt/fzf'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'lilydjwg/colorizer'
    Plug 'airblade/vim-gitgutter'
    Plug 'bfrg/vim-cpp-modern'
    Plug 'vim-python/python-syntax'
    Plug 'lervag/vimtex'
    Plug 'tpope/vim-surround'
  call plug#end()
""" }}}

""" LaTeX settings {{{
  let g:tex_no_error=1
  let g:tex_flavor='latex'
  let g:vimtex_view_method='zathura'
  let g:vimtex_quickfix_mode=0
""" }}}

""" Git Gutter Sign and Symbols {{{
  let g:gitgutter_sign_added='+'
  let g:gitgutter_sign_modified='~'
  let g:gitgutter_sign_removed='-'
""" }}}

""" Term gui colors {{{
  if (has("termguicolors"))
    set termguicolors
  endif
""" }}}

""" Statusline {{{
  let g:currentmode={
    \'n'      : 'N',
    \'no'     : 'N-Operator Pending',
    \'v'      : 'V',
    \'V'      : 'V-Line',
    \"\<C-V>" : 'V-Block',
    \'s'      : 'S',
    \'S'      : 'S-Line',
    \"\<C-S>" : 'S-Block.',
    \'i'      : 'I',
    \'ic'     : 'I-Compl',
    \'ix'     : 'I-X-Compl',
    \'R'      : 'R',
    \'Rc'     : 'Compl-Replace',
    \'Rx'     : 'V-Replace',
    \'Rv'     : 'X-Compl-Replace',
    \'c'      : 'Command',
    \'cv'     : 'Vim Ex',
    \'ce'     : 'Ex',
    \'r'      : 'Propmt',
    \'rm'     : 'More',
    \'r?'     : 'Confirm',
    \'!'      : 'Sh',
    \'t'      : 'T',
  \}

  function! FileSize()
    let bytes = getfsize(expand('%:p'))
    if (bytes >= 1024)
      let kbytes = bytes / 1024
    endif
    if (exists('kbytes') && kbytes >= 1024)
      let mbytes = kbytes / 1024
    endif
    if bytes < 0
      return '0KB'
    endif
    if (exists('mbytes'))
      return mbytes . 'MB'
    elseif (exists('kbytes'))
      return kbytes . 'KB'
    else
      return bytes . 'KB'
    endif
  endfunction

  function! GetIcon(key) abort
    let l:ICONS = {
      \'lock': '',
    \}
    return get(l:ICONS, a:key, a:key)
  endfunction

  function! ReadOnly() abort
    if !&modifiable && &readonly
      return GetIcon('lock') . ' RO '
    elseif &modifiable && &readonly
      return 'RO '
    elseif !&modifiable && !&readonly
      return GetIcon('lock') . ' '
    else
      return ''
    endif
  endfunction

  set laststatus=2
  set statusline=
  set statusline+=%0*\ %{toupper(g:currentmode[mode()])}
  set statusline+=%0*\ \ [%n]
  set statusline+=%0*\ \ %<%t\ \ %{ReadOnly()}%m
  set statusline+=%*
  set statusline+=%0*\ %=
  set statusline+=%0*\ \ %y
  set statusline+=%0*\ \ %-3(%{FileSize()}%)
  set statusline+=%0*\ \ %p%%\ \ \ %l\ \ \ %c\ 
""" }}}

""" Python syntax highlight {{{
  let g:python_highlight_all=1
  let g:python_highlight_file_headers_as_comments=1
""" }}}

""" UltiSnippets {{{
  let g:UltiSnipsExpandTrigger='<tab>'
  let g:UltiSnipsJumpForwardTrigger='<tab>'
  let g:UltiSnipsJumpBackwardTrigger='<S-tab>'
  let g:UltiSnipsSnippetDirectories=['snips']
  let g:SuperTabDefaultCompletionType='<C-n>'
""" }}}

""" Visual configs {{{
  syntax on
  set t_Co=256
  set guicursor=
  set cursorline
  set encoding=utf8
  set tabstop=2
  set pumheight=5
  set shiftwidth=2
  set expandtab
  set breakindent
  set softtabstop=2
  set autoindent
  set splitright
  set splitbelow
  set backspace=indent,eol,start
  set foldmethod=indent
  set foldnestmax=10
  set nofoldenable
  set foldlevel=2
  set undofile
  set undodir=~/.config/vim/tmp
  set fillchars+=vert:│
  set clipboard=exclude:.*
""" }}}

""" Fzf config {{{
  function! s:fzf_statusline()
    highlight fzf1 guifg=#fdf6e3  guibg=#005f87
    highlight fzf2 guifg=#fdf6e3  guibg=#005f87
    highlight fzf3 guifg=#fdf6e3  guibg=#005f87
    setlocal statusline=%#fzf1#\ %#fzf2#fz%#fzf3#f
  endfunction

  autocmd! User FzfStatusLine call <SID>fzf_statusline()
  map <C-p> :Files<CR>
  let g:fzf_layout={ 'down': '~65%' }
  command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, {'options': [ '--prompt',  '> ', '--preview', 'COLORTERM=truecolor bat --theme=Solarized --color=always {}' ]}, <bang>0)
""" }}}

""" Papercolor configs {{{
  let g:PaperColor_Theme_Options = {
    \'theme': {
      \'default': {
        \'transparent_background': 0,
        \'allow_bold': 1,
        \'allow_italic': 0,
        \'override': {
          \'color00': ['#fdf6e3', ''],
          \'color05': ['#b1aa97', ''],
          \'color07': ['#616162', ''],
          \'todo_bg': ['#eee8d5', ''],
          \'cursor_fg': ['#af5f00', ''],
          \'cursor_bg': ['#eee8d5', ''],
          \'cursorline': ['#f8f1de', ''],
          \'popupmenu_bg': ['#eee8d5', ''],
          \'vertsplit_fg': ['#eee8d5', ''],
          \'vertsplit_bg': ['#fdf6e3', ''],
          \'matchparen_fg': ['#af5f00', ''],
          \'matchparen_bg': ['#e4ddca', ''],
          \'cursorcolumn': ['#eee8d5', ''],
          \'linenumber_bg': ['#fdf6e3', ''],
          \'linenumber_fg': ['#cac3b0', ''],
          \'cursorlinenr_bg': ['#f8f1de', ''],
          \'statusline_inactive_bg': ['#eee8d5', '']
        \}
      \}
    \},
    \'language': {
      \'python': {
        \'highlight_builtins': 1
      \},
      \'cpp': {
        \'highlight_standard_library': 1
      \},
      \'c': {
        \'highlight_builtins': 1
      \}
    \}
  \}
""" }}}

""" Global theme {{{
  set background=light
  colorscheme PaperColor

  " General theme colors
  highlight Conceal guibg=NONE guifg=#616162
  highlight NonText cterm=NONE guifg=#eee8d5
  highlight SpellBad cterm=UNDERLINE guifg=#d63b0c guibg=NONE
  highlight SpellCap cterm=UNDERLINE guifg=#c18401 guibg=NONE
  highlight StatusLine cterm=NONE gui=NONE guifg=#fdf6e3 guibg=#005f87
  highlight multiple_cursors_cursor guibg=#e4ddca
  highlight multiple_cursors_visual guibg=#e4ddca
""" }}}
