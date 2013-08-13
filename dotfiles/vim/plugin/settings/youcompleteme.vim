" https://github.com/Valloric/YouCompleteMe/issues/36#issuecomment-15722669
" function! g:UltiSnips_Complete()
" 	call UltiSnips_JumpForwards()
" 	if g:ulti_jump_forwards_res == 0
" 		call UltiSnips_ExpandSnippet()
" 		if g:ulti_expand_res == 0
" 			if pumvisible()
" 				return "\<C-n>"
" 			else
" 				return "\<TAB>"
" 			endif
" 		endif
" 	endif
" 	return ""
" endfunction
" au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

" finish autocomplete with tab
" imap <expr> <CR> pumvisible() ? "\<C-y>" : "<Plug>delimitMateCR"

let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_confirm_extra_conf=0
let g:ycm_cache_omnifunc = 0
set completeopt-=preview

