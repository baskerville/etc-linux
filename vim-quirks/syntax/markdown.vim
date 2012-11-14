" YAML Front Matter

unlet b:current_syntax
syn include @Yaml $VIMRUNTIME/syntax/yaml.vim
syn region YamlComment start="\%^---$" end="^---$" keepend contains=@Yaml

hi def link YamlComment Comment

" Or:
" syntax match Comment /\%^---\_.\{-}---$/ contains=@Spell
