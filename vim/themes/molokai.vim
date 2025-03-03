" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
" https://github.com/tomasr/molokai
"
" Note: Based on the Monokai theme for TextMate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
"

hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="molokai"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif


hi Boolean         guifg=#AE81FF
hi Character       guifg=#E6DB74
hi Number          guifg=#AE81FF
hi String          guifg=#E6DB74
hi Conditional     guifg=#F92672               gui=none
hi Constant        guifg=#AE81FF               gui=none
hi Cursor          guifg=NONE      guibg=fg
hi iCursor         guifg=NONE      guibg=fg
hi Debug           guifg=#BCA3A3               gui=none
hi Define          guifg=#66D9EF
hi Delimiter       guifg=#8F8F8F
hi DiffAdd                       guibg=#13354A
hi DiffChange      guifg=#89807D guibg=#4C4745
hi DiffDelete      guifg=#960050 guibg=#1E0010
hi DiffText                      guibg=#4C4745 gui=italic,bold

hi Directory       guifg=#A6E22E               gui=none
hi Error           guifg=#E6DB74 guibg=#1E0010
hi ErrorMsg        guifg=#CC2846 guibg=#121212 gui=none
hi Exception       guifg=#A6E22E               gui=none
hi Float           guifg=#AE81FF
hi FoldColumn      guifg=#465457 guibg=NONE
hi Folded          guifg=#465457 guibg=NONE
hi Function        guifg=#A6E22E
hi Identifier      guifg=#FD971F
hi Ignore          guifg=#808080 guibg=NONE
hi IncSearch       guifg=#C4BE89 guibg=#000000

hi Keyword         guifg=#F92672               gui=none
hi Label           guifg=#E6DB74               gui=none
hi Macro           guifg=#C4BE89               gui=italic
hi SpecialKey      guifg=#66D9EF               gui=italic

hi MatchParen      guifg=bg       guibg=fg     gui=none
hi ModeMsg         guifg=#E6DB74
hi MoreMsg         guifg=#E6DB74
hi Operator        guifg=#F92672

" complete menu
hi Pmenu           guifg=#66D9EF guibg=#000000
hi PmenuSel                      guibg=#808080
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#66D9EF

hi PreCondit       guifg=#A6E22E               gui=none
hi PreProc         guifg=#A6E22E
hi Question        guifg=#66D9EF
hi Repeat          guifg=#F92672               gui=none
hi Search          guifg=#000000 guibg=#FFE792
" marks
hi SignColumn      guifg=#A6E22E guibg=NONE
hi GitGutterAdd    guifg=#A6E22E guibg=NONE
hi GitGutterChange guifg=#E6DB74 guibg=NONE
hi GitGutterDelete guifg=#F92672 guibg=NONE
hi SpecialChar     guifg=#F92672               gui=none
hi SpecialComment  guifg=#3C3C3C               gui=none
hi Special         guifg=#66D9EF guibg=NONE      gui=italic
if has("spell")
    hi SpellBad    guifg=#CC2846 gui=underline
    hi SpellCap    guifg=#F6B655 gui=underline
    hi SpellLocal  guifg=#70F0F0 gui=underline
    hi SpellRare   guifg=#FFFFFF gui=underline
endif
hi Statement       guifg=#F92672               gui=none
hi StatusLine      guifg=fg      guibg=NONE      gui=none
hi StatusLineNC    guifg=#343434 guibg=NONE      gui=none
hi StorageClass    guifg=#FD971F               gui=italic
hi Structure       guifg=#66D9EF
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#ef5939
hi Todo            guifg=#FFFFFF guibg=NONE      gui=none

hi Typedef         guifg=#66D9EF
hi Type            guifg=#66D9EF               gui=none
hi Underlined      guifg=#808080               gui=underline

hi VertSplit       guifg=#161616 guibg=NONE      gui=none
hi VisualNOS                     guibg=#2B2B2B
hi Visual                        guibg=#2B2B2B
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=none
hi WildMenu        guifg=#66D9EF guibg=#000000

hi TabLineFill     guifg=#121212 guibg=#121212
hi TabLine         guibg=#121212 guifg=#808080 gui=none

if s:molokai_original == 1
   hi Normal          guifg=#B3B3B3 guibg=#272822
   hi Comment         guifg=#75715E
   hi CursorLine                    guibg=#3E3D32
   hi CursorLineNr    guifg=#FD971F               gui=none
   hi CursorColumn                  guibg=#3E3D32
   hi ColorColumn                   guibg=#3B3A32
   hi LineNr          guifg=#BCBCBC guibg=#3B3A32
   hi NonText         guifg=#75715E
   hi SpecialKey      guifg=#75715E
else
   hi Normal          guifg=#B3B3B3 guibg=#121212
   hi Comment         guifg=#3C3C3C
   hi CursorLine                    guibg=#161616
   hi CursorLineNr    guifg=#FD971F guibg=#161616 gui=none
   hi CursorColumn                  guibg=#161616
   hi ColorColumn                   guibg=#161616
   hi LineNr          guifg=#2B2B2B
   hi NonText         guifg=#161616
   hi SpecialKey      guifg=#2A374E
   hi Conceal         guifg=fg      guibg=NONE
   hi multiple_cursors_cursor guibg=#2B2B2B
   hi multiple_cursors_visual guibg=#2B2B2B
