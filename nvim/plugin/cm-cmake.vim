"--------------------------------------------------------------------------
"" CMAKE
"--------------------------------------------------------------------------

let g:cmake_build_dir_location = "./build"
let g:cmake_default_config = "Debug"

" Utilize all threads
let g:cmake_build_options = ["-- -j $CMAKE_NUM_THREADS"]

" Extremely important - generates info for clang
let g:cmake_link_compile_commands = 1

nmap <leader>cmg :CMakeGenerate<cr>
nmap <leader>cmb :CMakeBuild<cr>
nmap <leader>cmc :CMakeClean<cr>
nmap <leader>cmx :CMakeClose<cr>

