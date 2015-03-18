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
let g:syntastic_javascript_checkers=['eslint', 'jshint']

" check files on open
let g:syntastic_check_on_open=1
"
" always stick any detected errors into the loclist
let g:syntastic_always_populate_loc_list=1

" use multiple checkers if defined
let g:syntastic_aggregate_errors=1

let g:syntastic_html_tidy_blocklevel_tags = [
	\ 'ion-header-bar',
	\ 'ion-content',
	\ 'ion-footer-bar',
	\ 'ion-checkbox',
	\ 'ion-radio',
	\ 'ion-toggle  ',
	\ 'ion-refresher ',
	\ 'ion-pane  ',
	\ 'ion-list',
	\ 'ion-item',
	\ 'ion-option-button',
	\ 'ion-delete-button',
	\ 'ion-reorder-button',
	\ 'ion-modal-view',
	\ 'ion-nav-view',
	\ 'ion-view',
	\ 'ion-nav-bar ',
	\ 'ion-nav-back-button',
	\ 'ion-nav-buttons',
	\ 'ion-nav-title',
	\ 'ion-popover-view',
	\ 'ion-scroll',
	\ 'ion-side-menus',
	\ 'ion-side-menu-content',
	\ 'ion-side-menu',
	\ 'ion-slide-box',
	\ 'ion-slide',
	\ 'ion-slide-pager ',
	\ 'ion-spinner',
	\ 'ion-tabs',
	\ 'ion-tab',
\]

