"--------------------------------------------------------------------------
" Bookmarks
"--------------------------------------------------------------------------

let g:bookmark_no_default_key_mappings = 1
let g:bookmark_auto_save = 1
let g:bookmark_auto_save_file = '.bookmarks'

nmap <Leader><Leader> <Plug>BookmarkToggle
nmap <Leader><Leader>a <Plug>BookmarkAnnotate
nmap <Leader><Leader>l <Plug>BookmarkShowAll
nmap <Leader><Leader>] <Plug>BookmarkNext
nmap <Leader><Leader>[ <Plug>BookmarkPrev
nmap <Leader>bmr <Plug>BookmarkClear
nmap <Leader>bmc <Plug>BookmarkClearAll
" nmap <Leader>bmu <Plug>BookmarkMoveUp
" nmap <Leader>bmd <Plug>BookmarkMoveDown
" nmap <Leader>g <Plug>BookmarkMoveToLine
