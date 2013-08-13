" use better matcher for ctrl-p
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
" let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" do not cache ctrlp files across sessions
let g:ctrlp_clear_cache_on_exit = 1
" ignore these files for ctrlp
" this will exclude them from globbing: set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': '',
	\ }

" no limit on files
let g:ctrlp_max_files=0

" default to filename search
let g:ctrlp_by_filename = 1

