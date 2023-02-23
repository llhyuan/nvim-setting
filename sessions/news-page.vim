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
badd +4 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/index.scss
badd +14 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/App.jsx
badd +5 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_app.scss
badd +2 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/component/Headline.jsx
badd +6 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Headline.scss
badd +2 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/component/Nav.jsx
badd +9 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Nav.scss
badd +2 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/component/Sidebar.jsx
badd +15 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Sidebar.scss
badd +2 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_variables.scss
badd +32 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/component/Top-story.jsx
badd +19 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Top-story.scss
badd +1 ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/assets/images/image-retro-pcs.jpg
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
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
exe 'vert 1resize ' . ((&columns * 68 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 67 + 68) / 136)
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
8
normal! zo
9
normal! zo
10
normal! zo
let s:l = 14 - ((13 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 14
normal! 012|
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_app.scss", ":p")) | buffer ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_app.scss | else | edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_app.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_app.scss
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
4
normal! zo
let s:l = 8 - ((7 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 012|
wincmd w
exe 'vert 1resize ' . ((&columns * 68 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 67 + 68) / 136)
tabnext
edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/component/Top-story.jsx
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
balt ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Top-story.scss
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
27
normal! zo
28
normal! zo
29
normal! zo
let s:l = 29 - ((27 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 29
normal! 09|
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Top-story.scss", ":p")) | buffer ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Top-story.scss | else | edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Top-story.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Top-story.scss
endif
balt ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/component/Top-story.jsx
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
4
normal! zo
10
normal! zo
let s:l = 19 - ((11 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 19
normal! 016|
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
exe 'vert 1resize ' . ((&columns * 67 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 68 + 68) / 136)
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
6
normal! zo
7
normal! zo
9
normal! zo
let s:l = 2 - ((1 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 031|
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Headline.scss", ":p")) | buffer ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Headline.scss | else | edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Headline.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Headline.scss
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
3
normal! zo
let s:l = 6 - ((5 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 033|
wincmd w
exe 'vert 1resize ' . ((&columns * 67 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 68 + 68) / 136)
tabnext
edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_variables.scss
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
balt ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Headline.scss
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 5 - ((4 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 019|
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/index.scss", ":p")) | buffer ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/index.scss | else | edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/index.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/index.scss
endif
balt ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_variables.scss
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 20 - ((19 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 20
normal! 033|
wincmd w
exe 'vert 1resize ' . ((&columns * 67 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 68 + 68) / 136)
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
5
normal! zo
6
normal! zo
6
normal! zo
7
normal! zo
let s:l = 2 - ((1 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 025|
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Nav.scss", ":p")) | buffer ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Nav.scss | else | edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Nav.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Nav.scss
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
4
normal! zo
let s:l = 9 - ((8 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 9
normal! 028|
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
balt ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Nav.scss
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
6
normal! zo
7
normal! zo
9
normal! zo
let s:l = 2 - ((1 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Sidebar.scss", ":p")) | buffer ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Sidebar.scss | else | edit ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Sidebar.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/scss/_Sidebar.scss
endif
balt ~/Documents/GitHub/frontend-mentor-challenges/news-homepage/src/component/Sidebar.jsx
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
4
normal! zo
let s:l = 15 - ((14 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 15
normal! 020|
wincmd w
exe 'vert 1resize ' . ((&columns * 67 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 68 + 68) / 136)
tabnext 2
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
