" solarized
let g:solarized_contrast = "normal"
set background=dark
colorscheme solarized

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
	if(g:solarized_termtrans == 1)
		hi Normal ctermbg=15
	else
		hi Visual ctermfg=15 ctermbg=14
	endif

endfunction

nmap <leader>t :call SolarizedToggleBg()<CR>

" adjust indent guides colors for solarized
let g:indent_guides_auto_colors = 1
hi Visual ctermfg=15 ctermbg=14

" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=8

