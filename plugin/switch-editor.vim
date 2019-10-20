function! SwitchEditor(visual)
  let file = expand('%')
  if ! filereadable(file)
    echoerr 'The current buffer has no associated file'
    return
  endif
  if ! filewritable(file)
    echoerr 'The associated file cannot be written'
    return
  endif
  write
  let [anchor_line, anchor_column, cursor_line, cursor_column] = s:selection(a:visual)
  let command = 'vs | terminal   emacs -nw '.'+'.cursor_line.' %'
  let options = has('nvim') ? '' : '++curwin ++close'
  execute command
  startinsert
endfunction

function! s:selection(visual)
  if a:visual
    return [line("'<"), col("'<"), line("'>"), col("'>")]
  else
    return [line('.'), col('.'), line('.'), col('.')]
  endif
endfunction

nnoremap <Plug>(emacs) :call SwitchEditor(0)<CR>
vnoremap <Plug>(emacs) :<C-U>call SwitchEditor(1)<CR>
