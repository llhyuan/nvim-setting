let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/routes
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +9 ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/routes/Root.jsx
badd +33 ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/main.jsx
badd +63 ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/components/Navbar.jsx
badd +108 ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Navbar.scss
badd +86 ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/index.scss
badd +2 ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_variables.scss
badd +20 ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/components/Home.jsx
badd +17 ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Home.scss
badd +20 ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/package.json
badd +11 ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/index.html
badd +1 ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/README.md
badd +1 ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/routes/destination.jsx
badd +118 ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Destination.scss
badd +6 ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/routes/Crew.jsx
badd +112 ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Crew.scss
badd +75 ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Technology.scss
badd +0 ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/routes/Technology.jsx
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/routes/Root.jsx
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
5,12fold
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 042|
tabnext
edit ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/main.jsx
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
balt ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/index.scss
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
19,22fold
23,26fold
27,30fold
31,34fold
14,36fold
40,42fold
let &fdl = &fdl
let s:l = 11 - ((10 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 11
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/index.scss", ":p")) | buffer ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/index.scss | else | edit ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/index.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/index.scss
endif
balt ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/main.jsx
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
9,11fold
14,18fold
21,25fold
28,31fold
34,38fold
41,46fold
48,50fold
52,59fold
61,66fold
68,70fold
72,75fold
77,79fold
81,83fold
85,87fold
89,91fold
93,95fold
97,99fold
101,104fold
109,112fold
106,113fold
115,119fold
121,125fold
127,129fold
132,134fold
136,138fold
140,142fold
144,146fold
148,150fold
152,154fold
156,158fold
160,162fold
164,166fold
170,172fold
174,176fold
178,180fold
182,184fold
186,188fold
190,192fold
194,196fold
198,200fold
202,204fold
let &fdl = &fdl
let s:l = 86 - ((18 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 86
normal! 014|
wincmd w
exe 'vert 1resize ' . ((&columns * 67 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 68 + 68) / 136)
tabnext
edit ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/routes/destination.jsx
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
exe 'vert 1resize ' . ((&columns * 80 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 55 + 68) / 136)
argglobal
balt ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/main.jsx
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
10,12fold
9,14fold
16,21fold
23,28fold
30,33fold
34,37fold
29,38fold
15,39fold
8,40fold
6,42fold
let &fdl = &fdl
6
normal! zo
8
normal! zo
15
normal! zo
16
normal! zc
let s:l = 1 - ((0 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Destination.scss", ":p")) | buffer ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Destination.scss | else | edit ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Destination.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Destination.scss
endif
balt ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/routes/destination.jsx
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
11,13fold
16,20fold
24,27fold
21,28fold
15,29fold
34,36fold
45,47fold
48,50fold
40,51fold
38,52fold
58,60fold
62,64fold
54,65fold
30,66fold
3,67fold
77,80fold
82,85fold
86,88fold
81,89fold
91,93fold
94,99fold
90,100fold
70,101fold
117,119fold
121,124fold
114,125fold
131,133fold
138,140fold
135,141fold
145,147fold
143,148fold
127,149fold
105,150fold
let &fdl = &fdl
let s:l = 120 - ((14 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 120
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 80 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 55 + 68) / 136)
tabnext
edit ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/routes/Crew.jsx
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
exe 'vert 1resize ' . ((&columns * 79 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 56 + 68) / 136)
argglobal
balt ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Destination.scss
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
7,9fold
10,12fold
13,18fold
22,26fold
19,27fold
6,28fold
4,30fold
let &fdl = &fdl
let s:l = 2 - ((1 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 064|
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Crew.scss", ":p")) | buffer ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Crew.scss | else | edit ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Crew.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Crew.scss
endif
balt ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/routes/Crew.jsx
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
17,20fold
13,21fold
27,30fold
23,31fold
36,46fold
33,47fold
50,52fold
54,56fold
49,57fold
3,58fold
70,73fold
79,81fold
74,82fold
84,87fold
89,92fold
61,93fold
110,113fold
116,119fold
115,120fold
124,126fold
122,127fold
131,135fold
128,136fold
97,137fold
let &fdl = &fdl
let s:l = 112 - ((29 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 112
normal! 020|
wincmd w
exe 'vert 1resize ' . ((&columns * 79 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 56 + 68) / 136)
tabnext
edit ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/routes/Technology.jsx
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
exe 'vert 1resize ' . ((&columns * 80 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 55 + 68) / 136)
argglobal
balt ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Technology.scss
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
7,9fold
11,15fold
19,25fold
16,26fold
6,27fold
4,29fold
let &fdl = &fdl
let s:l = 13 - ((12 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 13
normal! 027|
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Technology.scss", ":p")) | buffer ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Technology.scss | else | edit ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Technology.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_Technology.scss
endif
balt ~/Documents/GitHub/Website\ Challenges/Space-tourism-website/src/scss/_variables.scss
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
17,20fold
13,21fold
23,25fold
29,39fold
41,44fold
27,45fold
49,51fold
52,54fold
56,58fold
47,59fold
3,60fold
69,74fold
76,79fold
81,83fold
87,90fold
85,91fold
63,92fold
104,106fold
111,113fold
108,114fold
123,127fold
116,128fold
129,133fold
96,134fold
let &fdl = &fdl
63
normal! zo
let s:l = 75 - ((29 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 75
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 80 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 55 + 68) / 136)
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
