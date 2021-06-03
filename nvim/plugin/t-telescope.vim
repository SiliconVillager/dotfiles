lua require("tomas")

"--------------------------------------------------------------------------
" Telescope
"--------------------------------------------------------------------------

nnoremap <leader>tf <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>tgr <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>tgrw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
" nnoremap <leader>fgw :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>tb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>tdf :lua require('tomas.telescope').search_dotfiles()<CR>
nnoremap <leader>tw :lua require('tomas.telescope').wallpaper_selector()<CR>

" Git stuff
nnoremap <leader>tg :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>tgb :lua require('tomas.telescope').git_branches()<CR>
nnoremap <leader>tgs :lua require('telescope.builtin').git_status()<CR>
nnoremap <leader>tgw :lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
nnoremap <leader>tgwc :lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>
