let s:config = vivo#plugconf#new()

function! s:config.depends()
    return ['quickrun', 'webapi', 'open-browser']
endfunction

function! s:config.config()
    let g:quickrun_config = {
    \   'markdown': {
    \     'type': 'markdown/gfm',
    \     'outputter': 'browser'
    \   }
    \}
endfunction
