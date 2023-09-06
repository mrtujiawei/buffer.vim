" buffer 管理
"
" Maintainer:  tujiawei <jiaweitu@marchthepolo.com>
" Last Change: 2023-09-06
if exists('g:buffer_load_autoload') && g:buffer_load_autoload == 1
  finish
endif

let g:buffer_load_autoload = 1

" 清理buffer
" 只保留当前光标所在的buffer
func! buffer#only()
  let l:nr = bufnr()
  for l:i in range(1, bufnr('$'))
    if l:i != l:nr && bufexists(l:i)
      try
        exec 'bd ' . l:i
      catch
        " do nothing, just catch
      endtry
    endif
  endfor
endfunc
