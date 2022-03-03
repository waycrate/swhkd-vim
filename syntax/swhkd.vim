if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "swhkd"

syntax match swhkd_binding "\v^.*$" contains=swhkd_on_release,swhkd_binding_pass,swhkd_inline_comment
syntax match swhkd_on_release "\v^\@" contained
syntax match swhkd_binding_pass "\v^\~" contained
syntax match swhkd_exec "\v^\s+.*" contains=@swhkd_shell
syntax match swhkd_comment "\v#.*$"
syn region swhkd_inline_comment start="#" end="$" contained
syntax match swhkd_import_path "\v(<use>|<import>|<include>|<source>).*" contains=swhkd_import

syntax keyword swhkd_import
    \ use
    \ import
    \ include
    \ source contained

highlight link swhkd_comment Comment
highlight link swhkd_inline_comment Comment
highlight link swhkd_binding Identifier
highlight link swhkd_binding_on_release Conditional
highlight link swhkd_binding_pass Constant
highlight link swhkd_exec Macro
highlight link swhkd_import_path String
highlight link swhkd_import Include

" match shell command
let s:current_syntax = b:current_syntax
unlet b:current_syntax

syntax include @swhkd_shell syntax/sh.vim
let b:current_syntax = s:current_syntax

syntax region shLine matchgroup=swhkd_exec start=/\v^\s+\s/ end=/\v$/ contains=@swhkd_shell
