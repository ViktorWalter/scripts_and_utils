colorscheme jellybeans

"set makeprg=cd\ ~/ros_workspace\ &&\ catkin_make\ --pkg\ zedhack
" build 1
map <Leader>m :w\|silent make\|redraw!\|cc<CR>
":w<CR>:call VimuxRunCommand("cd ~/ros_workspace; clear; catkin_make --pkg zedhack")<CR>
" jump to build split
"map <Leader>M :call VimuxInspectRunner()<CR>
" close the vimmux window
map <Leader>l :ccl<CR>
" building ctags
"command! MakeTags :call VimuxRunCommand("generateTags; :q")<CR>
"
"""""""""""""""""""""""""""""""

" customize bookmarks in startify
let g:startify_bookmarks = [
            \ { 'b': '~/.bashrc' },
            \ { 'v': '~/.vimrc' },
            \ { 'p': '~/git/linux-setup/appconfig/vim/startify_quotes.txt' },
            \ ]

colorscheme jellybeans
set background=dark
hi Normal guibg=NONE ctermbg=NONE
hi NonText ctermbg=NONE
au BufNewFile,BufRead *.cl setlocal ft=c

au BufNewFile,BufRead *.tex map <Leader>m :w<CR>:VimtexCompile<CR>
au BufNewFile,BufRead *.tex map <Leader>. :w<CR>:VimtexView<CR>
au BufNewFile,BufRead *.tex setlocal spell spelllang=en_us
let g:tex_comment_nospell= 1
au BufNewFile,BufRead *.tex setlocal fdm=expr
au BufNewFile,BufRead *.tex setlocal foldexpr=vimtex#fold#level(v:lnum)
let g:vimtex_quickfix_latexlog = {
      \ 'overfull' : 0,
      \ 'underfull' : 0,
      \ 'packages' : {
      \   'default' : 0,
      \ },
      \}

set nowrap

set path+=**
set wildmenu
unmap <S-J>
unmap <S-K>

" Write into protected file without prior sudo
cmap w!! w !sudo tee >dev/null %
let @t = '!!toilet -f big'
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v',100)
let g:ycm_path_to_python_interpreter="/usr/bin/python"
