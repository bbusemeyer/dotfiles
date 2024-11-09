
vim.lsp.set_log_level("debug")
require'lspconfig'.clangd.setup({
  cmd       = { 'clangd', '--all-scopes-completion', '--background-index', '--completion-style=bundled', '--header-insertion=iwyu', '--clang-tidy' };
  filetypes = { 'c', 'h', 'cpp', 'cxx', 'hxx', 'objc', 'objcpp' }
})

--require'lspconfig'.pyright.setup{} -- npm i -g pyright
require'lspconfig'.pylsp.setup{} -- pip install 'python-lsp-server[all]' 
require'lspconfig'.julials.setup{} -- julia --project=~/.julia/environments/nvim-lspconfig -e 'using Pkg; Pkg.add("LanguageServer")'
require'lspconfig'.bashls.setup{} -- npm i -g bash-language-server
require'lspconfig'.jsonls.setup{} -- npm i -g vscode-langservers-extracted
require'lspconfig'.esbonio.setup({ -- Sphinx: pip install esbonio
  init_options = {
    server = { logLevel = "debug" };
    sphinx = { confDir = "build/doc", srcDir = "doc" }
  }
})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  -- Customizing how diagnostics are displayed
  -- See :help on_publish_diagnostics
  signs = { severity_limit = 'Warning' },
  underline = { severity_limit = 'Error' },
  update_in_insert = false,
  severity_sort = true,
  virtual_text = {
    -- Show source in diagnostics (neovim 0.6+ only)
    -- source = "always",  -- Or "if_many"
    -- Only for Errors
    severity_limit = 'Error',
    -- Change prefix/character preceding the diagnostics' virtual text
    prefix = '▎',
  }
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 500
vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float({focusable=false})]]

-- Customizing how diagnostic symbols
local signs = { Error = "⛔", Warn = "⚡", Hint = "💡", Info = "ℹ" }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
