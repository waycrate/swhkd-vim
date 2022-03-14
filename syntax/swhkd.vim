if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "swhkd"

syn match swhkd_binding "\v^.*$" contains=swhkd_on_release,swhkd_binding_pass,swhkd_inline_comment,modifier
syn match swhkd_on_release "\v^\@" contained
syn match swhkd_binding_pass "\v^\~" contained
syn match swhkd_exec "\v^\s+.*" contains=@swhkd_shell
syn match swhkd_comment "\v#.*$"
syn region swhkd_inline_comment start="#" end="$" contained
syn match swhkd_import_path "\v^<include>.*" contains=swhkd_import

syn keyword swhkd_import contained
    \ use
    \ import
    \ include
    \ source

syn keyword modifier contained
    \ ctrl
    \ control
    \ super
    \ mod4
    \ alt
    \ mod1
    \ shift

hi link swhkd_comment Comment
hi link swhkd_inline_comment Comment
hi link swhkd_binding Identifier
hi link swhkd_binding_on_release Conditional
hi link swhkd_binding_pass Constant
hi link swhkd_exec Macro
hi link swhkd_import_path String
hi link swhkd_import Include
hi link modifier Type

" match shell command
let s:current_syntax = b:current_syntax
unlet b:current_syntax

syn include @swhkd_shell syntax/sh.vim
let b:current_syntax = s:current_syntax

syn region shLine matchgroup=swhkd_exec start=/\v^\s+\s/ end=/\v$/ contains=@swhkd_shell
