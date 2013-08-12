" Plugin key-mappings.
imap <C-k> <Plug>(neosnippet_jump)
smap <C-k> <Plug>(neosnippet_jump)
xmap <C-k> <Plug>(neosnippet_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable() ?
\ "\<Plug>(neosnippet_expand)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable() ?
\ "\<Plug>(neosnippet_expand)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
	set conceallevel=2 concealcursor=i
endif

let g:neosnippet#snippets_directory = '~/.vim/snippets'
let g:neosnippet#enable_snipmate_compatibility = 1
