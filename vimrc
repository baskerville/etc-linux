set nocompatible
set noerrorbells
set shortmess+=I

set encoding=utf-8
set hidden
set showmode
set showcmd
set wildmenu
set cursorline

set backspace=indent,eol,start
set linebreak
set autoindent
" set smartindent
set tabstop=4
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

" let g:is_posix = 1
let g:xdefaults_no_if0 = 1
" let g:vimsyn_novimhictermerror = 1
set statusline=%F%m%r%h%w\ %=[%Y]\ \*%{&ff}\*\ %l,%v\ %p%%
set laststatus=2
set dictionary+=/usr/share/dict/words
set listchars=eol:¬,tab:▸\ ,trail:•,extends:»,precedes:«,conceal:†,nbsp:␣
" set listchars=eol:a,tab:b\ ,trail:c,extends:d,precedes:e,conceal:f,nbsp:g

set t_Co=256
syntax on
filetype plugin on
filetype indent on

colorscheme raven

call pathogen#infect()

if has("autocmd")
    autocmd BufRead,BufEnter *.asd set filetype=lisp
    autocmd BufRead,BufEnter *.as set filetype=actionscript
    autocmd BufRead,BufEnter *.mxml set filetype=mxml
    autocmd BufRead,BufEnter *.jsxinc set filetype=javascript
    autocmd BufRead,BufEnter .xinitrc set filetype=sh
    autocmd BufRead,BufEnter *tmux.conf set filetype=tmux
    autocmd BufRead,BufEnter *.nfo set filetype=nfo
    autocmd BufRead,BufEnter *keydoublerc set filetype=xmodmap
    autocmd BufRead,BufEnter */.cache/dwb/edit* set filetype=mail
    autocmd FileType mail silent! call CleanMuttHeader()
    autocmd FileType mail setlocal completefunc=CompleteMuttAliases
    autocmd FileType mail setlocal commentstring=>%s
    autocmd BufRead,BufEnter *adblock* setlocal commentstring=!%s
    autocmd FileType xdefaults setlocal commentstring=!%s
    autocmd FileType slrnrc setlocal commentstring=%%s

    if exists("+omnifunc")
        autocmd Filetype *
                    \   if &omnifunc == "" |
                    \       setlocal omnifunc=syntaxcomplete#Complete |
                    \   endif
    endif
endif

let mapleader = " "

map Q <nop>
map <C-z> <nop>
nnoremap q: <nop>

nmap <leader>s :%s/
vmap <leader>s :s/
nmap <leader>S :s/
nmap <leader>o o<esc>k
nmap <leader>O O<esc>j
nmap <leader>= gg=G 
nmap <leader>j :bn<cr>
nmap <leader>k :bp<cr>
nmap <leader>l gt
nmap <leader>h gT
nmap <leader>d :bd<cr>
vmap <leader>t :!titlecase<cr>
nmap <Leader>w :set colorcolumn=80<cr>
nmap <Leader>W :set colorcolumn=0<cr>
" nmap <return> zA
nmap <leader>] :! sr scroogle =expand("<cword>")<cr><cr><cr>
nmap <silent> <leader>? :call Define(expand("<cword>"))<cr>
nmap <silent> <leader>. :call YankClip(expand("%"))<cr>
nmap <silent> <leader>/ :call YankClip(expand("%:p"))<cr>
nmap <silent> <leader>gf :call TerminalAt(expand("%:p:h"))<cr>
nmap <silent> <leader>ga :call GetCharName()<cr>
"nmap <silent> <leader>_ :call Yank(expand("%").":".line("."))<cr>
nmap <silent> <F1>  :set number!<cr>
nmap <silent> <F2>  :set hlsearch!<cr>
nmap <silent> <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" .  synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " fg<" .  synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#") . ">" <cr>
nmap <silent> <F4> :set list!<cr>
nmap <silent> <F5> :setlocal spell! spelllang=en<cr>
nmap <silent> <F6> :setlocal spell! spelllang=fr<cr>
nmap <silent> <F7> :if exists("g:syntax_on")<bar>syntax off<bar>else<bar>syntax enable<bar>endif<cr>
nmap <silent> <F8> :call ToggleConceal()<cr>
vmap <silent> <leader>y y:call YankClip()<cr>
nmap <silent> <leader>yy yy:call YankClip()<cr>
vmap <silent> <leader>gy y:call Yank()<cr>
nmap <silent> <leader>gp :call Paste('primary', 'after')<cr>
nmap <silent> <leader>gP :call Paste('primary', 'before')<cr>
nmap <silent> <leader>p :call Paste('clipboard', 'after')<cr>
nmap <silent> <leader>P :call Paste('clipboard', 'before')<cr>
nmap <leader>r :source ~/.vimrc<cr>
nmap <leader>e :e ~/.vimrc<cr>
nmap <leader>w! :w ! sudo tee %<cr>
xmap <leader>c \\
nmap <leader>c \\
nmap <leader>cc \\\

function! CleanMuttHeader()
    " remove signature
    exec '%s/^>\+ *-- \n\_.*//e'
    " remove unwanted headers
    exec '%s/^\(Reply-To\|Bcc\): \n//e'
    normal! 3j
endfunction

function! Define(word)
    let response = system("wn " . a:word)
    echo response
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
            let query_response = system("~/bin/mutt_alias_query " . a:base)
            let result = split(query_response, '\n')
        endif
        return result
    endif
endfunction
