vim.g.mapleader = " "

require('config.options')
require('config.keybinds')
require('config.autocmds')
require('plugins')
require('lsp.clangd')
require('lsp.luals')
require('lsp.pyright')
require('lsp.texlab')

vim.g.clipboard = {
	name = 'OSC 52',
	copy = {
		['+'] = require('vim.ui.clipboard.osc52').copy,
		['*'] = require('vim.ui.clipboard.osc52').copy,
	},
	paste = {
		['+'] = require('vim.ui.clipboard.osc52').paste,
		['*'] = require('vim.ui.clipboard.osc52').paste,
	},
}
vim.opt.clipboard = "unnamedplus"

vim.g.vimtex_view_method = 'skim'
vim.g.vimtex_view_skim_sync = 1
vim.g.vimtex_view_skim_activate = 1
