syn match   vimHiSkeletonColor  contained   "{[^}]*}"
syn match	vimHiCtermFgBg	contained	"\ccterm[fb]g="he=e-1	nextgroup=vimNumber,vimHiSkeletonColor,vimHiCtermColor,vimFgBgAttrib,vimHiCtermError
hi def link vimHiSkeletonColor  vimNumber
