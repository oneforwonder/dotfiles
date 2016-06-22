" Dark Horse colorscheme
"
" Author: Rob Nagle <dev@oneforwonder.com>
"
" Based on 'mustang' by Henrique C. Alves (hcarvalhoalves@gmail.com)

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "darkhorse"

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine                 guibg=#303030 gui=none                ctermbg=236 cterm=none
  hi CursorColumn               guibg=#303030                         ctermbg=236
  hi ColorColumn                guibg=#3a3a3a gui=none                ctermbg=237 cterm=none
  hi MatchParen   guifg=#00af5f guibg=#303030 gui=reverse ctermfg=35  ctermbg=236 cterm=reverse
  hi Pmenu        guifg=#ffffff guibg=#444444             ctermfg=255 ctermbg=238
  hi PmenuSel     guifg=#000000 guibg=#b1d631             ctermfg=0   ctermbg=148
  hi Conceal      guifg=#767676 guibg=#202020 gui=none   ctermfg=243 ctermbg=234
endif


" General colors
hi Cursor       guifg=#000000 guibg=#626262 gui=none   ctermfg=0   ctermbg=241
hi Normal       guifg=#e2e2e5 guibg=#202020 gui=none   ctermfg=253 ctermbg=234
hi NonText      guifg=#808080 guibg=#202020 gui=none   ctermfg=244 ctermbg=234
hi LineNr       guifg=#8A8A8A guibg=#000000 gui=none   ctermfg=245 ctermbg=233
hi SignColumn                 guibg=#000000                        ctermbg=233
hi StatusLine   guifg=#d3d3d5 guibg=#444444 gui=italic ctermfg=253 ctermbg=238 cterm=italic
hi StatusLineNC guifg=#939395 guibg=#444444 gui=none   ctermfg=246 ctermbg=238
hi VertSplit    guifg=#444444 guibg=#444444 gui=none   ctermfg=238 ctermbg=238
hi Folded       guifg=#ffffff guibg=#373737 gui=none   ctermfg=15  ctermbg=237
hi Title        guifg=#f6f3e8 guibg=NONE    gui=bold   ctermfg=254             cterm=bold
hi Visual       guifg=#faf4c6 guibg=#3c414c gui=none   ctermfg=254 ctermbg=4
hi SpecialKey   guifg=#767676 guibg=#202020 gui=none   ctermfg=243 ctermbg=234
hi Ignore       guifg=#767676 guibg=#202020 gui=none   ctermfg=243 ctermbg=234

hi Search       guifg=#000000 guibg=#b1d631 gui=none   ctermfg=0   ctermbg=75 cterm=none
hi SpellBad     guifg=#ff5f5f guibg=#202020 gui=underline ctermfg=203 ctermbg=234 cterm=underline


" Syntax highlighting
" Comments
hi Comment      guifg=#767676 gui=italic ctermfg=243 " cterm=italic
hi Todo         guifg=#8f8f8f gui=bold   ctermfg=247 ctermbg=234 cterm=bold

" Constants
hi Constant     guifg=#ffaf00 gui=none   ctermfg=214
hi String       guifg=#ffff5f gui=none   ctermfg=227
hi Character    guifg=#ffff5f gui=none   ctermfg=227
hi Number       guifg=#ffaf00 gui=none   ctermfg=214
hi Float        guifg=#ffaf00 gui=none   ctermfg=214
hi Boolean      guifg=#ff9800 gui=none   ctermfg=208

" Identifier
" XXX: Better identifier color?
hi Identifier   guifg=#b1d631 gui=none   ctermfg=148
hi Function     guifg=#0087ff gui=bold   ctermfg=33

" Statement
hi Statement    guifg=#ffffff gui=none   ctermfg=255 cterm=bold

" Type
" XXX: Different type/structure styling?
hi Type         guifg=#00d787 gui=bold ctermfg=42 cterm=bold
"hi Type         guifg=#00ff87 gui=none   ctermfg=48
"hi Structure    guifg=#00d787 gui=bold ctermfg=42 cterm=bold

" Preprocessor
hi PreProc      guifg=#faf4c6 gui=none   ctermfg=230

" Special
"hi Special      guifg=#ff9800 gui=none   ctermfg=208
hi Special      guifg=#ff5f5f gui=none   ctermfg=203


" Custom syntax objects
"hi link ClassName Structure
hi link This Structure
hi BuiltIn      guifg=#5fafff gui=none ctermfg=74


" Language specific
" Python
hi link pythonClass Structure
hi link pythonSelf This
hi link pythonExClass BuiltIn
hi link pythonBuiltinObj BuiltIn
hi link pythonBuiltinFunc BuiltIn
hi link pythonDocStringTitle Comment

" Javascript
hi link javascriptThis This
hi link javascriptClassName Structure

hi link javascriptBuiltInFunction BuiltIn
hi link javascriptBuiltInObject   BuiltIn
hi link javascriptBuiltInProp     BuiltIn
hi link javascriptBuiltInMethod   BuiltIn
hi link javascriptBuiltInConstant BuiltIn
hi link javascriptBuiltInStyle    BuiltIn

" XXX: Fix in javascript.vim?
hi link javascriptLabel Normal
hi link javascriptTemplateSubstitution Normal

