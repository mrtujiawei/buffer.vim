" buffer 管理
"
" Maintainer:  tujiawei <jiaweitu@marchthepolo.com>
" Last Change: 2023-09-06

if exists('g:buffer_load') && g:buffer_load == 1
  finish
endif

let g:buffer_load = 1

if !exists('g:buffer_auto_command') || g:buffer_auto_command != 0
  " 关闭除当前buffer以外的所有buffer
  command! -n=0 Bonly call buffer#only()
endif
