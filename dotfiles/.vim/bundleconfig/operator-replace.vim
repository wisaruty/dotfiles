let s:config = vivo#bundleconfig#new()

function! s:config.config()
    Map -remap [nxo] <operator>p  <Plug>(operator-replace)
    " Map -remap [xo] p <Plug>(operator-replace)
endfunction
