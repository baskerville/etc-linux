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

hi link emSpace SpecialKey
hi link enSpace SpecialKey
hi link threePerEmSpace SpecialKey
hi link fourPerEmSpace SpecialKey
hi link sixPerEmSpace SpecialKey
hi link thinSpace SpecialKey
hi link hairSpace SpecialKey
hi link figureSpace SpecialKey
hi link punctuationSpace SpecialKey
