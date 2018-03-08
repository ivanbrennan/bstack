if exists("g:loaded_bstack") || v:version < 700 || &cp
  finish
endif
let g:loaded_bstack = 1

func! bstack#quit_window()
  if winnr('$') > 1
    close
  else
    call s:switch_buffer_or_quit()
  endif
endf

func! s:switch_buffer_or_quit()
  let l:alt_bufnr = bufnr('#')

  if l:alt_bufnr != -1
    execute 'buffer' l:alt_bufnr
  else
    quit
  endif
endf
