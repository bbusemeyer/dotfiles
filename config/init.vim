set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

call plug#begin()

Plug 'neovim/nvim-lspconfig'

call plug#end()

source $DOTFILES/config/lspsetup.lua

" Additional LSP settings
let g:diagnostics_is_on=1
function! ToggleDiagnostics()
  if g:diagnostics_is_on
    echo "Diagnostics Off"
    let g:diagnostics_is_on=0
    lua vim.diagnostic.disable()
  else
    echo "Diagnostics On"
    let g:diagnostics_is_on=1
    lua vim.diagnostic.enable()
  endif
endfunction
autocmd Syntax c,cpp,python,julia,sh,json nnoremap <buffer> <leader><leader>d :call ToggleDiagnostics()<CR>

function! DiagnosticsSetup()
  if &diff
    lua vim.diagnostic.disable()
  endif
endfunction
autocmd Syntax c,cpp,python,julia,sh,json call DiagnosticsSetup()

autocmd Syntax c,cpp,python,julia,sh,json nnoremap <buffer> <C-]> :lua vim.lsp.buf.definition()<CR>
autocmd Syntax c,cpp,python,julia,sh,json xnoremap <buffer> <C-]> :lua vim.lsp.buf.definition()<CR>
autocmd Syntax c,cpp,python,julia,sh,json nnoremap <buffer> <C-h> :lua vim.lsp.buf.rename()<CR>
autocmd Syntax c,cpp,python,julia,sh,json xnoremap <buffer> <C-h> :lua vim.lsp.buf.rename()<CR>
autocmd Syntax c,cpp,python,julia,sh,json nnoremap <buffer> == :lua vim.lsp.buf.formatting()<CR>
autocmd Syntax c,cpp,python,julia,sh,json xnoremap <buffer> == :lua vim.lsp.buf.range_formatting()<CR>
autocmd Syntax c,cpp,python,julia,sh,json nnoremap <buffer> <leader><leader>f :lua vim.lsp.buf.code_action()<CR>
"
"autocmd Syntax c,cpp nnoremap <Leader>of :ClangdSwitchSourceHeader<cr>

" Other useful lsp commands
"vim.lsp.diagnostic.goto_prev()
"vim.lsp.diagnostic.goto_next()
"vim.lsp.buf.references()
"vim.lsp.buf.range_formatting()
"vim.lsp.buf.range_code_action()
"vim.lsp.buf.hover()
