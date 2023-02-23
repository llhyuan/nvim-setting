let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/component
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
badd +4 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/main.jsx
badd +10 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/index.scss
badd +3 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/App.jsx
badd +3 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/app.scss
badd +10 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/component/Headline.jsx
badd +6 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/Headline.module.scss
badd +2 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/component/Nav.jsx
badd +1 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/Nav.module.scss
badd +12 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/component/Sidebar.jsx
badd +5 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/Sidebar.scss
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/App.jsx
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
exe 'vert 1resize ' . ((&columns * 67 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 68 + 68) / 136)
argglobal
balt ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/index.scss
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
6
normal! zo
7
normal! zo
let s:l = 9 - ((8 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 9
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/app.scss", ":p")) | buffer ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/app.scss | else | edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/app.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/app.scss
endif
balt ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/App.jsx
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 3 - ((2 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 67 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 68 + 68) / 136)
tabnext
edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/component/Headline.jsx
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
5
normal! zo
6
normal! zo
7
normal! zo
8
normal! zo
10
normal! zo
let s:l = 10 - ((9 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 019|
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/Headline.module.scss", ":p")) | buffer ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/Headline.module.scss | else | edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/Headline.module.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/Headline.module.scss
endif
balt ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/component/Headline.jsx
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 7 - ((6 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 68 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 67 + 68) / 136)
tabnext
edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/component/Nav.jsx
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
exe 'vert 1resize ' . ((&columns * 67 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 68 + 68) / 136)
argglobal
balt ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/component/Headline.jsx
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2 - ((1 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 031|
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/Nav.module.scss", ":p")) | buffer ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/Nav.module.scss | else | edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/Nav.module.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/Nav.module.scss
endif
balt ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/component/Nav.jsx
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 67 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 68 + 68) / 136)
tabnext
edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/component/Sidebar.jsx
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
exe 'vert 1resize ' . ((&columns * 67 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 68 + 68) / 136)
argglobal
balt ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/Nav.module.scss
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2 - ((1 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/Sidebar.scss", ":p")) | buffer ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/Sidebar.scss | else | edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/Sidebar.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/Sidebar.scss
endif
balt ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/Nav.module.scss
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 019|
wincmd w
exe 'vert 1resize ' . ((&columns * 67 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 68 + 68) / 136)
tabnext 4
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
