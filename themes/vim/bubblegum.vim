" Vim Color File
" Name:       bubblegum.vim
" Version:    0.2
" Maintainer: baskerville <nihilhill *at* gmail *dot* com>
"

hi clear

if exists("syntax on")
    syntax reset
endif

let g:colors_name="bubblegum"

" monotones
"
" bg_floor     : 16
" bg_dip       : 17
" background   : 18
" bg_bump      : 19
" fg_comment   : 20
" foreground   : 21
" fg_highlight : 22
" fg_ceiling   : 23

"
" preferred groups
" (see `:h w18`)
"
hi Normal          ctermfg=21    ctermbg=18     cterm=none
hi Comment         ctermfg=20

" yellow
hi Constant        ctermfg=77
hi String          ctermfg=77
hi Character       ctermfg=77
hi Number          ctermfg=77
hi Boolean         ctermfg=77
hi Float           ctermfg=77

" pink
hi Identifier      ctermfg=233
hi Function        ctermfg=233

" blue
hi Statement       ctermfg=192
hi Conditional     ctermfg=192
hi Repeat          ctermfg=192
hi Label           ctermfg=192
hi Operator        ctermfg=192
hi Keyword         ctermfg=192
hi Exception       ctermfg=192

" green
hi PreProc         ctermfg=106
hi Include         ctermfg=106
hi Define          ctermfg=106
hi Macro           ctermfg=106
hi PreCondit       ctermfg=106

" purple
hi Type            ctermfg=212
hi StorageClass    ctermfg=212
hi Structure       ctermfg=212
hi Typedef         ctermfg=212

" red
hi Special         ctermfg=38
hi SpecialChar     ctermfg=38
hi Tag             ctermfg=38
hi Delimiter       ctermfg=38
hi SpecialComment  ctermfg=38
hi Debug           ctermfg=38

hi Underlined      ctermfg=fg
hi Ignore          ctermfg=bg
hi Error           ctermfg=16    ctermbg=41
hi Todo            ctermfg=212    ctermbg=bg    cterm=none

"
" minor groups
"
hi StatusLine      ctermfg=fg     ctermbg=19    cterm=none
" hi StatusLine      ctermfg=106    ctermbg=19    cterm=none
hi StatusLineNC    ctermfg=20    ctermbg=19    cterm=none

hi TabLine         ctermfg=fg     ctermbg=19    cterm=none
hi TabLineSel      ctermfg=180    ctermbg=19    cterm=none
hi TabLineFill     ctermfg=fg     ctermbg=19    cterm=none

hi Pmenu           ctermfg=fg     ctermbg=19
hi PmenuSel        ctermfg=23    ctermbg=20
hi PmenuSbar       ctermfg=23    ctermbg=20
hi WildMenu        ctermfg=114     ctermbg=19    cterm=none

hi Visual          ctermfg=bg     ctermbg=180
hi VisualNOS       ctermfg=bg     ctermbg=151
" hi VertSplit       ctermfg=20    ctermbg=19    cterm=none
hi VertSplit       ctermfg=bg     ctermbg=19    cterm=none
hi LineNr          ctermfg=20    ctermbg=19

hi Title           ctermfg=151
hi SpecialKey      ctermfg=115
hi NonText         ctermfg=20
hi MatchParen      ctermfg=16     ctermbg=126
hi Directory       ctermfg=212

hi ErrorMsg        ctermfg=39    ctermbg=bg
hi WarningMsg      ctermfg=224
hi MoreMsg         ctermfg=126
hi ModeMsg         ctermfg=78

hi Search          ctermfg=16     ctermbg=77     cterm=none
hi IncSearch       ctermfg=16     ctermbg=24     cterm=none
hi Question        ctermfg=174

hi Folded          ctermfg=20     ctermbg=bg
hi FoldColumn      ctermfg=131     ctermbg=19
hi SignColumn      ctermfg=131     ctermbg=19
hi ColorColumn     ctermfg=131     ctermbg=19

hi CursorColumn    ctermbg=17    cterm=none
hi CursorLine      ctermbg=17    cterm=none

hi vimFold         ctermfg=20
hi vimCommentTitle ctermfg=fg
hi helpHyperTextJump ctermfg=181

hi htmlTag         ctermfg=213
hi htmlEndTag      ctermfg=213
hi htmlTagName     ctermfg=247
hi htmlString      ctermfg=93

hi diffFile        ctermfg=20
hi diffLine        ctermfg=20
hi diffAdded       ctermfg=105
hi diffRemoved     ctermfg=247
hi diffChanged     ctermfg=77

hi diffAdd         ctermfg=16     ctermbg=101
hi diffDelete      ctermfg=23    ctermbg=fg
" hi diffText        ctermfg=16     ctermbg=255
hi diffText        ctermfg=16     ctermbg=fg
hi diffChange      ctermfg=16     ctermbg=38
hi diffOldLine     ctermfg=214

hi SpellBad        ctermfg=39    ctermbg=bg      cterm=underline
hi SpellCap        ctermfg=38    ctermbg=bg      cterm=underline
hi SpellRare       ctermfg=37    ctermbg=bg      cterm=underline
hi SpellLocal      ctermfg=69    ctermbg=bg      cterm=underline

hi mkdCode         ctermfg=20
hi mkdURL          ctermfg=204
hi mkdLink         ctermfg=37

hi def link mailSubject Title
hi def link mailSignature Comment
hi def link mailQuoted2 mailQuoted1
hi def link perlSharpBang Comment
