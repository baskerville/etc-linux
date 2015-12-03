set shortmess+=I
set belloff=all

set mouse=a
set hidden
set showcmd
set wildmenu
set wildignore=*.o,*.jpg,*.png,*.gif

set backspace=indent,eol,start
set foldmethod=marker
set linebreak

set tabstop=4
set shiftwidth=0
set smarttab
set autoindent
set smartindent
set preserveindent
set copyindent

set nobackup
set directory^=$HOME/tmp//
set autoread
set autochdir

set nohlsearch
set incsearch
set ignorecase
set smartcase

set statusline=
set statusline+=%F%m%r%h%w
set statusline+=\ %=%Y
set statusline+=\ [%{strlen(&fenc)?&fenc:&enc}]
set statusline+=\ [%{&ff}]
set statusline+=\ %l,%v\ %p%%
set laststatus=2

set dictionary+=/usr/share/dict/words
set listchars=eol:¬,tab:▸\ ,trail:•,extends:»,precedes:«,conceal:†,nbsp:␣

let g:is_posix = 1

if !exists('g:loaded_matchit')
	runtime! macros/matchit.vim
endif

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/go/libexec/misc/vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'suy/vim-context-commentstring'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-scripts/applescript.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'tikhomirov/vim-glsl'
Plugin 'leafgarland/typescript-vim'
Plugin 'mxw/vim-jsx'
Plugin 'junegunn/vim-easy-align'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tobinvanpelt/vim-coffee-script'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'cespare/vim-toml'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'tejr/vim-tmux'
Plugin 'groenewege/vim-less'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'jnurmine/Zenburn'
Plugin 'baskerville/bubblegum'
Plugin 'baskerville/vim-quirks'
call vundle#end()

syntax on
filetype plugin indent on

let g:bgtype = system("cat $HOME/.bgtype")
if g:bgtype == "dark"
	set bg=dark
else
	set bg=light
endif

exec "colorscheme bubblegum-256-" . &bg

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
	autocmd FileType coffee setlocal ts=2 sw=2 expandtab
	autocmd Filetype python setlocal ts=4 sw=4 expandtab
	autocmd Filetype javascript setlocal makeprg=gulp\ jshint\ \\\|\ grep\ ^/ errorformat=%f:\ line\ %l\\,\ col\ %c\\,\ %m
	autocmd FileType tex nmap <leader><return> :!xelatex % && open %<.pdf &<cr>
	autocmd BufNewFile,BufReadPost *.md set filetype=markdown

	autocmd BufRead,BufEnter *.h set filetype=c
	autocmd BufRead,BufEnter *tmux.conf set filetype=tmux

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
nmap <silent> <leader>. :call Yank(expand("%"))<cr>
nmap <silent> <leader>/ :call Yank(expand("%:p"))<cr>
nmap <silent> <leader>I :call Yank(synIDattr(synID(line("."),col("."),1),"name"))<cr>
nmap <silent> <leader>gf :call TerminalAt(expand("%:p:h"))<cr>
nmap <silent> <leader>ga :call GetCharName()<cr>
nmap <silent> <leader>= :call TransparentlyExecute("normal gg=G")<cr>
nmap <silent> <leader>C :set cursorline!<cr>
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
nmap <silent> <F12> :make<cr>
nmap <silent> <leader><Tab> :<C-u>exe "setlocal ts=".v:count1." sw=".v:count1<cr>
nmap <silent> <leader>v :call MakePreview()<cr>
nmap <silent> <leader>V :call ToggleViewMode()<cr>
vmap <silent> <leader>y y:call Yank()<cr>
nmap <silent> <leader>y yiw:call Yank()<cr>
nmap <silent> <leader>p :call Paste('after')<cr>
nmap <silent> <leader>P :call Paste('before')<cr>
" Reverse string
vmap <Leader>i c<C-o>:set ri<cr><C-r>"<esc>:set nori<cr>
nmap <leader>r :source ~/.vimrc<cr>
nmap <leader>e :e ~/.vimrc<cr>
nmap <leader>! :w ! sudo tee %<cr>
xmap <leader>c \\
nmap <leader>c \\
nmap <leader>cc \\\
nmap <leader>cu \\u
nmap <leader>cp vip\\

vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Enable F17
set t_F7=[31~
" Map F17 to digraph input
imap <F17> 
" Ellipsis
digraphs ,: 8230

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
	exec 'e ' . fnameescape($HOME . "/.vim/colors/" . g:colors_name . ".vim")
endfunction

function! ToggleSyntax()
	if exists("g:syntax_on")
		syntax off
	else
		syntax enable
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
	if (&wrap == 1)
		if (&linebreak == 0)
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
	if (&laststatus == 0)
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
	if (&foldcolumn != 12)
		set foldcolumn=12
		set laststatus=0
		hi FoldColumn ctermbg=bg guibg=bg
	else
		set foldcolumn=0
		set laststatus=2
		execute 'colorscheme ' . g:colors_name
	endif
endfunc

function! Yank(...)
	if a:0
		let response = system("pbcopy", a:1)
	else
		let response = system("pbcopy", @")
	endif
endfunction

function! Paste(paste_where)
	let at_q = @q
	let @q = system("pbpaste")
	if a:paste_where == 'after'
		normal! "qp
	elseif a:paste_where == 'before'
		normal! "qP
	endif
	let @q = at_q
endfunction

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