end

"
" Support for 256-color terminal
"
if &t_Co > 255
   if s:molokai_original == 1
      hi Normal                   ctermbg=234
      hi CursorLine               ctermbg=235   cterm=none
      hi CursorLineNr ctermfg=208               cterm=none
   else
      hi Normal       ctermfg=252 ctermbg=233
      hi CursorLine               ctermbg=234   cterm=none
      hi CursorLineNr ctermfg=208               cterm=none
   endif
   hi Boolean         ctermfg=135
   hi Character       ctermfg=144
   hi Number          ctermfg=135
   hi String          ctermfg=144
   hi Conditional     ctermfg=161               cterm=none
   hi Constant        ctermfg=135               cterm=none
   hi Cursor          ctermfg=16  ctermbg=253
   hi Debug           ctermfg=225               cterm=none
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi DiffAdd                     ctermbg=24
   hi DiffChange      ctermfg=181 ctermbg=239
   hi DiffDelete      ctermfg=162 ctermbg=53
   hi DiffText                    ctermbg=102 cterm=none

   hi Directory       ctermfg=118               cterm=none
   hi Error           ctermfg=219 ctermbg=89
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=none
   hi Exception       ctermfg=118               cterm=none
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=67  ctermbg=16
   hi Folded          ctermfg=67  ctermbg=16
   hi Function        ctermfg=118
   hi Identifier      ctermfg=208               cterm=none
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16

   hi keyword         ctermfg=161               cterm=none
   hi Label           ctermfg=229               cterm=none
   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=81

   hi MatchParen      ctermfg=233  ctermbg=208 cterm=none
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=161

   " complete menu
   hi Pmenu           ctermfg=81  ctermbg=16
   hi PmenuSel        ctermfg=255 ctermbg=242
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=81

   hi PreCondit       ctermfg=118               cterm=none
   hi PreProc         ctermfg=118
   hi Question        ctermfg=81
   hi Repeat          ctermfg=161               cterm=none
   hi Search          ctermfg=0   ctermbg=222   cterm=NONE

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235
   hi SpecialChar     ctermfg=161               cterm=none
   hi SpecialComment  ctermfg=245               cterm=none
   hi Special         ctermfg=81
   if has("spell")
       hi SpellBad                ctermbg=52
       hi SpellCap                ctermbg=17
       hi SpellLocal              ctermbg=17
       hi SpellRare  ctermfg=none ctermbg=none  cterm=reverse
   endif
   hi Statement       ctermfg=161               cterm=none
   hi StatusLine      ctermfg=238 ctermbg=253   cterm=none
   hi StatusLineNC    ctermfg=244 ctermbg=232   cterm=none
   hi StorageClass    ctermfg=208
   hi Structure       ctermfg=81
   hi Tag             ctermfg=161
   hi Title           ctermfg=166
   hi Todo            ctermfg=231 ctermbg=232   cterm=none

   hi Typedef         ctermfg=81
   hi Type            ctermfg=81                cterm=none
   hi Underlined      ctermfg=244               cterm=underline

   hi VertSplit       ctermfg=244 ctermbg=232   cterm=none
   hi VisualNOS                   ctermbg=238
   hi Visual                      ctermbg=235
   hi WarningMsg      ctermfg=231 ctermbg=238   cterm=none
   hi WildMenu        ctermfg=81  ctermbg=16

   hi Comment         ctermfg=59
   hi CursorColumn                ctermbg=236
   hi ColorColumn                 ctermbg=236
   hi LineNr          ctermfg=250 ctermbg=236
   hi NonText         ctermfg=59

   hi SpecialKey      ctermfg=59

   if exists("g:rehash256") && g:rehash256 == 1
       hi Normal       ctermfg=252 ctermbg=234
       hi CursorLine               ctermbg=236   cterm=none
       hi CursorLineNr ctermfg=208               cterm=none

       hi Boolean         ctermfg=141
       hi Character       ctermfg=222
       hi Number          ctermfg=141
       hi String          ctermfg=222
       hi Conditional     ctermfg=197               cterm=none
       hi Constant        ctermfg=141               cterm=none

       hi DiffDelete      ctermfg=125 ctermbg=233

       hi Directory       ctermfg=154               cterm=none
       hi Error           ctermfg=222 ctermbg=233
       hi Exception       ctermfg=154               cterm=none
       hi Float           ctermfg=141
       hi Function        ctermfg=154
       hi Identifier      ctermfg=208

       hi Keyword         ctermfg=197               cterm=none
       hi Operator        ctermfg=197
       hi PreCondit       ctermfg=154               cterm=none
       hi PreProc         ctermfg=154
       hi Repeat          ctermfg=197               cterm=none

       hi Statement       ctermfg=197               cterm=none
       hi Tag             ctermfg=197
       hi Title           ctermfg=203
       hi Visual                      ctermbg=238

       hi Comment         ctermfg=244
       hi LineNr          ctermfg=239 ctermbg=235
       hi NonText         ctermfg=239
       hi SpecialKey      ctermfg=239
   endif
end

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
