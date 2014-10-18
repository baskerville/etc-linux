" Vim Color File
" Name:       raven256.vim
" Version:    0.2
" Maintainer: nihilhill at gmail.com

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="raven256"

"
" preferred groups
" (:h w18)
"
hi Normal          cterm=none ctermfg=46 ctermbg=41
hi Comment         cterm=none ctermfg=45

hi Constant        ctermfg=20
hi String          ctermfg=20
hi Character       ctermfg=20
hi Number          ctermfg=20
hi Boolean         ctermfg=20
hi Float           ctermfg=20

hi Identifier      ctermfg=36
hi Function        ctermfg=34

hi Statement       ctermfg=26
hi Conditional     ctermfg=26
hi Repeat          ctermfg=26
hi Label           ctermfg=26
hi Operator        ctermfg=28
hi Keyword         ctermfg=26
hi Exception       ctermfg=26

hi PreProc         ctermfg=30
hi Include         ctermfg=30
hi Define          ctermfg=30
hi Macro           ctermfg=30
hi PreCondit       ctermfg=30

hi Type            ctermfg=18
hi StorageClass    ctermfg=18
hi Structure       ctermfg=18
hi Typedef         ctermfg=18

hi Special         ctermfg=38
hi SpecialChar     ctermfg=38
hi Tag             ctermfg=38
hi Delimiter       ctermfg=32
hi SpecialComment  ctermfg=38
hi Debug           ctermfg=38

hi Underlined      ctermfg=fg
hi Ignore          ctermfg=bg
hi Error           ctermfg=bg  ctermbg=38
hi Todo            ctermfg=24  ctermbg=bg    cterm=none

"
" minor groups
"
hi StatusLine      cterm=none ctermfg=47 ctermbg=42
hi StatusLineNC    cterm=none ctermfg=fg                 ctermbg=44

hi TabLine         cterm=none ctermfg=fg                  ctermbg=44
hi TabLineSel      cterm=none ctermfg=47  ctermbg=44
hi TabLineFill     cterm=none ctermbg=44

hi Pmenu           ctermfg=48       ctermbg=45
hi PmenuSel        ctermfg=bg       ctermbg=fg
hi PmenuSbar       ctermbg=45
hi PmenuThumb      ctermbg=fg
hi WildMenu        ctermfg=bg       ctermbg=fg    cterm=none

hi Visual          cterm=none ctermfg=bg      ctermbg=34
hi VisualNOS       cterm=none ctermfg=bg      ctermbg=36
hi VertSplit       cterm=none ctermfg=42      ctermbg=42
hi LineNr          ctermfg=45   ctermbg=43
hi CursorLineNr    ctermfg=fg                 ctermbg=43

hi Title           ctermfg=30
hi SpecialKey      ctermfg=24
hi Conceal         ctermfg=24       ctermbg=bg
hi NonText         ctermfg=45
hi MatchParen      ctermfg=47   ctermbg=bg  cterm=underline
hi Directory       ctermfg=34

hi ErrorMsg        ctermfg=16      ctermbg=bg
hi WarningMsg      ctermfg=18   ctermbg=bg
hi MoreMsg         ctermfg=26     ctermbg=bg
hi ModeMsg         ctermfg=38     ctermbg=bg

hi Search          ctermfg=bg  ctermbg=20
hi IncSearch       cterm=none  ctermfg=bg  ctermbg=38
hi Question        ctermfg=30

hi Folded          ctermfg=45     ctermbg=40
hi FoldColumn      ctermfg=45     ctermbg=40
hi SignColumn      ctermfg=45     ctermbg=40
hi ColorColumn     ctermfg=45     ctermbg=40

hi CursorColumn    cterm=none ctermbg=43
hi CursorLine      cterm=none ctermbg=43

hi vimFold         ctermfg=45
hi vimCommentTitle ctermfg=fg
hi helpHyperTextJump ctermfg=30

hi htmlTag         ctermfg=34
hi htmlEndTag      ctermfg=34
hi htmlTagName     ctermfg=38
hi htmlString      ctermfg=20

hi diffFile        ctermfg=45
hi diffLine        ctermfg=45
hi diffAdded       ctermfg=24
hi diffRemoved     ctermfg=38
hi diffChanged     ctermfg=18

hi diffAdd         cterm=none    ctermfg=bg    ctermbg=24
hi diffDelete      cterm=none    ctermfg=bg    ctermbg=16
hi diffChange      cterm=none    ctermfg=bg    ctermbg=34
hi diffText        cterm=none    ctermfg=bg    ctermbg=20
hi diffOldLine     cterm=none    ctermfg=bg    ctermbg=45

hi SpellBad        cterm=underline ctermfg=16        ctermbg=bg
hi SpellCap        cterm=underline ctermfg=38       ctermbg=bg
hi SpellRare       cterm=underline ctermfg=34     ctermbg=bg
hi SpellLocal      cterm=underline ctermfg=18     ctermbg=bg

hi mkdCode         ctermfg=45
hi mkdURL          ctermfg=30
hi mkdLink         ctermfg=36

" vim: set ft=vim