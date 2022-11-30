"
" Author: Filemon Mateus
" Repo  : https://github.com/filemonmateus/dotfiles
"

""" useful plugins {{{
  call plug#begin()
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'jiangmiao/auto-pairs'
    Plug 'justinmk/vim-syntax-extra'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'tpope/vim-commentary'
    Plug 'sheerun/vim-polyglot'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'ervandew/supertab'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug '/usr/local/opt/fzf'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'lilydjwg/colorizer'
    Plug 'airblade/vim-gitgutter'
  call plug#end()
""" }}}

""" identline {{{
  let g:indentLine_char='│'
  let g:indentLine_first_char='│'
  let g:indentLine_setColors=1
  let g:indentLine_color_gui='#eee8d5'
  let g:indentLine_showFirstIndentLevel=1
  let g:vim_json_syntax_conceal=0
  let g:indentLine_fileTypeExclude=['tex', 'markdown', 'startify']
  let g:indentLine_bufTypeExclude = ['help', 'terminal']
""" }}}

""" git gutter sign and symbols {{{
  let g:gitgutter_sign_added='+'
  let g:gitgutter_sign_modified='~'
  let g:gitgutter_sign_removed='-'
""" }}}

""" term gui colors {{{
  if (has("termguicolors"))
    set termguicolors
  endif
""" }}}

""" statusline {{{
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

""" python syntax highlight {{{
  let g:python_highlight_builtins=1
  let g:python_highlight_exceptions=1
  let g:python_highlight_string_formatting=1
  let g:python_highlight_string_format=1
  let g:python_highlight_string_templates=1
  let g:python_highlight_indent_errors=1
  let g:python_highlight_space_errors=1
  let g:python_highlight_doctests=1
  let g:python_print_as_function=1
  let g:python_highlight_file_headers_as_comments=1
""" }}}

""" cpp syntax {{{
  let g:cpp_class_scope_highlight=1
  let g:cpp_member_variable_highlight=1
  let g:cpp_class_decl_highlight=1
  let g:cpp_experimental_simple_template_highlight=1
  let g:cpp_concepts_highlight=1
  let g:cpp_no_function_highlight=1
  let c_no_curly_error=1
""" }}}

""" ultisnippets {{{
  let g:SuperTabDefaultCompletionType='<C-n>'
  let g:UltiSnipsExpandTrigger='<tab>'
  let g:UltiSnipsJumpForwardTrigger='<tab>'
  let g:UltiSnipsJumpBackwardTrigger='<S-tab>'
""" }}}

""" visual configs {{{
  syntax on
  set t_Co=256
  set encoding=utf8
  set cursorline
  set tabstop=2
  set shiftwidth=2
  set laststatus=2
  set expandtab
  set breakindent
  set softtabstop=2
  set autoindent
  set splitright
  set guioptions-=e
  set list
  set list listchars=eol:¬,tab:\ \ ,
  set backspace=indent,eol,start
  set foldmethod=indent
  set foldnestmax=10
  set nofoldenable
  set foldlevel=2
  set undofile
  set undodir=~/.config/vim/tmp
  set fillchars+=vert:│
""" }}}

""" fzf config {{{
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

""" papercolor configs {{{
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

""" global theme {{{
  set background=light
  colorscheme PaperColor

  " aesthetic settings for transparent backgrounds
  highlight Normal     guibg=NONE
  highlight LineNr     guibg=NONE
  highlight NonText    guibg=NONE
  highlight SignColumn guibg=NONE

  " git gutter colors conf
  highlight GitGutterAdd    guifg=#008700 guibg=NONE
  highlight GitGutterChange guifg=#c18401 guibg=NONE
  highlight GitGutterDelete guifg=#d63b0c guibg=NONE

  " general theme colors
  highlight NonText cterm=NONE guifg=#eee8d5
  highlight SpellBad cterm=UNDERLINE guifg=#d63b0c guibg=NONE
  highlight SpellCap cterm=UNDERLINE guifg=#c18401 guibg=NONE
  highlight StatusLine cterm=NONE guifg=#fdf6e3 guibg=#005f87
""" }}}
