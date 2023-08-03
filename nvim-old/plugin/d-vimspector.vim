"--------------------------------------------------------------------------
" VIMSCPECTOR
"--------------------------------------------------------------------------

let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]

nmap <leader>dr :VimspectorReset<CR>

" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)
" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

nmap <leader>du <Plug>VimspectorUpFrame
nmap <leader>dd <Plug>VimspectorDownFrame

nmap <leader>dw :VimspectorWatch 

