" Vim Color File
" Name:       bubblegum.vim
" Version:    0.1
" Maintainer: baskerville <nihilhill *at* gmail *dot* com>

hi clear

if exists("syntax on")
	syntax reset
endif

let g:colors_name="bubblegum"

" Cf. `:h w18`

if &background == "dark"
	" Main
	hi Normal          ctermfg=249    ctermbg=235    cterm=none
	hi Comment         ctermfg=244

	" Constant
	hi Constant        ctermfg=186
	hi String          ctermfg=187
	hi Character       ctermfg=187
	hi Number          ctermfg=179
	hi Boolean         ctermfg=187
	hi Float           ctermfg=179

	" Variable
	hi Identifier      ctermfg=182
	hi Function        ctermfg=182

	" Keyword
	hi Statement       ctermfg=110
	hi Conditional     ctermfg=110
	hi Repeat          ctermfg=110
	hi Label           ctermfg=110
	hi Operator        ctermfg=110
	hi Keyword         ctermfg=110
	hi Exception       ctermfg=110

	" Meta
	hi PreProc         ctermfg=150
	hi Include         ctermfg=150
	hi Define          ctermfg=150
	hi Macro           ctermfg=150
	hi PreCondit       ctermfg=150

	" Type
	hi Type            ctermfg=146
	hi StorageClass    ctermfg=146
	hi Structure       ctermfg=146
	hi Typedef         ctermfg=146

	" Special
	hi Special         ctermfg=174
	hi SpecialChar     ctermfg=174
	hi Tag             ctermfg=174
	hi Delimiter       ctermfg=174
	hi SpecialComment  ctermfg=174
	hi Debug           ctermfg=174
	hi Underlined      ctermfg=fg
	hi Ignore          ctermfg=bg
	hi Error           ctermfg=231    ctermbg=167
	hi Todo            ctermfg=189    ctermbg=bg     cterm=none

	" Misc
	hi StatusLine      ctermfg=fg     ctermbg=237    cterm=none
	hi StatusLineNC    ctermfg=244    ctermbg=237    cterm=none
	hi TabLine         ctermfg=fg     ctermbg=237    cterm=none
	hi TabLineSel      ctermfg=253    ctermbg=238    cterm=none
	hi TabLineFill     ctermfg=fg     ctermbg=237    cterm=none

	hi Pmenu           ctermfg=fg     ctermbg=237
	hi PmenuSel        ctermfg=231    ctermbg=244
	hi PmenuSbar       ctermfg=231    ctermbg=244
	hi PmenuThumb      ctermbg=187    ctermfg=187
	hi WildMenu        ctermfg=71     ctermbg=237    cterm=none

	hi Visual          ctermfg=bg     ctermbg=117
	hi VisualNOS       ctermfg=bg     ctermbg=116
	hi VertSplit       ctermfg=237    ctermbg=237    cterm=none
	hi LineNr          ctermfg=244    ctermbg=237

	hi Title           ctermfg=109
	hi SpecialKey      ctermfg=114
	hi NonText         ctermfg=244
	hi Conceal         ctermfg=77     ctermbg=bg
	hi MatchParen      ctermfg=16     ctermbg=215
	hi Directory       ctermfg=103

	hi ErrorMsg        ctermfg=210    ctermbg=bg
	hi WarningMsg      ctermfg=140
	hi MoreMsg         ctermfg=72
	hi ModeMsg         ctermfg=222

	hi Search          ctermfg=16     ctermbg=179     cterm=none
	hi IncSearch       ctermfg=231    ctermbg=168     cterm=none
	hi Question        ctermfg=38

	hi Folded          ctermfg=244    ctermbg=bg
	hi FoldColumn      ctermfg=79     ctermbg=237
	hi SignColumn      ctermfg=79     ctermbg=237
	hi ColorColumn     ctermfg=79     ctermbg=237

	hi CursorColumn    ctermbg=237    cterm=none
	hi CursorLine      ctermbg=237    cterm=none

	hi vimFold         ctermfg=244
	hi vimCommentTitle ctermfg=fg
	hi helpHyperTextJump ctermfg=74

	hi htmlTag         ctermfg=147
	hi htmlEndTag      ctermfg=147
	hi htmlTagName     ctermfg=175
	hi htmlString      ctermfg=144

	hi diffFile        ctermfg=244
	hi diffLine        ctermfg=244
	hi diffAdded       ctermfg=107
	hi diffRemoved     ctermfg=175
	hi diffChanged     ctermfg=179

	hi diffAdd         ctermfg=16     ctermbg=149
	hi diffDelete      ctermfg=231    ctermbg=fg
	hi diffText        ctermfg=16     ctermbg=211
	hi diffChange      ctermfg=16     ctermbg=217
	hi diffOldLine     ctermfg=104

	hi SpellBad        ctermfg=210    ctermbg=bg    cterm=underline
	hi SpellCap        ctermfg=174    ctermbg=bg    cterm=underline
	hi SpellRare       ctermfg=181    ctermbg=bg    cterm=underline
	hi SpellLocal      ctermfg=180    ctermbg=bg    cterm=underline

	hi mkdCode         ctermfg=244
	hi mkdURL          ctermfg=111
	hi mkdLink         ctermfg=181
