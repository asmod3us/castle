" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " bind K to grep word under cursor
  nnoremap K :grep! "<C-R><C-W>"<CR>:cw<CR>
endif
