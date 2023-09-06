# buffer

buffer 管理

```vimscript
" 禁止加载插件
let g:buffer_load = 1

" 禁止添加 command
let g:buffer_auto_command = 0
```

命令

```vimscript
" 关闭当前buffer，不关闭窗口
:BClose

" 保留当前 buffer，关闭其他所有 buffer
:Bonly
```
