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
syntax keyword inscoreKeyword del set
syntax region  inscoreComment start="!" end="$"
syntax region  inscoreJavascript matchgroup=inscoreJavascriptDelimiters start="<?javascript" keepend end="?>" contains=@Javascript


" Highlights
highlight default link inscoreKeyword              Keyword
highlight default link inscoreComment              Comment
highlight default link inscoreJavascriptDelimiters Macro

let b:current_syntax = "inscore"
