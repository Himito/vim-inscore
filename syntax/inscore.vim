" Vim syntax file
" Language: INScore
" Maintainer: Jaime Arias <jaime.arias@inria.fr>
" Latest Revision: 17 February 2016

if exists("b:current_syntax")
  finish
endif

" Javascript syntax
syntax include @Javascript syntax/javascript.vim
if exists("b:current_syntax")
  unlet b:current_syntax
endif

" Syntax definitions
syntax keyword inscoreKeyword del set new txt color effect svg dx dy x y
syntax keyword inscoreKeyword fontSize fontWeight
syntax region  inscoreComment start="!"                end="$"
syntax match   inscoreVariable "\$\h\w*"
syntax region  inscoreString  start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region  inscoreString  start=/\v'/ skip=/\v\\./ end=/\v'/
syntax region  inscoreJavascript matchgroup=inscoreJavascriptDelimiters start="<?javascript" keepend end="?>" contains=@Javascript


" Highlights
highlight default link inscoreKeyword              Keyword
highlight default link inscoreComment              Comment
highlight default link inscoreString               String
highlight default link inscoreVariable             Operator
highlight default link inscoreJavascriptDelimiters Macro

let b:current_syntax = "inscore"
