let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/components
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/main.jsx
badd +10 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/Root.jsx
badd +7 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/_Root.scss
badd +13 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/components/Home_trash.jsx
badd +2 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Home_trash.scss
badd +18 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/components/Footer_trash.jsx
badd +10 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/components/Home.jsx
badd +20 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Home.scss
badd +1 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/components/Footer.jsx
badd +1 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Footer.scss
badd +3 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Self.scss
badd +12 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/components/Self.jsx
badd +39 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Footer_trash.scss
badd +20 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Main.scss
badd +31 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/components/Main.jsx
badd +7 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/components/Exp.jsx
badd +0 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Exp.scss
badd +30 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Navbar.scss
badd +0 ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/components/Navbar.jsx
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/main.jsx
argglobal
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
10,17fold
21,23fold
let &fdl = &fdl
let s:l = 14 - ((13 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 14
normal! 027|
tabnext
edit ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/Root.jsx
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
balt ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/_Root.scss
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
9,13fold
7,15fold
let &fdl = &fdl
let s:l = 5 - ((4 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 012|
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/Website\ Challenges/portfolio-website/src/_Root.scss", ":p")) | buffer ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/_Root.scss | else | edit ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/_Root.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/_Root.scss
endif
balt ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/Root.jsx
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1,10fold
let &fdl = &fdl
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
edit ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/components/Home.jsx
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
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
8,10fold
11,13fold
7,14fold
5,16fold
let &fdl = &fdl
let s:l = 12 - ((11 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 09|
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Home.scss", ":p")) | buffer ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Home.scss | else | edit ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Home.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Home.scss
endif
balt ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/components/Home.jsx
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
2,6fold
8,13fold
15,21fold
let &fdl = &fdl
let s:l = 10 - ((9 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 09|
wincmd w
exe 'vert 1resize ' . ((&columns * 67 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 68 + 68) / 136)
tabnext
edit ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/components/Main.jsx
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
balt ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Main.scss
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
10,16fold
17,22fold
9,23fold
7,24fold
25,30fold
6,32fold
4,34fold
let &fdl = &fdl
4
normal! zo
6
normal! zo
7
normal! zo
7
normal! zc
25
normal! zc
let s:l = 31 - ((30 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 31
normal! 049|
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Main.scss", ":p")) | buffer ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Main.scss | else | edit ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Main.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Main.scss
endif
balt ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/components/Home.jsx
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
2,9fold
11,13fold
10,15fold
1,16fold
19,21fold
22,24fold
let &fdl = &fdl
let s:l = 16 - ((15 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 16
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 67 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 68 + 68) / 136)
tabnext
edit ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/components/Navbar.jsx
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
balt ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Navbar.scss
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
29,31fold
32,34fold
35,37fold
28,38fold
43,45fold
46,48fold
49,51fold
42,52fold
12,53fold
11,54fold
7,56fold
let &fdl = &fdl
let s:l = 5 - ((4 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 017|
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Navbar.scss", ":p")) | buffer ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Navbar.scss | else | edit ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Navbar.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Navbar.scss
endif
balt ~/Documents/GitHub/Website\ Challenges/portfolio-website/src/scss/_Exp.scss
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1,7fold
15,22fold
24,29fold
30,35fold
44,46fold
48,51fold
38,53fold
37,54fold
56,58fold
9,59fold
62,64fold
69,71fold
73,78fold
91,93fold
95,97fold
87,98fold
80,99fold
101,103fold
65,104fold
let &fdl = &fdl
let s:l = 24 - ((23 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 24
normal! 07|
wincmd w
exe 'vert 1resize ' . ((&columns * 68 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 67 + 68) / 136)
tabnext 5
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
