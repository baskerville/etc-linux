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

hi Identifier      ctermfg=
hi Function        ctermfg=

hi Statement       ctermfg=
hi Conditional     ctermfg=
hi Repeat          ctermfg=
hi Label           ctermfg=
hi Operator        ctermfg=
hi Keyword         ctermfg=
hi Exception       ctermfg=

hi PreProc         ctermfg=
hi Include         ctermfg=
hi Define          ctermfg=
hi Macro           ctermfg=
hi PreCondit       ctermfg=

hi Type            ctermfg=
hi StorageClass    ctermfg=
hi Structure       ctermfg=
hi Typedef         ctermfg=

hi Special         ctermfg=
hi SpecialChar     ctermfg=
hi Tag             ctermfg=
hi Delimiter       ctermfg=
hi SpecialComment  ctermfg=
hi Debug           ctermfg=

hi Underlined      ctermfg=fg
hi Ignore          ctermfg=bg
hi Error           ctermfg=bg  ctermbg=
hi Todo            ctermfg=green  ctermbg=bg    cterm=none

"
" minor groups
"
hi StatusLine      cterm=none ctermfg=fg       ctermbg=
hi StatusLineNC    cterm=none ctermfg=darkgrey ctermbg=

hi TabLine         cterm=none ctermfg=fg     ctermbg=
hi TabLineSel      cterm=none ctermfg=cyan   ctermbg=
hi TabLineFill     cterm=none ctermfg=fg     ctermbg=

hi Pmenu           ctermfg=fg     ctermbg=
hi PmenuSel        ctermfg=white    ctermbg=darkgrey
hi PmenuSbar       ctermfg=white    ctermbg=darkgrey
hi WildMenu        ctermfg=white    ctermbg=darkgrey    cterm=none

hi Visual           cterm=none ctermfg=bg   ctermbg=
hi VisualNOS        cterm=none ctermfg=bg   ctermbg=magenta
hi VertSplit        cterm=none ctermfg=bg  ctermbg=
hi LineNr          ctermfg=darkgrey   ctermbg=

hi Title           ctermfg=
hi SpecialKey      ctermfg=green
hi Conceal         ctermfg=green       ctermbg=bg
hi NonText         ctermfg=darkgrey
hi MatchParen      ctermfg=bg       ctermbg=
hi Directory       ctermfg=

hi ErrorMsg        ctermfg=red          ctermbg=bg
hi WarningMsg      ctermfg=   ctermbg=bg
hi MoreMsg         ctermfg=    ctermbg=bg
hi ModeMsg         ctermfg=      ctermbg=bg

hi Search          ctermfg=bg  ctermbg=yellow
hi IncSearch       cterm=none ctermfg=bg  ctermbg=
hi Question        ctermfg=

hi Folded          ctermfg=darkgrey     ctermbg=bg
hi FoldColumn      ctermfg=darkgrey     ctermbg=
hi SignColumn      ctermfg=darkgrey     ctermbg=
hi ColorColumn     ctermfg=darkgrey     ctermbg=

hi CursorColumn    cterm=none ctermbg=
hi CursorLine      cterm=none ctermbg=

hi vimFold         ctermfg=darkgrey
hi vimCommentTitle ctermfg=fg
hi helpHyperTextJump ctermfg=

hi htmlTag         ctermfg=
hi htmlEndTag      ctermfg=
hi htmlTagName     ctermfg=
hi htmlString      ctermfg=yellow

hi diffFile        ctermfg=darkgrey
hi diffLine        ctermfg=darkgrey
hi diffAdded       ctermfg=green
hi diffRemoved     ctermfg=
hi diffChanged     ctermfg=

hi diffAdd         ctermfg=bg    ctermbg=green
hi diffDelete      ctermfg=bg    ctermbg=darkgrey
hi diffText        ctermfg=bg    ctermbg=red
hi diffChange      ctermfg=bg    ctermbg=
hi diffOldLine     ctermfg=bg    ctermbg=

hi SpellBad        ctermfg=bg    ctermbg=red        
hi SpellCap        ctermfg=bg    ctermbg=       
hi SpellRare       ctermfg=bg    ctermbg=     
hi SpellLocal      ctermfg=bg    ctermbg=     

hi mkdCode         ctermfg=darkgrey
hi mkdURL          ctermfg=
hi mkdLink         ctermfg=magenta

hi def link mailSubject Title
hi def link mailSignature Comment
hi def link mailQuoted2 mailQuoted1
hi def link perlSharpBang Comment
hi def link javaScriptNumber Number
hi def link markdownCode Comment
hi def link markdownCodeBlock Comment

" vim: set ft=vim: