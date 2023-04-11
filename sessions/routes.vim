let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +100 ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/index.css
badd +37 ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/contacts.js
badd +1 ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/index.html
badd +24 ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/main.jsx
badd +11 ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/root.jsx
badd +12 ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/error-page.jsx
badd +26 ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/contact.jsx
badd +64 ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/edit.jsx
badd +8 ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/destroy.jsx
badd +10 ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/index.jsx
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/root.jsx
argglobal
balt ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/main.jsx
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1,8fold
11,16fold
18,21fold
31,41fold
42,44fold
30,45fold
53,54fold
51,65fold
50,66fold
49,67fold
48,68fold
70,72fold
46,74fold
28,75fold
76,81fold
23,84fold
let &fdl = &fdl
23
normal! zo
28
normal! zo
46
normal! zo
46
normal! zc
let s:l = 29 - ((20 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 29
normal! 020|
tabnext
edit ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/contacts.js
argglobal
balt ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/contact.jsx
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
9,11fold
5,13fold
15,23fold
25,30fold
32,40fold
45,49fold
42,51fold
53,55fold
61,63fold
65,67fold
70,72fold
60,73fold
let &fdl = &fdl
5
normal! zo
let s:l = 5 - ((4 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 023|
tabnext
edit ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/main.jsx
argglobal
balt ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/contact.jsx
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
5,8fold
23,26fold
27,31fold
32,37fold
38,42fold
16,44fold
48,50fold
let &fdl = &fdl
let s:l = 17 - ((16 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 17
normal! 014|
tabnext
edit ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/destroy.jsx
argglobal
balt ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/edit.jsx
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
6,10fold
let &fdl = &fdl
let s:l = 2 - ((1 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
tabnext
edit ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/edit.jsx
argglobal
balt ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/index.jsx
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
4,10fold
18,34fold
35,43fold
44,53fold
54,57fold
62,65fold
60,68fold
58,69fold
17,70fold
12,72fold
let &fdl = &fdl
let s:l = 47 - ((11 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 47
normal! 09|
tabnext 3
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
