scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim


let s:currentfuncinfo = vivo#plugconf#new()

" Configuration for current-func-info.
function! s:currentfuncinfo.config()
    augroup vimrc-cfi
        autocmd!
        autocmd VimEnter *
        \   let &statusline .= '%( | %{cfi#format("%s()", "")}%)' |
        \   autocmd! vimrc-cfi
    augroup END

    let g:cfi_javascript_show = {
    \   'assignment': 0,
    \   'variable_name': 0,
    \   'function_type': 0,
    \   'function_name': 1,
    \   'function_arguments': 1,
    \   'function_body': 0,
    \}
endfunction

" Plugin dependencies for current-func-info.
function! s:currentfuncinfo.depends()
    return []
endfunction

" Recommended plugin dependencies for current-func-info.
" If the plugins are not installed, vivo shows recommended plugins.
function! s:currentfuncinfo.recommends()
    return []
endfunction

" External commands dependencies for current-func-info.
" (e.g.: curl)
function! s:currentfuncinfo.depends_commands()
    return []
endfunction

" Recommended external commands dependencies for current-func-info.
" If the plugins are not installed, vivo shows recommended commands.
function! s:currentfuncinfo.recommends_commands()
    return []
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
