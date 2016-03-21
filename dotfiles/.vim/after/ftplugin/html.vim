" vim:foldmethod=marker:fen:
scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

setlocal includeexpr=substitute(v:fname,'^\\/','','')
setlocal path+=;/

let b:undo_ftplugin = 'setlocal includeexpr< path<'

let &cpo = s:save_cpo