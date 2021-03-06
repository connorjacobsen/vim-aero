" Vim syntax file
" Language:     Aero
" Maintainer:   Connor Jacobsen <connor@opendoor.com>

if exists("b:current_syntax")
  finish
endif

syntax keyword aeroRepeat         for while in next
syntax keyword aeroConditional    if else cond
syntax keyword aeroKeyword        let fn
syntax keyword aeroKeyword        and or
syntax keyword aeroKeyword        return
syntax keyword aeroType           type
syntax keyword aeroStruct         struct
syntax keyword aeroTrait          trait
syntax keyword aeroImport         import
syntax keyword aeroLabel          case when

syntax keyword aeroBoolean true false
syntax keyword aeroBuiltinTypes bool char int float string

syntax keyword aeroBuiltinFunction print assert

syntax match aeroOperator   '!=\|!'
syntax match aeroOperator   '==\|='
syntax match aeroOperator   '>>\|>=\|>'
syntax match aeroOperator   '<<\|<=\|<'
syntax match aeroOperator   '+=\|+'
syntax match aeroOperator   '-=\|-'
syntax match aeroOperator   '*=\|*'
syntax match aeroOperator   '/=\|/'
syntax match aeroOperator   '%=\|%'
syntax match aeroOperator   '^=\|^'
syntax match aeroOperator   '&&\|&=\|&'
syntax match aeroOperator   '||\||=\||'
syntax match aeroOperator   '|>'

syntax match aeroNumber     "\v[0-9][0-9_]*"
syntax match aeroFloat      "\v[0-9][0-9_]*\.[0-9][0-9_]*"

syntax match aeroFuncCall   "\w\(\w\)*("he=e-1,me=e-1

syntax region aeroString start=/\v"/ skip=/\v\\./ end=/\v"/

syntax region   aeroComment   start="\v#" end="\v$" contains=aeroTodo
syntax region   aeroComment   start="#\+\[" end="\]#\+" contains=aeroTodo
syntax keyword  aeroTodo      TODO FIXME XXX contained

hi link aeroRepeat          Repeat
hi link aeroKeyword         Keyword
hi link aeroType            Keyword
hi link aeroConditional     Keyword
hi link aeroLabel           Label
hi link aeroImport          Include
hi link aeroTrait           Typedef
hi link aeroType            Typedef
hi link aeroStruct          Structure
hi link aeroBoolean         Boolean
hi link aeroOperator        Operator
hi link aeroNumber          Number
hi link aeroFloat           Float
hi link aeroBuiltinTypes    Type
hi link aeroBuiltinFunction Function
hi link aeroBuiltinFunction Function
hi link aeroComment         Comment
hi link aeroString          String
hi link aeroFuncCall        Function

let b:current_syntax = "aero"
