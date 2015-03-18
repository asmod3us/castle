" tmux navigator config
let g:tmux_navigator_no_mappings = 1
nmap <silent> <C-w>h :TmuxNavigateLeft<cr>
nmap <silent> <C-w>j :TmuxNavigateDown<cr>
nmap <silent> <C-w>k :TmuxNavigateUp<cr>
nmap <silent> <C-w>l :TmuxNavigateRight<cr>

" easier window navigation with ctrl pressed
nmap <silent> <C-w><C-h> :TmuxNavigateLeft<cr>
nmap <silent> <C-w><C-j> :TmuxNavigateDown<cr>
nmap <silent> <C-w><C-k> :TmuxNavigateUp<cr>
nmap <silent> <C-w><C-l> :TmuxNavigateRight<cr>

