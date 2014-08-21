" use better matcher for ctrl-p
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
" let g:ctrlp_user_command = 'find %s -type f'
" let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" map of user commands. works like this: if you see ionic.project in the
" folder, use this command, otherwise, if you see .git ... or else use the
" fallback
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['ionic.project', 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ --ignore platforms
      \ -g ""'],
    \ 2: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
    \ 3: ['.hg', 'hg --cwd %s locate -I .'],
  \ },
  \ 'fallback': 'ag %s -i --nocolor --nogroup --hidden
  \ --ignore .git
  \ --ignore .svn
  \ --ignore .hg
  \ --ignore .DS_Store
  \ --ignore "**/*.pyc"
  \ -g ""'
\ }

" do not cache ctrlp files across sessions
let g:ctrlp_clear_cache_on_exit = 0
" ignore these files for ctrlp
" this will exclude them from globbing: set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules|bower_components|platforms)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': '',
	\ }

" no limit on files
let g:ctrlp_max_files=0

" default to filename search
let g:ctrlp_by_filename = 1

