scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim


let s:fugitive = vivacious#bundleconfig#new()

" Configuration for fugitive.
function! s:fugitive.config()
    augroup vimrc-fugitive
        autocmd!
        autocmd VimEnter *
        \   let &statusline .= '%( | %{fugitive#statusline()}%)' |
        \   autocmd! vimrc-fugitive
    augroup END
endfunction

" Plugin dependencies for fugitive.
function! s:fugitive.depends()
    return []
endfunction

" Recommended plugin dependencies for fugitive.
" If the plugins are not installed, vivacious shows recommended plugins.
function! s:fugitive.recommends()
    return []
endfunction

" External commands dependencies for fugitive.
" (e.g.: curl)
function! s:fugitive.depends_commands()
    return []
endfunction

" Recommended external commands dependencies for fugitive.
" If the plugins are not installed, vivacious shows recommended commands.
function! s:fugitive.recommends_commands()
    return []
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo