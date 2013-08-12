" automatically open nerdtree if started without args
autocmd vimenter * if !argc() | NERDTree | endif

" From https://github.com/scrooloose/nerdtree/issues/21
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
	if exists("t:NERDTreeBufName")
		if bufwinnr(t:NERDTreeBufName) != -1
			if winnr("$") == 1
				q
			endif
		endif
	endif
endfunction

" hide line numbers in nerd tree
let NERDTreeShowLineNumbers=0

" make nerd tree bigger 
let NERDTreeWinSize=45

" hide help text and bookmarks label
let NERDTreeMinimalUI=1

" use fancy arrows for directories
let NERDTreeDirArrows=1

" show hidden files
let NERDTreeShowHidden=1

" easily open java packages
let NERDTreeCasadeOpenSingleChildDir=1

