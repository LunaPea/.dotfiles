" Vim color file
"
" Orginal Author: Tomas Restrepo <tomas@winterdom.com>
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


hi Boolean         guifg=#af5fff 
hi Character       guifg=#afaf87 
hi Number          guifg=#af5fff 
hi String          guifg=#afaf87 
hi Conditional     guifg=#d7005f                gui=bold 
hi Constant        guifg=#af5fff                gui=bold 
hi Cursor          guifg=#000000 guibg=#5fd7ff 
hi iCursor         guifg=#000000 guibg=#5fd7ff 
hi Debug           guifg=#ffd7ff                gui=bold 
hi Define          guifg=#5fd7ff 
hi Delimiter       guifg=#626262 
hi DiffAdd                       guibg=#005f87 
hi DiffChange      guifg=#d7afaf guibg=#4e4e4e 
hi DiffDelete      guifg=#d70087 guibg=#5f005f 
hi DiffText                      guibg=#878787 gui=italic,bold 

hi Directory       guifg=#87ff00               gui=bold 
hi Error           guifg=#ffafff guibg=#87005f 
hi ErrorMsg        guifg=#ff00af guibg=#000000 gui=bold 
hi Exception       guifg=#87ff00               gui=bold 
hi Float           guifg=#af5fff 
hi FoldColumn      guifg=#5f87af guibg=#000000 
hi Folded          guifg=#5f87af guibg=#000000 
hi Function        guifg=#87ff00 
hi Identifier      guifg=#ff8700               gui=none 
hi Ignore          guifg=#808080 guibg=#080808 
hi IncSearch       guifg=#d7ffaf guibg=#000000 

hi keyword         guifg=#d7005f               gui=bold 
hi Label           guifg=#ffffaf               gui=none 
hi Macro           guifg=#d7ffaf 			   gui=italic
hi SpecialKey      guifg=#5fd7ff 			   gui=italic

hi MatchParen      guifg=#121212  guibg=#ff8700 gui=bold
hi ModeMsg         guifg=#ffffaf 
hi MoreMsg         guifg=#ffffaf 
hi Operator        guifg=#d7005f 

hi Pmenu           guifg=#5fd7ff guibg=#121212
hi PmenuSel        guifg=#eeeeee guibg=#6c6c6c 
hi PmenuSbar                     guibg=#121212
hi PmenuThumb      guifg=#5fd7ff 

hi PreCondit       guifg=#87ff00               gui=bold 
hi PreProc         guifg=#87ff00 
hi Question        guifg=#5fd7ff 
hi Repeat          guifg=#d7005f               gui=bold 
hi Search          guifg=#000000   guibg=#ffd787   gui=NONE 
 

hi SignColumn      guifg=#87ff00 guibg=#121212
hi GitGutterAdd    guifg=#87ff00 guibg=#121212
hi GitGutterChange guifg=#ff8700 guibg=#121212
hi GitGutterDelete guifg=#ff00af guibg=#121212

hi SpecialChar     guifg=#d7005f               gui=bold 
hi SpecialComment  guifg=#8a8a8a               gui=bold 
hi Special         guifg=#5fd7ff 			   gui=italic
if has("spell") 
   hi SpellBad			    guibg=#5f0000 gui=undercurl 
   hi SpellCap			    guibg=#00005f gui=undercurl 
   hi SpellLocal		 	guibg=#00005f gui=undercurl 
   hi SpellRare  guifg=none guibg=none    gui=reverse 
endif 
hi Statement       guifg=#d7005f               gui=bold 
hi StatusLine      guifg=#444444 guibg=#dadada 
hi StatusLineNC    guifg=#808080 guibg=#080808 
hi StorageClass    guifg=#ff8700 			   gui=italic
hi Structure       guifg=#5fd7ff 
hi Tag             guifg=#d7005f			   gui=italic 
hi Title           guifg=#d75f00 
hi Todo            guifg=#ffffff guibg=#080808   gui=bold 
 
hi Typedef         guifg=#5fd7ff 
hi Type            guifg=#5fd7ff                gui=none 
hi Underlined      guifg=#808080               gui=underline 
 


hi TabLineFill     guifg=#121212 guibg=#1B1D1E
hi TabLine         guibg=#121212 guifg=#808080 gui=none


hi VertSplit       guifg=#808080 guibg=#080808   gui=bold 
hi VisualNOS                   guibg=#444444 
hi Visual                      guibg=#262626 
hi WarningMsg      guifg=#ffffff guibg=#444444   gui=bold 
hi WildMenu        guifg=#5fd7ff  guibg=#000000 
 
hi Normal       guifg=#d0d0d0 guibg=#121212 
hi CursorLine               guibg=#1c1c1c   gui=none 
hi CursorLineNr guifg=#ff8700               gui=none 
hi Comment         guifg=#5f5f5f 
hi CursorColumn                guibg=#303030 
hi ColorColumn                 guibg=#303030 
hi LineNr          guifg=#bcbcbc guibg=#121212
hi NonText         guifg=#5f5f5f 
 
