if exists("g:autoloaded_bstack") || v:version < 700 || &cp
  finish
endif
let g:autoloaded_bstack = 1

func! bstack#quit_window()
  if winnr('$') > 1
    close
  else
    call s:switch_buffer_or_quit()
  endif
endf

func! s:switch_buffer_or_quit()
  let alt_bufnr = bufnr('#')

  if alt_bufnr != -1
    execute 'buffer' alt_bufnr
  else
    quit
  endif
endf
