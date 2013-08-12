 if has('unix')
	" let g:syntastic_error_symbol='★'
	" fancy symbols for syntax checker
	let g:syntastic_error_symbol='✗'
	let g:syntastic_style_error_symbol='>'
	let g:syntastic_warning_symbol='⚠'
	let g:syntastic_style_warning_symbol='>'
else
	let g:syntastic_error_symbol='!'
	let g:syntastic_style_error_symbol='>'
	let g:syntastic_warning_symbol='.'
	let g:syntastic_style_warning_symbol='>'
endif

" errors on left side
let g:syntastic_enable_signs=1

" gjslint configuration
" let g:syntastic_gjslint_conf=" --nojsdoc --max_line_length 120"

" disable gjslint for now
let g:syntastic_javascript_checkers=['jshint']

" check files on open
let g:syntastic_check_on_open=1
"
" always stick any detected errors into the loclist
let g:syntastic_always_populate_loc_list=1

