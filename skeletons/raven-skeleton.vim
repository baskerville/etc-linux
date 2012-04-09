" Vim Color File
" Name:       raven.vim
" Version:    0.1
" Maintainer: baskerville a lavabit o com
"

hi clear

if exists("syntax on")
    syntax reset
endif

let g:colors_name="{scheme_name}"

"
" preferred groups
" (see `:h w18`)
"
hi Normal          ctermfg={foreground}    ctermbg={background}     cterm=none
hi Comment         ctermfg={fg_comment}

hi Constant        ctermfg={yellow}
hi String          ctermfg={yellow}
hi Character       ctermfg={yellow}
hi Number          ctermfg={yellow}
hi Boolean         ctermfg={yellow}
hi Float           ctermfg={yellow}

hi Identifier      ctermfg={violet}
hi Function        ctermfg={violet}

hi Statement       ctermfg={teal}
hi Conditional     ctermfg={teal}
hi Repeat          ctermfg={teal}
hi Label           ctermfg={teal}
hi Operator        ctermfg={teal}
hi Keyword         ctermfg={teal}
hi Exception       ctermfg={teal}

hi PreProc         ctermfg={azure}
hi Include         ctermfg={azure}
hi Define          ctermfg={azure}
hi Macro           ctermfg={azure}
hi PreCondit       ctermfg={azure}

hi Type            ctermfg={orange}
hi StorageClass    ctermfg={orange}
hi Structure       ctermfg={orange}
hi Typedef         ctermfg={orange}

hi Special         ctermfg={pink}
hi SpecialChar     ctermfg={pink}
hi Tag             ctermfg={pink}
hi Delimiter       ctermfg={pink}
hi SpecialComment  ctermfg={pink}
hi Debug           ctermfg={pink}

hi Underlined      ctermfg=fg
hi Ignore          ctermfg=bg
hi Error           ctermfg={bg_floor}    ctermbg={red}
hi Todo            ctermfg={fg_highlight}  ctermbg=bg    cterm=none

"
" minor groups
"
hi StatusLine      ctermfg=fg     ctermbg={bg_bump}    cterm=none
hi StatusLineNC    ctermfg={fg_comment}    ctermbg={bg_bump}    cterm=none

hi TabLine         ctermfg=fg     ctermbg={bg_bump}    cterm=none
hi TabLineSel      ctermfg={cyan}    ctermbg={bg_bump}    cterm=none
hi TabLineFill     ctermfg=fg     ctermbg={bg_bump}    cterm=none

hi Pmenu           ctermfg=fg     ctermbg={bg_bump}
hi PmenuSel        ctermfg={fg_ceiling}    ctermbg={fg_comment}
hi PmenuSbar       ctermfg={fg_ceiling}    ctermbg={fg_comment}
hi WildMenu        ctermfg={spring}     ctermbg={bg_bump}    cterm=none

hi Visual          ctermfg=bg     ctermbg={cyan}
hi VisualNOS       ctermfg=bg     ctermbg={blue}
hi VertSplit       ctermfg=bg     ctermbg={bg_bump}    cterm=none
hi LineNr          ctermfg={fg_comment}    ctermbg={bg_bump}

hi Title           ctermfg={azure}
hi SpecialKey      ctermfg={green}
hi NonText         ctermfg={fg_comment}
hi MatchParen      ctermfg={bg_floor}     ctermbg={teal}
hi Directory       ctermfg={violet}

hi ErrorMsg        ctermfg={red}    ctermbg=bg
hi WarningMsg      ctermfg={orange}
hi MoreMsg         ctermfg={teal}
hi ModeMsg         ctermfg={pink}

hi Search          ctermfg={bg_floor}     ctermbg={yellow}     cterm=none
hi IncSearch       ctermfg={bg_floor}     ctermbg={magenta}     cterm=none
hi Question        ctermfg={blue}

hi Folded          ctermfg={fg_comment}     ctermbg=bg
hi FoldColumn      ctermfg={teal}     ctermbg={bg_bump}
hi SignColumn      ctermfg={teal}     ctermbg={bg_bump}
hi ColorColumn     ctermfg={teal}     ctermbg={bg_bump}

hi CursorColumn    ctermbg={bg_dip}    cterm=none
hi CursorLine      ctermbg={bg_dip}    cterm=none

hi vimFold         ctermfg={fg_comment}
hi vimCommentTitle ctermfg=fg
hi helpHyperTextJump ctermfg={azure}

hi htmlTag         ctermfg={violet}
hi htmlEndTag      ctermfg={violet}
hi htmlTagName     ctermfg={pink}
hi htmlString      ctermfg={yellow}

hi diffFile        ctermfg={fg_comment}
hi diffLine        ctermfg={fg_comment}
hi diffAdded       ctermfg={spring}
hi diffRemoved     ctermfg={pink}
hi diffChanged     ctermfg={orange}

hi diffAdd         ctermfg={bg_floor}     ctermbg={green}
hi diffDelete      ctermfg={fg_ceiling}    ctermbg=fg
hi diffText        ctermfg={bg_floor}     ctermbg=fg
hi diffChange      ctermfg={bg_floor}     ctermbg={red}
hi diffOldLine     ctermfg={violet}

hi SpellBad        ctermfg={red}    ctermbg=bg      cterm=underline
hi SpellCap        ctermfg={pink}    ctermbg=bg      cterm=underline
hi SpellRare       ctermfg={violet}    ctermbg=bg      cterm=underline
hi SpellLocal      ctermfg={orange}    ctermbg=bg      cterm=underline

hi mkdCode         ctermfg={fg_comment}
hi mkdURL          ctermfg={azure}
hi mkdLink         ctermfg={magenta}

hi def link mailSubject Title
hi def link mailSignature Comment
hi def link mailQuoted2 mailQuoted1
hi def link perlSharpBang Comment
