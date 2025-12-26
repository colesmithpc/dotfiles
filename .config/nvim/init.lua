-- set up package path for lazy.vim plugin
vim.opt.runtimepath:prepend("~/.local/share/nvim/lazy/lazy.nvim/")

-- enable syntax highlighting
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on") -- optional but recommended
vim.opt.termguicolors = true         -- enables true colors

-- colors
vim.opt.background = "dark"

require("lazy").setup({
	 {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        },
    },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "frappe",
				term_colors = true,
				styles = {
					comments = { "italic" },
					functions = { "bold" },
					keywords = { "italic", "bold" },
					strings = {},
					variables = {},
				},
				integrations = {
					treesitter = true,
					native_lsp = {
						enabled = true,
						virtual_text = { 
							errors = "italic",
							hints = "italic",
					},
						underlines = { errors = "underline" },
					},
					telescope = true,
					cmp = true,
				},
			})
			vim.cmd("colorscheme catppuccin")
		end,
	},

	"nvim-telescope/telescope.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
})

-- configurations
vim.opt.guicursor = "n-v-c-i-ci-ve:block,r-cr:hor20,o:hor50"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.wrap = false
vim.opt.hidden = true
