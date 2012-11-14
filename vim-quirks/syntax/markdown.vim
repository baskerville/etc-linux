" YAML Front Matter

unlet b:current_syntax
syn include @Yaml $VIMRUNTIME/syntax/yaml.vim
syn region yamlFrontMatter start="\%^---$" end="^---$" keepend contains=@Yaml
let b:current_syntax='markdown'

" Or:
" syntax match Comment /\%^---\_.\{-}---$/ contains=@Spell
