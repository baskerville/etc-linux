set nocompatible
set noerrorbells
set shortmess+=I

set mouse=a
set encoding=utf-8
set hidden
set showmode
set showcmd
set wildmenu
set wildignore=*.o,*.jpg,*.png,*.gif
" set cursorline

set backspace=indent,eol,start
set foldmethod=marker
set linebreak
set autoindent
set smartindent
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set nobackup
set nowritebackup
set noswapfile
set autoread
set autochdir

set nohlsearch
set incsearch
set ignorecase
set smartcase

let g:xdefaults_no_if0 = 1
" let g:main_ff = substitute(&ffs, ',.*', '', '')
set statusline=
set statusline+=%F%m%r%h%w
set statusline+=\ %=%Y
set statusline+=\ [%{strlen(&fenc)?&fenc:'n/a'}]
set statusline+=\ [%{&ff}]
set statusline+=\ %l,%v\ %p%%
set laststatus=2
set dictionary+=/usr/share/dict/words
set listchars=eol:¬,tab:▸\ ,trail:•,extends:»,precedes:«,conceal:†,nbsp:␣

filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-repeat'
Bundle 'tobinvanpelt/vim-coffee-script'
Bundle 'msanders/snipmate.vim'
Bundle 'godlygeek/tabular'
Bundle 'Glench/Vim-Jinja2-Syntax'
Bundle 'othree/html5.vim'
Bundle 'vim-scripts/oz.vim'
Bundle 'jnurmine/Zenburn'
Bundle 'zeis/vim-kolor'
Bundle 'nsf/gocode', {'rtp': 'vim/'}
" Bundle 'kchmck/vim-coffee-script'
" Bundle 'vim-scripts/ck.vim'

Bundle 'baskerville/vim-sxhkdrc'
Bundle 'baskerville/vim-quirks'

syntax on
filetype plugin indent on

if has("gui_running")
    colorscheme raven
else
    if &t_Co >= 256
        colorscheme raven256
    else
        colorscheme raven8
    endif
endif

hi def link mailSubject Title
hi def link mailSignature Comment
hi def link mailQuoted2 mailQuoted1
hi def link perlSharpBang Comment
hi def link javaScriptNumber Number
hi def link markdownCode Comment
hi def link markdownCodeBlock Comment
hi def link rubySharpBang Comment

if has("autocmd")
    autocmd FileType mail silent! call CleanMuttHeader()
    autocmd FileType mail setlocal completefunc=CompleteMuttAliases
    autocmd FileType mail setlocal commentstring=>%s
    autocmd FileType xdefaults setlocal commentstring=!%s
    autocmd FileType sxhkdrc setlocal commentstring=#%s
    autocmd FileType lilypond setlocal commentstring=%%s
    autocmd FileType slrnrc setlocal commentstring=%%s
    autocmd FileType slang setlocal commentstring=%%s
    autocmd FileType html,xhtml,htmljinja setlocal shiftwidth=2 softtabstop=2

    autocmd FileType perl setlocal keywordprg=perldoc
    autocmd FileType ruby setlocal keywordprg=ri
    autocmd FileType tex nmap <leader><return> :!xelatex % && open %<.pdf &<cr>

    " autocmd BufRead,BufEnter *.asd set filetype=lisp
    " autocmd BufRead,BufEnter *.as set filetype=actionscript
    " autocmd BufRead,BufEnter *.mxml set filetype=mxml
    " autocmd BufRead,BufEnter *.jsxinc set filetype=javascript
    " autocmd BufRead,BufEnter *.nfo set filetype=nfo
    " autocmd BufRead,BufEnter *.ck set filetype=ck
    autocmd BufRead,BufEnter *Xmodmaprc set filetype=xmodmap
    autocmd BufRead,BufEnter *.h set filetype=c
    autocmd BufRead,BufEnter *tmux.conf set filetype=tmux
    autocmd BufRead,BufEnter *.xinitrc set filetype=sh
    autocmd BufRead,BufEnter *.j2 set filetype=htmljinja
    autocmd BufRead,BufEnter */.cache/dwb/edit* set filetype=mail
    autocmd BufRead,BufEnter *adblock* setlocal commentstring=!%s

    autocmd BufReadPost * exe "normal! '\""

    if exists("+omnifunc")
        autocmd Filetype *
                    \   if &omnifunc == "" |
                    \       setlocal omnifunc=syntaxcomplete#Complete |
                    \   endif
    endif
