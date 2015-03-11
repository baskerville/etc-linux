" Vim Color File
"       Name: raven8.vim
"    Version: 0.2
" Maintainer: baskerville <nihilhill *at* gmail *dot* com>

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="raven8"

" Cf. `:h w18`

hi Normal         cterm=none ctermfg=lightgrey ctermbg=black
hi Comment        cterm=none ctermfg=darkgrey

hi Constant       ctermfg=yellow
hi Identifier     ctermfg=magenta
hi Statement      ctermfg=green
hi PreProc        ctermfg=blue
hi Type           ctermfg=cyan
hi Special        ctermfg=red
hi Underlined     ctermfg=fg
hi Ignore         ctermfg=bg
hi Error          ctermfg=bg  ctermbg=red
hi Todo           ctermfg=green  ctermbg=bg    cterm=none
hi StatusLine     cterm=none ctermfg=white
hi StatusLineNC   cterm=none ctermfg=darkgrey

" vim: set ft=vim: