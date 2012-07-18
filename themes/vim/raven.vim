" Vim Color File
" Name:       raven.vim
" Version:    0.1
" Maintainer: baskerville a lavabit o com
"

hi clear

if exists("syntax on")
    syntax reset
endif

let g:colors_name="raven"

"
" preferred groups
" (see `:h w18`)
"
hi Normal          ctermfg=21    ctermbg=18     cterm=none
hi Comment         ctermfg=20

hi Constant        ctermfg=75
hi String          ctermfg=75
hi Character       ctermfg=75
hi Number          ctermfg=75
hi Boolean         ctermfg=75
hi Float           ctermfg=75

hi Identifier      ctermfg=209
hi Function        ctermfg=209

hi Statement       ctermfg=133
hi Conditional     ctermfg=133
hi Repeat          ctermfg=133
hi Label           ctermfg=133
hi Operator        ctermfg=133
hi Keyword         ctermfg=133
hi Exception       ctermfg=133

hi PreProc         ctermfg=172
hi Include         ctermfg=172
hi Define          ctermfg=172
hi Macro           ctermfg=172
hi PreCondit       ctermfg=172

hi Type            ctermfg=56
hi StorageClass    ctermfg=56
hi Structure       ctermfg=56
hi Typedef         ctermfg=56

hi Special         ctermfg=248
hi SpecialChar     ctermfg=248
hi Tag             ctermfg=248
hi Delimiter       ctermfg=248
hi SpecialComment  ctermfg=248
hi Debug           ctermfg=248

hi Underlined      ctermfg=fg
hi Ignore          ctermfg=bg
hi Error           ctermfg=16    ctermbg=36
hi Todo            ctermfg=94  ctermbg=bg    cterm=none

"
" minor groups
"
hi StatusLine      ctermfg=fg     ctermbg=19    cterm=none
hi StatusLineNC    ctermfg=20    ctermbg=19    cterm=none

hi TabLine         ctermfg=fg     ctermbg=19    cterm=none
hi TabLineSel      ctermfg=152    ctermbg=19    cterm=none
hi TabLineFill     ctermfg=fg     ctermbg=19    cterm=none

hi Pmenu           ctermfg=fg     ctermbg=19
hi PmenuSel        ctermfg=23    ctermbg=20
hi PmenuSbar       ctermfg=23    ctermbg=20
hi WildMenu        ctermfg=23    ctermbg=20    cterm=none

hi Visual          ctermfg=bg             ctermbg=209
hi VisualNOS       ctermfg=bg             ctermbg=230
hi VertSplit       ctermfg=bg             ctermbg=19    cterm=none
hi LineNr          ctermfg=20   ctermbg=19

hi Title           ctermfg=172
hi SpecialKey      ctermfg=114
hi Conceal         ctermfg=94       ctermbg=bg
hi NonText         ctermfg=20
hi MatchParen      ctermfg=16     ctermbg=248
hi Directory       ctermfg=209

hi ErrorMsg        ctermfg=36          ctermbg=bg
hi WarningMsg      ctermfg=56
hi MoreMsg         ctermfg=133
hi ModeMsg         ctermfg=248

hi Search          ctermfg=16     ctermbg=75     cterm=none
hi IncSearch       ctermfg=16     ctermbg=230     cterm=none
hi Question        ctermfg=190

hi Folded          ctermfg=20     ctermbg=bg
hi FoldColumn      ctermfg=20     ctermbg=19
hi SignColumn      ctermfg=20     ctermbg=19
hi ColorColumn     ctermfg=20     ctermbg=19

hi CursorColumn    ctermbg=17    cterm=none
hi CursorLine      ctermbg=17    cterm=none

hi vimFold         ctermfg=20
hi vimCommentTitle ctermfg=fg
hi helpHyperTextJump ctermfg=172

hi htmlTag         ctermfg=209
hi htmlEndTag      ctermfg=209
hi htmlTagName     ctermfg=248
hi htmlString      ctermfg=75

hi diffFile        ctermfg=20
hi diffLine        ctermfg=20
hi diffAdded       ctermfg=94
hi diffRemoved     ctermfg=248
hi diffChanged     ctermfg=56

hi diffAdd         ctermfg=16   ctermbg=114
hi diffDelete      ctermfg=19    ctermbg=20
hi diffText        ctermfg=16   ctermbg=36
hi diffChange      ctermfg=16   ctermbg=fg
hi diffOldLine     ctermfg=209

hi SpellBad        ctermfg=36        ctermbg=bg    cterm=underline
hi SpellCap        ctermfg=248       ctermbg=bg    cterm=underline
hi SpellRare       ctermfg=209     ctermbg=bg    cterm=underline
hi SpellLocal      ctermfg=56     ctermbg=bg    cterm=underline

hi mkdCode         ctermfg=20
hi mkdURL          ctermfg=172
hi mkdLink         ctermfg=230

hi User1           ctermfg=20 ctermbg=19

hi def link mailSubject Title
hi def link mailSignature Comment
hi def link mailQuoted2 mailQuoted1
hi def link perlSharpBang Comment
hi def link javaScriptNumber Number
hi def link markdownCode Comment
hi def link markdownCodeBlock Comment

" vim: set ft=vim:
