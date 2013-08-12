" solarized
let g:solarized_contrast = "high"
set background=dark
colorscheme solarized

" toggle background for solarized
" done manually since i only need it in normal mode
function! SolarizedToggleBg()
	let &background = ( &background == "dark"? "light" : "dark" )
	if exists("g:colors_name")
		exe "colorscheme " . g:colors_name
	endif
endfunction

nmap <leader>t :call SolarizedToggleBg()<CR>

