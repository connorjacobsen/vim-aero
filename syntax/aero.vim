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

syntax match aeroComment    "\v#.*$"

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

syntax region aeroString start=/\v"/ skip=/\v\\./ end=/\v"/

hi link aeroRepeat          Repeat
hi link aeroKeyword         Keyword
hi link aeroType            Keyword
hi link aeroConfitional     Conditional
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

let b:current_syntax = "aero"
