let b:current_syntax = "donlang"

" Comments
syn region comment start="#" end="$" contains=TODO 
syn region comment start="#=" end="=#" contains=TODO 

syn keyword TODO TODO FIXME XXX NOTE UNIMPLEMENTED

syn keyword keywords def extern if else while for return break continue
syn keyword defaultTypes char bool i32 i64 u32 u64 f32 f64 ptr

syn match numberLiteral "\v[\d|\.]+[fdci]?"

syn region stringLiteral start='"' end='"' display contains=escaped
syn region charLiteral start='\'' end='\'' display contains=escaped
syn match escaped "\\." contained

hi def link loops Repeat 
hi def link conditional Conditional
hi def link keywords Keyword
hi def link sizeof Operator
hi def link defaultTypes Type

hi def link numberLiteral Number
hi def link stringLiteral String
hi def link escaped SpecialChar

hi def link comment Comment
hi def link TODO Todo
