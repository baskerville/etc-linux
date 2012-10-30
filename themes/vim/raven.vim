" Vim Color File
" Name:       raven.vim
" Version:    0.2
" Maintainer: baskerville at lavabit.com

hi clear

if exists("syntax on")
    syntax reset
endif

let g:colors_name="raven"

"
" preferred groups
" (:h w18)
"
hi Normal          cterm=none ctermfg=7 ctermbg=0
hi Comment         cterm=none ctermfg=8

hi Constant        ctermfg=11
hi String          ctermfg=11
hi Character       ctermfg=11
hi Number          ctermfg=11
hi Boolean         ctermfg=11
hi Float           ctermfg=11

hi Identifier      ctermfg=3
hi Function        ctermfg=3

hi Statement       ctermfg=5
hi Conditional     ctermfg=5
hi Repeat          ctermfg=5
hi Label           ctermfg=5
hi Operator        ctermfg=5
hi Keyword         ctermfg=5
hi Exception       ctermfg=5

hi PreProc         ctermfg=12
hi Include         ctermfg=12
hi Define          ctermfg=12
hi Macro           ctermfg=12
hi PreCondit       ctermfg=12

hi Type            ctermfg=1
hi StorageClass    ctermfg=1
hi Structure       ctermfg=1
hi Typedef         ctermfg=1

hi Special         ctermfg=2
hi SpecialChar     ctermfg=2
hi Tag             ctermfg=2
hi Delimiter       ctermfg=2
hi SpecialComment  ctermfg=2
hi Debug           ctermfg=2

hi Underlined      ctermfg=fg
hi Ignore          ctermfg=bg
hi Error           ctermfg=bg  ctermbg=2
hi Todo            ctermfg=10  ctermbg=bg    cterm=none

"
" minor groups
"
" hi StatusLine       cterm=none ctermfg=fg       ctermbg=6
hi StatusLine      cterm=none ctermfg=fg       ctermbg=6
hi StatusLineNC    cterm=none ctermfg=8 ctermbg=6

hi TabLine         cterm=none ctermfg=fg     ctermbg=6
hi TabLineSel      cterm=none ctermfg=14   ctermbg=6
hi TabLineFill     cterm=none ctermfg=fg     ctermbg=6

hi Pmenu           ctermfg=fg     ctermbg=6
hi PmenuSel        ctermfg=15    ctermbg=8
hi PmenuSbar       ctermfg=15    ctermbg=8
hi WildMenu        ctermfg=15    ctermbg=8    cterm=none

hi Visual           cterm=none ctermfg=bg   ctermbg=3
hi VisualNOS        cterm=none ctermfg=bg   ctermbg=13
hi VertSplit        cterm=none ctermfg=bg  ctermbg=6
hi LineNr          ctermfg=8   ctermbg=6

hi Title           ctermfg=12
hi SpecialKey      ctermfg=10
hi Conceal         ctermfg=10       ctermbg=bg
hi NonText         ctermfg=8
hi MatchParen      ctermfg=bg       ctermbg=2
hi Directory       ctermfg=3

hi ErrorMsg        ctermfg=9          ctermbg=bg
hi WarningMsg      ctermfg=1   ctermbg=bg
hi MoreMsg         ctermfg=5    ctermbg=bg
hi ModeMsg         ctermfg=2      ctermbg=bg

hi Search          ctermfg=bg  ctermbg=11
hi IncSearch       cterm=none ctermfg=bg  ctermbg=2
hi Question        ctermfg=12

hi Folded          ctermfg=8     ctermbg=bg
hi FoldColumn      ctermfg=8     ctermbg=6
hi SignColumn      ctermfg=8     ctermbg=6
hi ColorColumn     ctermfg=8     ctermbg=6

hi CursorColumn    cterm=none ctermbg=6
hi CursorLine      cterm=none ctermbg=6

hi vimFold         ctermfg=8
hi vimCommentTitle ctermfg=fg
hi helpHyperTextJump ctermfg=12

hi htmlTag         ctermfg=3
hi htmlEndTag      ctermfg=3
hi htmlTagName     ctermfg=2
hi htmlString      ctermfg=11

hi diffFile        ctermfg=8
hi diffLine        ctermfg=8
hi diffAdded       ctermfg=10
hi diffRemoved     ctermfg=2
hi diffChanged     ctermfg=1

hi diffAdd         ctermfg=bg    ctermbg=10
hi diffDelete      ctermfg=bg    ctermbg=8
hi diffText        ctermfg=bg    ctermbg=9
hi diffChange      ctermfg=bg    ctermbg=2
hi diffOldLine     ctermfg=bg    ctermbg=3

hi SpellBad        ctermfg=9        ctermbg=bg
hi SpellCap        ctermfg=2       ctermbg=bg
hi SpellRare       ctermfg=3     ctermbg=bg
hi SpellLocal      ctermfg=1     ctermbg=bg

hi mkdCode         ctermfg=8
hi mkdURL          ctermfg=12
hi mkdLink         ctermfg=13

hi def link mailSubject Title
hi def link mailSignature Comment
hi def link mailQuoted2 mailQuoted1
hi def link perlSharpBang Comment
hi def link javaScriptNumber Number
hi def link markdownCode Comment
hi def link markdownCodeBlock Comment

" vim: set ft=vim: