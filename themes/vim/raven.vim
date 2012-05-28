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

hi Constant        ctermfg=82
hi String          ctermfg=82
hi Character       ctermfg=82
hi Number          ctermfg=82
hi Boolean         ctermfg=82
hi Float           ctermfg=82

hi Identifier      ctermfg=216
hi Function        ctermfg=216

hi Statement       ctermfg=139
hi Conditional     ctermfg=139
hi Repeat          ctermfg=139
hi Label           ctermfg=139
hi Operator        ctermfg=139
hi Keyword         ctermfg=139
hi Exception       ctermfg=139

hi PreProc         ctermfg=178
hi Include         ctermfg=178
hi Define          ctermfg=178
hi Macro           ctermfg=178
hi PreCondit       ctermfg=178

hi Type            ctermfg=62
hi StorageClass    ctermfg=62
hi Structure       ctermfg=62
hi Typedef         ctermfg=62

hi Special         ctermfg=255
hi SpecialChar     ctermfg=255
hi Tag             ctermfg=255
hi Delimiter       ctermfg=255
hi SpecialComment  ctermfg=255
hi Debug           ctermfg=255

hi Underlined      ctermfg=fg
hi Ignore          ctermfg=bg
hi Error           ctermfg=16    ctermbg=43
hi Todo            ctermfg=100  ctermbg=bg    cterm=none

"
" minor groups
"
hi StatusLine      ctermfg=fg     ctermbg=19    cterm=none
hi StatusLineNC    ctermfg=20    ctermbg=19    cterm=none

hi TabLine         ctermfg=fg     ctermbg=19    cterm=none
hi TabLineSel      ctermfg=159    ctermbg=19    cterm=none
hi TabLineFill     ctermfg=fg     ctermbg=19    cterm=none

hi Pmenu           ctermfg=fg     ctermbg=19
hi PmenuSel        ctermfg=23    ctermbg=20
hi PmenuSbar       ctermfg=23    ctermbg=20
hi WildMenu        ctermfg=23    ctermbg=20    cterm=none

hi Visual          ctermfg=bg     ctermbg=159
hi VisualNOS       ctermfg=bg     ctermbg=198
hi VertSplit       ctermfg=bg     ctermbg=19    cterm=none
hi LineNr          ctermfg=20    ctermbg=19

hi Title           ctermfg=178
hi SpecialKey      ctermfg=120
hi Conceal         ctermfg=100       ctermbg=bg
hi NonText         ctermfg=20
hi MatchParen      ctermfg=16     ctermbg=139
hi Directory       ctermfg=216

hi ErrorMsg        ctermfg=43    ctermbg=bg
hi WarningMsg      ctermfg=62
hi MoreMsg         ctermfg=139
hi ModeMsg         ctermfg=255

hi Search          ctermfg=16     ctermbg=82     cterm=none
hi IncSearch       ctermfg=16     ctermbg=236     cterm=none
hi Question        ctermfg=198

hi Folded          ctermfg=20     ctermbg=bg
hi FoldColumn      ctermfg=20     ctermbg=19
hi SignColumn      ctermfg=20     ctermbg=19
hi ColorColumn     ctermfg=20     ctermbg=19

hi CursorColumn    ctermbg=17    cterm=none
hi CursorLine      ctermbg=17    cterm=none

hi vimFold         ctermfg=20
hi vimCommentTitle ctermfg=fg
hi helpHyperTextJump ctermfg=178

hi htmlTag         ctermfg=216
hi htmlEndTag      ctermfg=216
hi htmlTagName     ctermfg=255
hi htmlString      ctermfg=82

hi diffFile        ctermfg=20
hi diffLine        ctermfg=20
hi diffAdded       ctermfg=100
hi diffRemoved     ctermfg=255
hi diffChanged     ctermfg=62

hi diffAdd         ctermfg=16     ctermbg=120
hi diffDelete      ctermfg=19   ctermbg=20
hi diffText        ctermfg=16     ctermbg=43
hi diffChange      ctermfg=16     ctermbg=fg
hi diffOldLine     ctermfg=216

hi SpellBad        ctermfg=43    ctermbg=bg      cterm=underline
hi SpellCap        ctermfg=255    ctermbg=bg      cterm=underline
hi SpellRare       ctermfg=216    ctermbg=bg      cterm=underline
hi SpellLocal      ctermfg=62    ctermbg=bg      cterm=underline

hi mkdCode         ctermfg=20
hi mkdURL          ctermfg=178
hi mkdLink         ctermfg=236

hi def link mailSubject Title
hi def link mailSignature Comment
hi def link mailQuoted2 mailQuoted1
hi def link perlSharpBang Comment
hi def link javaScriptNumber Number
hi def link markdownCode Comment
hi def link markdownCodeBlock Comment
