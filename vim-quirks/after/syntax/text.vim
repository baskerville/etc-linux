if !has('conceal')
    finish
endif

syn match emSpace " " conceal cchar=@ containedin=ALL
syn match enSpace " " conceal cchar=& containedin=ALL
syn match threePerEmSpace " " conceal cchar=⅓ containedin=ALL
syn match fourPerEmSpace " " conceal cchar=¼ containedin=ALL
syn match sixPerEmSpace " " conceal cchar=⅙ containedin=ALL
syn match thinSpace " " conceal cchar=, containedin=ALL
syn match hairSpace " " conceal cchar=ˇ containedin=ALL
syn match figureSpace " " conceal cchar=# containedin=ALL
syn match punctuationSpace " " conceal cchar=! containedin=ALL

hi link emSpace SpecialKey
hi link enSpace SpecialKey
hi link threePerEmSpace SpecialKey
hi link fourPerEmSpace SpecialKey
hi link sixPerEmSpace SpecialKey
hi link thinSpace SpecialKey
hi link hairSpace SpecialKey
hi link figureSpace SpecialKey
hi link punctuationSpace SpecialKey