hi SpecialKey      guifg=#5f5f5f 

"
" Support for 256-color terminal
"
if &t_Co > 255
   hi Normal       ctermfg=252 ctermbg=233
   hi CursorLine               ctermbg=234   cterm=none
   hi CursorLineNr ctermfg=208               cterm=none
   hi Boolean         ctermfg=135
   hi Character       ctermfg=144
   hi Number          ctermfg=135
   hi String          ctermfg=144
   hi Conditional     ctermfg=161               cterm=bold
   hi Constant        ctermfg=135               cterm=bold
   hi Cursor          ctermfg=16  ctermbg=253
   hi Debug           ctermfg=225               cterm=bold
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi DiffAdd                     ctermbg=24
   hi DiffChange      ctermfg=181 ctermbg=239
   hi DiffDelete      ctermfg=162 ctermbg=53
   hi DiffText                    ctermbg=102 cterm=bold

   hi Directory       ctermfg=118               cterm=bold
   hi Error           ctermfg=219 ctermbg=89
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
   hi Exception       ctermfg=118               cterm=bold
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=67  ctermbg=16
   hi Folded          ctermfg=67  ctermbg=16
   hi Function        ctermfg=118
   hi Identifier      ctermfg=208               cterm=none
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16

   hi keyword         ctermfg=161               cterm=bold
   hi Label           ctermfg=229               cterm=none
   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=81

   hi MatchParen      ctermfg=233  ctermbg=208 cterm=bold
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=161

   " complete menu
   hi Pmenu           ctermfg=81  ctermbg=234
   hi PmenuSel        ctermfg=255 ctermbg=242
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=81

   hi PreCondit       ctermfg=118               cterm=bold
   hi PreProc         ctermfg=118
   hi Question        ctermfg=81
   hi Repeat          ctermfg=161               cterm=bold
   hi Search          ctermfg=0   ctermbg=222   cterm=NONE

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=233
   hi GitGutterAdd    ctermfg=118 ctermbg=233
   hi GitGutterChange ctermfg=208 ctermbg=233
   hi GitGutterDelete ctermfg=199 ctermbg=233

   hi SpecialChar     ctermfg=161               cterm=bold
   hi SpecialComment  ctermfg=245               cterm=bold
   hi Special         ctermfg=81                cterm=italic
   if has("spell")
       hi SpellBad                ctermbg=52    cterm=undercurl
       hi SpellCap                ctermbg=17    cterm=undercurl
       hi SpellLocal              ctermbg=17    cterm=undercurl
       hi SpellRare  ctermfg=none ctermbg=none  cterm=reverse
   endif
   hi Statement       ctermfg=161               cterm=bold
   hi StatusLine      ctermfg=238 ctermbg=253
   hi StatusLineNC    ctermfg=244 ctermbg=232
   hi StorageClass    ctermfg=208				cterm=italic
   hi Structure       ctermfg=81
   hi Tag             ctermfg=161				cterm=italic
   hi Title           ctermfg=166
   hi Todo            ctermfg=231 ctermbg=232   cterm=bold

   hi Typedef         ctermfg=81
   hi Type            ctermfg=81                cterm=none
   hi Underlined      ctermfg=244               cterm=underline

   hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
   hi VisualNOS                   ctermbg=238
   hi Visual                      ctermbg=235
   hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
   hi WildMenu        ctermfg=81  ctermbg=16

   hi Comment         ctermfg=59
   hi CursorColumn                ctermbg=233
   hi ColorColumn                 ctermbg=233
   hi LineNr          ctermfg=250 ctermbg=233
   hi NonText         ctermfg=59

   hi SpecialKey      ctermfg=59

   if exists("g:rehash256") && g:rehash256 == 1
       hi Normal       ctermfg=252 ctermbg=234
       hi CursorLine               ctermbg=233   cterm=none
       hi CursorLineNr ctermfg=208               cterm=none

       hi Boolean         ctermfg=141
       hi Character       ctermfg=222
       hi Number          ctermfg=141
       hi String          ctermfg=222
       hi Conditional     ctermfg=197               cterm=bold
       hi Constant        ctermfg=141               cterm=bold

       hi DiffDelete      ctermfg=125 ctermbg=233

       hi Directory       ctermfg=154               cterm=bold
       hi Error           ctermfg=222 ctermbg=233
       hi Exception       ctermfg=154               cterm=bold
       hi Float           ctermfg=141
       hi Function        ctermfg=154
       hi Identifier      ctermfg=208

       hi Keyword         ctermfg=197               cterm=bold
       hi Operator        ctermfg=197
       hi PreCondit       ctermfg=154               cterm=bold
       hi PreProc         ctermfg=154
       hi Repeat          ctermfg=197               cterm=bold

       hi Statement       ctermfg=197               cterm=bold
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
