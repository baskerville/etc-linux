if !has('conceal')
    finish
endif

syn match emSpace " " conceal cchar=@
syn match enSpace " " conceal cchar=&
syn match threePerEmSpace " " conceal cchar=⅓
syn match fourPerEmSpace " " conceal cchar=¼
syn match sixPerEmSpace " " conceal cchar=⅙
syn match thinSpace " " conceal cchar=,
syn match hairSpace " " conceal cchar=ˇ
syn match figureSpace " " conceal cchar=#
syn match punctuationSpace " " conceal cchar=!

syn match emSpace " " conceal cchar=@ contained
syn match enSpace " " conceal cchar=& contained
syn match threePerEmSpace " " conceal cchar=⅓ contained
syn match fourPerEmSpace " " conceal cchar=¼ contained
syn match sixPerEmSpace " " conceal cchar=⅙ contained
syn match thinSpace " " conceal cchar=, contained
syn match hairSpace " " conceal cchar=ˇ contained
syn match figureSpace " " conceal cchar=# contained
syn match punctuationSpace " " conceal cchar=! contained

hi link emSpace SpecialKey
hi link enSpace SpecialKey
hi link threePerEmSpace SpecialKey
hi link fourPerEmSpace SpecialKey
hi link sixPerEmSpace SpecialKey
hi link thinSpace SpecialKey
hi link hairSpace SpecialKey
hi link figureSpace SpecialKey
hi link punctuationSpace SpecialKey

syn cluster hiddenSpaces contains=emSpace,enSpace,threePerEmSpace,fourPerEmSpace,sixPerEmSpace,thinSpace,hairSpace,figureSpace,punctuationSpace
syn cluster texDocGroup contains=@hiddenSpaces,texPartZone,@texPartGroup
