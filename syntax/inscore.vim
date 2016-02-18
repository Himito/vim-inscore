" Vim syntax file
" Language: INScore
" Maintainer: Jaime Arias <jaime.arias@inria.fr>
" Latest Revision: 17 February 2016

if exists("b:current_syntax")
  finish
endif

syntax clear

" Javascript syntax
syntax include @Javascript syntax/javascript.vim
if exists("b:current_syntax")
  unlet b:current_syntax
endif

" Syntax definitions
syntax keyword inscoreKeyword contained del set new color effect dx dy x y
syntax keyword inscoreKeyword contained fontSize fontWeight

syntax match   inscoreKeywordMatch "\/ITL\s\+\zs\w\+" contains=inscoreKeyword
syntax match   inscoreKeywordMatch "\/ITL\/\w\+\s\+\zs\w\+" contains=inscoreKeyword
syntax match   inscoreKeywordMatch "\/ITL\/\w\+\/\(\w\|\*\)\+\s\+\zs\w\+\ze" contains=inscoreKeyword

syntax keyword inscoreTodo    contained TODO FIXME XXX
syntax region  inscoreComment start="!"                end="$" contains=inscoreTodo
syntax match   inscoreVariable "\$\h\w*"
syntax match   inscoreVariableDefinition "\h\w*\ze\s*[=]"
syntax region  inscoreString  start=+"+ skip=+\\+ end=+"+
syntax region  inscoreString  start=+'+           end=+'+
syntax region  inscoreJavascript matchgroup=inscoreJavascriptDelimiters start="<?javascript" keepend end="?>" contains=@Javascript
syntax match   inscoreNumber  "\<[-+]\?\d\+\>" display
syntax match   inscoreFloat  "[-+]\?\d\+\.\d*" display
syntax match   inscoreSemicolon  ";"


" Highlights
highlight default link inscoreTodo                 Todo
highlight default link inscoreKeyword              Keyword
highlight default link inscoreSetKeyword           Keyword
highlight default link inscoreComment              Comment
highlight default link inscoreString               String
highlight default link inscoreVariable             Operator
highlight default link inscoreVariableDefinition   Identifier
highlight default link inscoreJavascriptDelimiters Macro
highlight default link inscoreNumber               Number
highlight default link inscoreFloat                Float
highlight default link inscoreSemicolon            SpecialChar


let b:current_syntax = "inscore"