endif

let mapleader = " "

map Q <nop>
" map <C-z> <nop>
nnoremap q: <nop>

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
vmap <leader>T :!titlecase<cr>
vmap <leader>R :!sort<cr>
nmap <leader>H vip:!proto %:r.c<cr>
nmap <leader>z viw1z=
nmap <leader>Z viw2z=
nmap <leader>w :!web_browser =expand("<cword>")<cr><cr><cr>
vmap <leader>w y:!web_browser "<cr><cr>
nmap <leader>[ :cp<cr>
nmap <leader>] :cn<cr>
nmap <leader>} :cnf<cr>
nmap <leader>{ :cpf<cr>
nmap <leader>* :vimgrep =expand("<cword>")<cr> *
nmap <silent> <leader>? :call Define(expand("<cword>"), "en")<cr>
nmap <silent> <leader>. :call YankClip(expand("%"))<cr>
nmap <silent> <leader>/ :call YankClip(expand("%:p"))<cr>
nmap <silent> <leader>gf :call TerminalAt(expand("%:p:h"))<cr>
nmap <silent> <leader>ga :call GetCharName()<cr>
nmap <silent> <leader>= :call TransparentlyExecute("normal gg=G")<cr>
nmap <silent> <leader>C :set cursorline!<cr>
nmap <silent> <F1> :set number!<cr>
nmap <silent> <F2> :set hlsearch!<cr>
nmap <silent> <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" .  synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " fg<" .  synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#") . ">" <cr>
nmap <silent> <F4> :set list!<cr>
nmap <silent> <F5> :setlocal spell! spelllang=en<cr>
nmap <silent> <F6> :setlocal spell! spelllang=fr<cr>
nmap <silent> <F7> :call ToggleWrap()<cr>
nmap <silent> <F8> :call ToggleSyntax()<cr>
nmap <silent> <F9> :call ToggleConceal()<cr>
nmap <silent> <F10> :call ToggleColorColumn()<cr>
nmap <silent> <F11> :call EditSyntax()<cr>
nmap <silent> <F12> :make<cr>
nmap <silent> <leader><Tab> :<C-u>exe "setlocal tabstop=".v:count1<cr>
vmap <silent> <leader>y y:call YankClip()<cr>
nmap <silent> <leader>y yiw:call YankClip()<cr>
nmap <silent> <leader>yy yy:call YankClip()<cr>
vmap <silent> <leader>gy y:call Yank()<cr>
nmap <silent> <leader>gp :call Paste('primary', 'after')<cr>
nmap <silent> <leader>gP :call Paste('primary', 'before')<cr>
nmap <silent> <leader>p :call Paste('clipboard', 'after')<cr>
nmap <silent> <leader>P :call Paste('clipboard', 'before')<cr>
" reverse string
vmap <Leader>i c<C-o>:set ri<cr><C-r>"<esc>:set nori<cr>
nmap <leader>r :source ~/.vimrc<cr>
nmap <leader>e :e ~/.vimrc<cr>
nmap <leader>! :w ! sudo tee %<cr>
xmap <leader>c \\
nmap <leader>c \\
nmap <leader>cc \\\
nmap <leader>cu \\u
nmap <leader>cp vip\\

function! Define(word, lang)
    if (a:lang == "en")
        let response = system("wn " . a:word)
    elseif (lang == "fr")
        let response = system("defr " . a:word)
    endif
    echo response
endfunction

function! TransparentlyExecute(command)
    let w = winsaveview()
    execute a:command
    call winrestview(w)
endfunction

function! EditSyntax()
    let filename = substitute(system("findvimsyntax " . &filetype), "\n$", "", "")
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

function! TerminalAt(path)
    let response = system("urxvtc -cd " . a:path)
    echo response
endfunction

function! Yank(...)
    if a:0
        let response = system("xsel -pi", a:1)
    else
        let response = system("xsel -pi", @")
    endif
endfunction

function! YankClip(...)
    if a:0
        let response = system("xsel -bi", a:1)
    else
        let response = system("xsel -bi", @")
    endif
endfunction

function! Paste(which_buffer, paste_where)
    let at_q = @q
    if a:which_buffer == 'primary' 
        let @q = system("xsel -po")
    elseif a:which_buffer == 'clipboard'
        let @q = system("xsel -bo")
    endif
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
