let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +11 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/index.html
badd +9 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/main.jsx
badd +13 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/index.scss
badd +6 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/App.jsx
badd +4 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/App.scss
argglobal
%argdel
edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/App.scss
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 68 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 67 + 68) / 136)
argglobal
balt ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/App.jsx
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 4 - ((3 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 025|
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/App.jsx", ":p")) | buffer ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/App.jsx | else | edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/App.jsx | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/App.jsx
endif
balt ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/App.scss
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
5
normal! zo
6
normal! zo
let s:l = 7 - ((6 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 07|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 68 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 67 + 68) / 136)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
