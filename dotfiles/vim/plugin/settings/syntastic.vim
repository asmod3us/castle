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

if !exists('g:syntastic_html_tidy_ignore_errors')
	let g:syntastic_html_tidy_ignore_errors = []
endif

" Ignore ionic tags in HTML syntax checking
" See http://stackoverflow.com/questions/30366621
" ignore errors about Ionic tags
let g:syntastic_html_tidy_ignore_errors += [
	\ "<ion-",
	\ "discarding unexpected </ion-"]

" Angular's attributes confuse HTML Tidy
let g:syntastic_html_tidy_ignore_errors += [
	\ " proprietary attribute \"ng-"]

" Angular UI-Router attributes confuse HTML Tidy
let g:syntastic_html_tidy_ignore_errors += [
	\ " proprietary attribute \"ui-sref"]

" Angular in particular often makes 'empty' blocks, so ignore
" this error. We might improve how we do this though.
" See also https://github.com/scrooloose/syntastic/wiki/HTML:---tidy
" specifically g:syntastic_html_tidy_empty_tags
let g:syntastic_html_tidy_ignore_errors += ["trimming empty "]

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

" Angular ignores
let g:syntastic_html_tidy_blocklevel_tags += [
	\ 'ng-include',
	\ 'ng-form'
	\ ]

" Use nearest .jshintrc relative to file being linted.
" From https://gist.github.com/ethagnawl/ed4bd3eba6389ffe9430
" Stolen from: https://github.com/rlipscombe/vimrc/blob/master/vimrc#L176
"
function s:find_jshintrc(dir)
    let l:found = globpath(a:dir, '.jshintrc')
    if filereadable(l:found)
        return l:found
    endif

    let l:parent = fnamemodify(a:dir, ':h')
    if l:parent != a:dir
        return s:find_jshintrc(l:parent)
    endif

    return "~/.jshintrc"
endfunction

function UpdateJsHintConf()
    let l:dir = expand('%:p:h')
    let l:jshintrc = s:find_jshintrc(l:dir)
    let g:syntastic_javascript_jshint_args = l:jshintrc
endfunction

au BufEnter * call UpdateJsHintConf()
