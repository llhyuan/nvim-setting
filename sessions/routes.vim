let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes
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
badd +26 ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/main.jsx
badd +76 ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/root.jsx
badd +12 ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/error-page.jsx
badd +40 ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/contact.jsx
badd +8 ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/edit.jsx
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/root.jsx
argglobal
balt ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/main.jsx
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
23
normal! zo
26
normal! zo
27
normal! zo
28
normal! zo
30
normal! zo
31
normal! zo
46
normal! zo
47
normal! zo
48
normal! zo
49
normal! zo
50
normal! zo
51
normal! zo
56
normal! zo
57
normal! zo
69
normal! zo
78
normal! zo
78
normal! zo
let s:l = 72 - ((20 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 72
normal! 012|
tabnext
edit ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/contacts.js
argglobal
balt ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/contact.jsx
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 32 - ((21 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 32
normal! 017|
tabnext
edit ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/main.jsx
argglobal
balt ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/contact.jsx
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
11
normal! zo
12
normal! zo
18
normal! zo
34
normal! zo
let s:l = 20 - ((19 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 20
normal! 029|
tabnext
edit ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/routes/edit.jsx
argglobal
balt ~/Documents/GitHub/frontend-mentor-challenges/react-router-example/src/contacts.js
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
13
normal! zo
16
normal! zo
17
normal! zo
18
normal! zo
35
normal! zo
44
normal! zo
54
normal! zo
let s:l = 20 - ((19 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 20
normal! 021|
tabnext 1
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
