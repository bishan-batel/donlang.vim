let b:current_syntax = "donlang"

" Comments
syn region comment start="#" end="$" contains=TODO 
syn region comment start="#:" end=":#" contains=TODO 

syn keyword TODO TODO FIXME XXX NOTE UNIMPLEMENTED

syn match numberLiteral "\v(0x|0b)?\d(\d|\.|_)*[fdci]?"

syn region stringLiteral start='"' end='"' display contains=escaped
syn region charLiteral start='\'' end='\'' display contains=escaped
syn match escaped "\\." contained
syn keyword boolean true false

syn match ident "\v[A-z_]+[A-z0-9_]*"

syn keyword keywords return break continue let var class pub package void pub unsafe 
syn keyword control_conditional if else then match default 
syn keyword control_loop while for in

syn keyword operator_words is isnt as and or not sizeof 
syn keyword defaultTypes char bool i32 i64 u32 u64 f32 f64 string syn keyword ptr ref deref
syn keyword import import from

syn match operator "\v[\-\+\=\*\^\%\!\.]"
syn match operator "=>"

syn keyword function_word extern def nextgroup=function_name skipwhite
syn match function_name "\v[A-z_]+[A-z0-9_]*" contained nextgroup=function_args
syn region function_args start="(" end=")" transparent contained contains=function_arg, defaultTypes, function_arg_keywords
syn keyword function_arg_keywords  varargs contained 
syn match function_arg "\v[A-z_]+[A-z0-9_]*" contained  

syn match function_call "\v[A-z_]+[A-z0-9_]*\s*\(" transparent contains=function_call_name
syn match function_call_name "\v[A-z_]+[A-z0-9_]*" contained


syn keyword class_word data class nextgroup=class_name skipwhite
syn match class_name "\v[A-z_]+[A-z0-9_]*" contained

syn keyword class_constructor constructor 
syn keyword class_var self

hi def link keywords Keyword
hi def link defaultTypes Type
hi def link control_conditional Conditional
hi def link control_loop Repeat

hi def link operator_words Operator
hi def link operator Operator


hi def link function_word Keyword 
hi def link function_name Function
hi def link function_call_name Function
hi def link function_arg Identifier
hi def link function_arg_keywords Keyword

hi def link class_constructor Keyword
hi def link class_word Keyword
hi def link class_name Structure
hi def link class_var Identifier

hi def link ptr Macro
hi def link import Include

hi def link numberLiteral Number
hi def link stringLiteral String
hi def link escaped SpecialChar

hi def link boolean Boolean

hi def link comment Comment
hi def link TODO Todo