else
	" Main
	hi Normal          ctermfg=241    ctermbg=231    cterm=none
	hi Comment         ctermfg=246

	" Constant
	hi Constant        ctermfg=64
	hi String          ctermfg=100
	hi Character       ctermfg=100
	hi Number          ctermfg=172
	hi Boolean         ctermfg=100
	hi Float           ctermfg=172

	" Variable
	hi Identifier      ctermfg=133
	hi Function        ctermfg=133

	" Keyword
	hi Statement       ctermfg=32
	hi Conditional     ctermfg=32
	hi Repeat          ctermfg=32
	hi Label           ctermfg=32
	hi Operator        ctermfg=32
	hi Keyword         ctermfg=32
	hi Exception       ctermfg=32

	" Meta
	hi PreProc         ctermfg=28
	hi Include         ctermfg=28
	hi Define          ctermfg=28
	hi Macro           ctermfg=28
	hi PreCondit       ctermfg=28

	" Type
	hi Type            ctermfg=61
	hi StorageClass    ctermfg=61
	hi Structure       ctermfg=61
	hi Typedef         ctermfg=61

	" Special
	hi Special         ctermfg=203
	hi SpecialChar     ctermfg=203
	hi Tag             ctermfg=203
	hi Delimiter       ctermfg=203
	hi SpecialComment  ctermfg=203
	hi Debug           ctermfg=203
	hi Underlined      ctermfg=fg
	hi Ignore          ctermfg=bg
	hi Error           ctermfg=235    ctermbg=196
	hi Todo            ctermfg=25    ctermbg=bg     cterm=none

	" Misc
	hi StatusLine      ctermfg=fg     ctermbg=254    cterm=none
	hi StatusLineNC    ctermfg=246    ctermbg=254    cterm=none
	hi TabLine         ctermfg=fg     ctermbg=254    cterm=none
	hi TabLineSel      ctermfg=238    ctermbg=188    cterm=none
	hi TabLineFill     ctermfg=fg     ctermbg=254    cterm=none

	hi Pmenu           ctermfg=fg     ctermbg=254
	hi PmenuSel        ctermfg=235    ctermbg=246
	hi PmenuSbar       ctermfg=235    ctermbg=246
	hi PmenuThumb      ctermbg=100    ctermfg=100
	hi WildMenu        ctermfg=76     ctermbg=254    cterm=none

	hi Visual          ctermfg=bg     ctermbg=24
	hi VisualNOS       ctermfg=bg     ctermbg=23
	hi VertSplit       ctermfg=254    ctermbg=254    cterm=none
	hi LineNr          ctermfg=246    ctermbg=254

	hi Title           ctermfg=30
	hi SpecialKey      ctermfg=70
	hi NonText         ctermfg=246
	hi Conceal         ctermfg=40     ctermbg=bg
	hi MatchParen      ctermfg=255     ctermbg=202
	hi Directory       ctermfg=104

	hi ErrorMsg        ctermfg=160    ctermbg=bg
	hi WarningMsg      ctermfg=135
	hi MoreMsg         ctermfg=35
	hi ModeMsg         ctermfg=130

	hi Search          ctermfg=255     ctermbg=172     cterm=none
	hi IncSearch       ctermfg=235    ctermbg=198     cterm=none
	hi Question        ctermfg=38

	hi Folded          ctermfg=246    ctermbg=bg
	hi FoldColumn      ctermfg=22     ctermbg=254
	hi SignColumn      ctermfg=22     ctermbg=254
	hi ColorColumn     ctermfg=22     ctermbg=254

	hi CursorColumn    ctermbg=254    cterm=none
	hi CursorLine      ctermbg=254    cterm=none

	hi vimFold         ctermfg=246
	hi vimCommentTitle ctermfg=fg
	hi helpHyperTextJump ctermfg=39

	hi htmlTag         ctermfg=27
	hi htmlEndTag      ctermfg=27
	hi htmlTagName     ctermfg=162
	hi htmlString      ctermfg=58

	hi diffFile        ctermfg=246
	hi diffLine        ctermfg=246
	hi diffAdded       ctermfg=34
	hi diffRemoved     ctermfg=162
	hi diffChanged     ctermfg=172

	hi diffAdd         ctermfg=255     ctermbg=112
	hi diffDelete      ctermfg=235    ctermbg=fg
	hi diffText        ctermfg=255     ctermbg=199
	hi diffChange      ctermfg=255     ctermbg=88
	hi diffOldLine     ctermfg=63

	hi SpellBad        ctermfg=160    ctermbg=bg    cterm=underline
	hi SpellCap        ctermfg=203    ctermbg=bg    cterm=underline
	hi SpellRare       ctermfg=131    ctermbg=bg    cterm=underline
	hi SpellLocal      ctermfg=94    ctermbg=bg    cterm=underline

	hi mkdCode         ctermfg=246
	hi mkdURL          ctermfg=26
	hi mkdLink         ctermfg=131
endif
