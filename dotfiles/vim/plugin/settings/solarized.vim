" solarized
let g:solarized_contrast = "normal"
set background=light
let g:colors_contrast="high"
set termguicolors

colorscheme solarized8_light_high

" toggle background for solarized
function! SolarizedToggleBg()
  let &background = ( &background == "dark" ? "light" : "dark" )
  exe "colorscheme solarized8_" . &background . "_" . g:colors_contrast
endfunction

nmap <leader>t :call SolarizedToggleBg()<CR>

" adjust indent guides colors for solarized
let g:indent_guides_auto_colors = 1
hi Visual ctermfg=14 ctermbg=15
hi Search ctermfg=5 ctermbg=15
hi MatchTag ctermfg=15 ctermbg=5
hi MatchParen ctermfg=15 ctermbg=5

" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=8
