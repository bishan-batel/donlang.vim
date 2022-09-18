let b:current_syntax = "donlang"

" Comments
syn region comment start="#" end="$" contains=TODO 
syn region comment start="#:" end=":#" contains=TODO 

syn keyword TODO TODO FIXME XXX NOTE UNIMPLEMENTED

syn keyword keywords if else while for return break continue let var class pub package void pub 
syn keyword operator_words is as 
syn keyword defaultTypes char bool i32 i64 u32 u64 f32 f64 string
syn keyword ptr ptr ref
syn keyword import import from


syn keyword function_word extern def nextgroup=function_name skipwhite
syn match function_name "\v[A-z_]+[A-z0-9_]*" contained


syn match numberLiteral "\v(\d|\.|_)+[fdci]?"

syn region stringLiteral start='"' end='"' display contains=escaped
syn region charLiteral start='\'' end='\'' display contains=escaped
syn match escaped "\\." contained

syn match ident "\v[A-z_]+[A-z0-9_]*"

hi def link keywords Keyword
hi def link operator_words Operator

hi def link function_word Keyword 
hi def link function_name Function

hi def link defaultTypes Type
hi def link ptr Macro
hi def link import Include

hi def link ident Variable
hi def link numberLiteral Number
hi def link stringLiteral String
hi def link escaped SpecialChar

hi def link comment Comment
hi def link TODO Todo
