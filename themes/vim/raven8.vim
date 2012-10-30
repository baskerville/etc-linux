" Vim Color File
" Name:       raven8.vim
" Version:    0.2
" Maintainer: baskerville at lavabit.com

hi clear

if exists("syntax on")
    syntax reset
endif

let g:colors_name="raven8"

"
" preferred groups
" (:h w18)
"
hi Normal          cterm=none ctermfg=lightgrey ctermbg=black
hi Comment         cterm=none ctermfg=darkgrey

hi Constant        ctermfg=yellow
hi String          ctermfg=yellow
hi Character       ctermfg=yellow
hi Number          ctermfg=yellow
hi Boolean         ctermfg=yellow
hi Float           ctermfg=yellow

hi Identifier      ctermfg=darkyellow
hi Function        ctermfg=darkyellow

hi Statement       ctermfg=darkmagenta
hi Conditional     ctermfg=darkmagenta
hi Repeat          ctermfg=darkmagenta
hi Label           ctermfg=darkmagenta
hi Operator        ctermfg=darkmagenta
hi Keyword         ctermfg=darkmagenta
hi Exception       ctermfg=darkmagenta

hi PreProc         ctermfg=blue
hi Include         ctermfg=blue
hi Define          ctermfg=blue
hi Macro           ctermfg=blue
hi PreCondit       ctermfg=blue

hi Type            ctermfg=darkred
hi StorageClass    ctermfg=darkred
hi Structure       ctermfg=darkred
hi Typedef         ctermfg=darkred

hi Special         ctermfg=darkgreen
hi SpecialChar     ctermfg=darkgreen
hi Tag             ctermfg=darkgreen
hi Delimiter       ctermfg=darkgreen
hi SpecialComment  ctermfg=darkgreen
hi Debug           ctermfg=darkgreen

hi Underlined      ctermfg=fg
hi Ignore          ctermfg=bg
hi Error           ctermfg=bg  ctermbg=darkgreen
hi Todo            ctermfg=green  ctermbg=bg    cterm=none

"
" minor groups
"
" hi StatusLine       cterm=none ctermfg=fg       ctermbg=darkcyan
hi StatusLine      cterm=none ctermfg=fg       ctermbg=darkcyan
hi StatusLineNC    cterm=none ctermfg=darkgrey ctermbg=darkcyan

hi TabLine         cterm=none ctermfg=fg     ctermbg=darkcyan
hi TabLineSel      cterm=none ctermfg=cyan   ctermbg=darkcyan
hi TabLineFill     cterm=none ctermfg=fg     ctermbg=darkcyan

hi Pmenu           ctermfg=fg     ctermbg=darkcyan
hi PmenuSel        ctermfg=white    ctermbg=darkgrey
hi PmenuSbar       ctermfg=white    ctermbg=darkgrey
hi WildMenu        ctermfg=white    ctermbg=darkgrey    cterm=none

hi Visual           cterm=none ctermfg=bg   ctermbg=darkyellow
hi VisualNOS        cterm=none ctermfg=bg   ctermbg=magenta
hi VertSplit        cterm=none ctermfg=bg  ctermbg=darkcyan
hi LineNr          ctermfg=darkgrey   ctermbg=darkcyan

hi Title           ctermfg=blue
hi SpecialKey      ctermfg=green
hi Conceal         ctermfg=green       ctermbg=bg
hi NonText         ctermfg=darkgrey
hi MatchParen      ctermfg=bg       ctermbg=darkgreen
hi Directory       ctermfg=darkyellow

hi ErrorMsg        ctermfg=red          ctermbg=bg
hi WarningMsg      ctermfg=darkred   ctermbg=bg
hi MoreMsg         ctermfg=darkmagenta    ctermbg=bg
hi ModeMsg         ctermfg=darkgreen      ctermbg=bg

hi Search          ctermfg=bg  ctermbg=yellow
hi IncSearch       cterm=none ctermfg=bg  ctermbg=darkgreen
hi Question        ctermfg=blue

hi Folded          ctermfg=darkgrey     ctermbg=bg
hi FoldColumn      ctermfg=darkgrey     ctermbg=darkcyan
hi SignColumn      ctermfg=darkgrey     ctermbg=darkcyan
hi ColorColumn     ctermfg=darkgrey     ctermbg=darkcyan

hi CursorColumn    cterm=none ctermbg=darkcyan
hi CursorLine      cterm=none ctermbg=darkcyan

hi vimFold         ctermfg=darkgrey
hi vimCommentTitle ctermfg=fg
hi helpHyperTextJump ctermfg=blue

hi htmlTag         ctermfg=darkyellow
hi htmlEndTag      ctermfg=darkyellow
hi htmlTagName     ctermfg=darkgreen
hi htmlString      ctermfg=yellow

hi diffFile        ctermfg=darkgrey
hi diffLine        ctermfg=darkgrey
hi diffAdded       ctermfg=green
hi diffRemoved     ctermfg=darkgreen
hi diffChanged     ctermfg=darkred

hi diffAdd         ctermfg=bg    ctermbg=green
hi diffDelete      ctermfg=bg    ctermbg=darkgrey
hi diffText        ctermfg=bg    ctermbg=red
hi diffChange      ctermfg=bg    ctermbg=darkgreen
hi diffOldLine     ctermfg=bg    ctermbg=darkyellow

hi SpellBad        ctermfg=red        ctermbg=bg
hi SpellCap        ctermfg=darkgreen       ctermbg=bg
hi SpellRare       ctermfg=darkyellow     ctermbg=bg
hi SpellLocal      ctermfg=darkred     ctermbg=bg

hi mkdCode         ctermfg=darkgrey
hi mkdURL          ctermfg=blue
hi mkdLink         ctermfg=magenta

hi def link mailSubject Title
hi def link mailSignature Comment
hi def link mailQuoted2 mailQuoted1
hi def link perlSharpBang Comment
hi def link javaScriptNumber Number
hi def link markdownCode Comment
hi def link markdownCodeBlock Comment

" vim: set ft=vim: