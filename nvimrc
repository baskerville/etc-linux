" skip introduction message
set shortmess+=I
" allow opening another file from a modified buffer
set hidden
" use clipboard for everything
set clipboard+=unnamedplus
" show number of selected lines/characters
set showcmd
" exclude some files from the wild menu auto-completion
set wildignore=*.o,*.jpg,*.png,*.gif
" use fold markers to indicate folds
set foldmethod=marker
" don't insert line breaks in the middle of a word
set linebreak

" a tab accounts for 4 spaces
set tabstop=4
" indent by one tab
set shiftwidth=4
" try to infer the indentation of the next line
set smartindent
" copy the indenting structure of the current line in the next line
set copyindent

" don't create permanent backup files
set nobackup
" synchronize vim's cwd with the cwd of the current buffer
set autochdir

" ignore case in search patterns
set ignorecase
" unset &ignorecase if the search pattern contains upper case characters
set smartcase

" use proper syntax highlighting for shell scripts
let g:is_posix = 1
" enable true color support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" content of the status line
set statusline=
" full path, modified, readonly, help buffer and preview window flags
set statusline+=%F%m%r%h%w
" right align the rest of the status line, file type
set statusline+=\ %=%Y
" file encoding
set statusline+=\ [%{strlen(&fenc)?&fenc:'N/A'}]
" line ending type
set statusline+=\ [%{&ff}]
" line and column numbers, percentage through file
set statusline+=\ %l,%v\ %p%%
" custom tab pages line
set tabline=%!GetTabLine()

" list of words used for c-x c-k completion
set dictionary+=/usr/share/dict/words
" characters used for the 'list' mode
set listchars=eol:¬,tab:▸\ ,trail:•,extends:»,precedes:«,conceal:†,nbsp:␣

if !exists('g:loaded_matchit')
	runtime! macros/matchit.vim
endif

filetype off

call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'suy/vim-context-commentstring'
Plug 'benekastah/neomake'
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/applescript.vim'
Plug 'rust-lang/rust.vim'
Plug 'tikhomirov/vim-glsl'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'junegunn/vim-easy-align'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'tobinvanpelt/vim-coffee-script'
Plug 'justinmk/vim-syntax-extra'
Plug 'cespare/vim-toml'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'tejr/vim-tmux'
Plug 'groenewege/vim-less'
Plug 'nsf/gocode', {'rtp': 'vim'}
Plug 'jnurmine/Zenburn'
" Plug 'baskerville/bubblegum'
Plug 'baskerville/vim-quirks'
call plug#end()

syntax on
filetype plugin indent on

let g:pandoc#syntax#conceal#use = 0
let g:pandoc#syntax#codeblocks#embeds#langs = ["rust", "c", "sh"]
let g:bgtype = system("cat $HOME/.bgtype")
let g:terminal_color_0 = '#5b5955'
let g:terminal_color_1 = '#cc7b7b'
let g:terminal_color_2 = '#55a884'
let g:terminal_color_3 = '#b39212'
let g:terminal_color_4 = '#5d9fcd'
let g:terminal_color_5 = '#b780ba'
let g:terminal_color_6 = '#26a9b7'
let g:terminal_color_7 = '#f1ead9'
let g:terminal_color_8 = '#767166'
let g:terminal_color_9 = '#ffa4a4'
let g:terminal_color_10 = '#86d8b2'
let g:terminal_color_11 = '#d9c171'
let g:terminal_color_12 = '#8ccefe'
let g:terminal_color_13 = '#e9afeb'
let g:terminal_color_14 = '#5bdbda'
let g:terminal_color_15 = '#fffaf0'
if g:bgtype == "dark"
	set bg=dark
else
	set bg=light
endif

exec "colorscheme raven-" . &bg

hi def link mailSubject Title
hi def link mailSignature Comment
hi def link mailQuoted2 mailQuoted1
hi def link perlSharpBang Comment
hi def link javaScriptNumber Number
hi def link markdownCode Comment
hi def link markdownCodeBlock Comment
hi def link rubySharpBang Comment
hi def link htmlString String

if has("autocmd")
	autocmd FileType mail silent! call CleanMuttHeader()
	autocmd FileType mail setlocal completefunc=CompleteMuttAliases
	autocmd FileType mail setlocal commentstring=>%s
	autocmd FileType mail setlocal tw=0
	autocmd FileType xdefaults setlocal commentstring=!%s
	" autocmd FileType sxhkdrc setlocal commentstring=#%s
	" autocmd FileType lilypond setlocal commentstring=%%s
	autocmd FileType slrnrc setlocal commentstring=%%s
	autocmd FileType slang setlocal commentstring=%%s
	autocmd FileType perl setlocal keywordprg=perldoc
	autocmd FileType ruby setlocal keywordprg=ri ts=2 sw=2 expandtab
	autocmd FileType vim setlocal keywordprg=:help
	autocmd FileType coffee setlocal ts=2 sw=2 expandtab
	autocmd Filetype python setlocal ts=4 sw=4 expandtab
	autocmd Filetype javascript setlocal makeprg=gulp\ jshint\ \\\|\ grep\ ^/ errorformat=%f:\ line\ %l\\,\ col\ %c\\,\ %m
	autocmd FileType tex nmap <leader><return> :!xelatex % && open %<.pdf &<cr>

	autocmd BufRead,BufEnter *.h set filetype=c
	autocmd BufRead,BufEnter *tmux.conf set filetype=tmux
	autocmd BufNewFile,BufFilePRe,BufRead *.md set filetype=markdown.pandoc

	" Jump to the last editing position
	autocmd BufReadPost * exe "normal! '\""

	" Mark the current file as recently modified
	autocmd BufRead,BufEnter * call system("fdb -i " . $XDG_DATA_HOME . "/edit.json -a " . shellescape(expand("%:p")) . " &")

	" Set tmux pane title
	autocmd BufEnter * call system("settitle " . expand("%:p:t"))

	if exists("+omnifunc")
		autocmd Filetype *
		\	if &omnifunc == "" |
		\		setlocal omnifunc=syntaxcomplete#Complete |
		\	endif
	endif
endif

let mapleader = " "

tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nmap j gj
nmap k gk
nmap <leader>u :call DumpColorScheme()<cr>
nmap <leader>b :windo setlocal scrollbind!<cr>
nmap <leader>s :%s/
vmap <leader>s :s/
nmap <leader>S :s/
nmap <leader>o o<esc>k
nmap <leader>O O<esc>j
nmap <leader>j :bn<cr>
nmap <leader>k :bp<cr>
nmap <leader>l gt
nmap <leader>h gT
nmap <leader>d :bdelete<cr>
nmap <silent> <leader>D :call delete(expand('%'))<cr>
nmap <leader>E :set expandtab!<cr>
nmap <leader>t :%retab!<cr>
vmap <leader>T :!titlecase<cr>
vmap <leader>R :!sort<cr>
nmap <leader>H vip:!proto %:r.c<cr>
nmap <leader>z viw1z=
nmap <leader>Z viw2z=
nmap <leader>w :!open =expand("<cword>")<cr><cr><cr>
vmap <leader>w y:!open "<cr><cr>
nmap <leader>[ :cp<cr>
nmap <leader>] :cn<cr>
nmap <leader>} :cnf<cr>
nmap <leader>{ :cpf<cr>
nmap <leader>* :vimgrep =expand("<cword>")<cr> *
nmap <silent> <leader>? :call Define(expand("<cword>"))<cr>
nmap <silent> <leader>. :let @*=expand("%")<cr>
nmap <silent> <leader>/ :let @*=expand("%:p")<cr>
nmap <silent> <leader>I :let @*=synIDattr(synID(line("."),col("."),1),"name")<cr>
nmap <silent> <leader>ga :call GetCharName()<cr>
nmap <silent> <leader>= :call TransparentlyExecute("normal gg=G")<cr>
nmap <silent> <leader>C :call ToggleClipboard()<cr>
nmap <silent> <F1> :set number!<cr>
nmap <silent> <F2> :set hlsearch!<cr>
nmap <silent> <F3> :let sid=synID(line("."),col("."),1)\|echo synIDattr(sid,"name")." ".synIDattr(synIDtrans(sid),"name")." ".synIDattr(synIDtrans(sid),"fg#")<cr>
nmap <silent> <F4> :set list!<cr>
nmap <silent> <F5> :setlocal spell! spelllang=en<cr>
nmap <silent> <F6> :setlocal spell! spelllang=fr<cr>
nmap <silent> <F7> :call ToggleWrap()<cr>
nmap <silent> <F8> :call ToggleSyntax()<cr>
nmap <silent> <F9> :call ToggleConceal()<cr>
nmap <silent> <F10> :call ToggleColorColumn()<cr>
nmap <silent> <F11> :call EditSyntax()<cr>
nmap <silent> <F12> :Neomake!<cr>
nmap <silent> <leader><Tab> :<C-u>exe "setlocal ts=".v:count1." sw=".v:count1<cr>
nmap <silent> <leader>v :call MakePreview()<cr>
nmap <silent> <leader>V :call ToggleViewMode()<cr>
" Reverse string
vmap <Leader>i c<C-o>:set ri<cr><C-r>"<esc>:set nori<cr>
nmap <leader>r :source ~/.config/nvim/init.vim<cr>
nmap <leader>e :e ~/.config/nvim/init.vim<cr>
nmap <leader>! :w ! sudo tee %<cr>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

function! DumpColorScheme()
	exec "redir > " . g:colors_name . ".vimTheme | silent hi | redir END"
endfunction

function! Define(word)
	let response = system("def " . a:word)
	echo response
endfunction

function! TransparentlyExecute(command)
	let w = winsaveview()
	exec a:command
	call winrestview(w)
endfunction

function! EditSyntax()
	let filename = substitute(system("find_vim_syntax " . &filetype), "\n$", "", "")
	exec 'e ' . fnameescape(filename)
endfunction

function! EditColorScheme()
	exec 'e ' . fnameescape($HOME . "/.config/nvim/colors/" . g:colors_name . ".vim")
endfunction

function! ToggleSyntax()
	if exists("g:syntax_on")
		syntax off
	else
		syntax enable
	endif
endfunction

function! ToggleClipboard()
	if &clipboard =~ "unnamedplus"
		set clipboard-=unnamedplus
	else
		set clipboard+=unnamedplus
	endif
endfunction

function! ToggleColorColumn()
	if &colorcolumn
		set colorcolumn=0
	else
		set colorcolumn=80
	endif
endfunction

function! ToggleConceal()
	if &conceallevel
		set conceallevel=0
		echomsg "conceallevel disabled"
	else
		set conceallevel=2
		echomsg "conceallevel enabled"
	endif
endfunction

function! ToggleWrap()
	if &wrap == 1
		if &linebreak == 0
			set linebreak
		else
			set nowrap
		endif
	else
		set wrap
		set nolinebreak
	endif
endfunction

function! ToggleBar()
	if &laststatus == 0
		set laststatus=2
	else
		set laststatus=0
	endif
endfunction

function! GetCharName()
	let clip = @"
	normal! yl
	let response = system("uniname", @")
	echomsg response
	let @" = clip
endfunction

function! ToggleViewMode()
	if &foldcolumn != 12
		set foldcolumn=12
		set laststatus=0
		hi FoldColumn ctermbg=bg guibg=bg
	else
		set foldcolumn=0
		set laststatus=2
		execute 'colorscheme ' . g:colors_name
	endif
endfunc

function! CleanMuttHeader()
	" remove signature
	exec '%s/^>\+ *-- \n\_.*//e'
	" remove unwanted headers
	exec '%s/^\(Reply-To\|Bcc\): \n//e'
	normal! 3j
endfunction

function! CompleteMuttAliases(findstart, base)
	if a:findstart
		" locate the start of the word
		let line = getline('.')
		let start = col('.') - 1
		while start > 0 && line[start - 1] =~ '\a'
			let start -= 1
		endwhile
		return start
	else
		" call mutt with the appropriate parameters
		let result = []
		if strlen(a:base)
			let query_response = system("mutt_alias_query " . a:base)
			let result = split(query_response, '\n')
		endif
		return result
	endif
endfunction

function GetTabLine()
	let s = ''
	" loop through each tab page
	for t in range(tabpagenr('$'))
		" set highlight
		if t + 1 == tabpagenr()
			let s .= '%#TabLineSel#'
		else
			let s .= '%#TabLine#'
		endif
		" set the tab page number (for mouse clicks)
		let s .= '%' . (t + 1) . 'T'
		let s .= ' '
		" set page number string
		let s .= t + 1 . ' '
		" get buffer names and statuses
		let n = ''
		let bc = len(tabpagebuflist(t + 1))
		" loop through each buffer in a tab
		for b in tabpagebuflist(t + 1)
			" handle the buffer label
			if getbufvar( b, "&buftype" ) == 'help'
				let n .= '[H]' . fnamemodify( bufname(b), ':t:s/.txt$//' )
			elseif getbufvar( b, "&buftype" ) == 'quickfix'
				let n .= '[Q]'
			else
				let n .= pathshorten(bufname(b))
			endif
			" append a modified flag if necessary
			if getbufvar( b, "&modified" )
				let n .= '[+]'
			endif
			" prevent trailing spaces
			if bc > 1
				let n .= ' '
			endif
			let bc -= 1
		endfor
		if t + 1 == tabpagenr()
			let s .= '%#TabLineSel#'
		else
			let s .= '%#TabLine#'
		endif
		if n == ''
			let s .= '[No Name]'
		else
			let s .= n
		endif
		let s .= ' '
	endfor
	" after the last tab fill with TabLineFill and reset tab page nr
	let s .= '%#TabLineFill#%T'
	" right-align the label to close the current tab page
	if tabpagenr('$') > 1
		let s .= '%=%#TabLineFill#%999XX'
	endif
	return s
endfunction

function! MakePreview()
	let s:lnum = 1
	let s:end = line("$")
	let s:lines = []

	while s:lnum <= s:end
		let s:output = ""
		let s:line = getline(s:lnum)
		let s:len = strlen(s:line)
		let s:col = 1
		let s:lastcol = 1

		while s:col <= s:len
			let s:id = synID(s:lnum, s:col, 1)
			let s:col = s:col + 1
			while s:col <= s:len && s:id == synID(s:lnum, s:col, 1)
				let s:col = s:col + 1
			endwhile
			let s:content = strpart(s:line, s:lastcol-1, s:col-s:lastcol)
			let s:content = substitute(s:content, '{\({\+\)', '{\1{', "g")
			let s:content = substitute(s:content, '\(}\+\)}', '}\1}', "g")
			let s:name = synIDattr(synIDtrans(s:id), "name")
			if s:name != ""
				let s:output = s:output . "{{ " . s:name . "|" . s:content . " }}"
			else
				let s:output = s:output . s:content
			endif
			let s:lastcol = s:col
		endwhile

		let s:lines = add(s:lines, s:output)
		let s:lnum = s:lnum + 1
	endwhile

	exec "new " . expand("%") . ".preview"
	call append(0, s:lines)
	normal dd
endfunction
