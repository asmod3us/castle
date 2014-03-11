" solarized
let g:solarized_contrast = "high"
set background=dark
colorscheme solarized

" solarized config
if !has('gui_running')
	" Compatibility for Terminal
	let g:solarized_termtrans=1

	if (&t_Co >= 256 || $TERM == 'xterm-256color')
		" Do nothing, it handles itself.
	else
		" Make Solarized use 16 colors for Terminal support
		let g:solarized_termcolors=16
	endif
endif

" toggle background for solarized
" done manually since i only need it in normal mode
function! SolarizedToggleBg()
	let &background = ( &background == "dark" ? "light" : "dark" )
	if (g:solarized_termtrans == 0)
		let g:solarized_termtrans=1
	else
		let g:solarized_termtrans=0
	endif

	if exists("g:colors_name")
		exe "colorscheme " . g:colors_name
	endif
endfunction

nmap <leader>t :call SolarizedToggleBg()<CR>

" adjust indent guides colors for solarized
let g:indent_guides_auto_colors = 1

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=8

