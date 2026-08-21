vim.g.mapleader = " "

require('config.options')
require('config.keybinds')
require('config.autocmds')
require('plugins')
require('lsp.clangd')
require('lsp.luals')
require('lsp.pyright')
require('lsp.texlab')

vim.g.clipboard = 'osc52'
vim.g.vimtex_view_method = 'skim'
vim.g.vimtex_view_skim_sync = 1
vim.g.vimtex_view_skim_activate = 1
