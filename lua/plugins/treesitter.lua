return {
	{ -- Highlight, edit, and navigate code
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		main = "nvim-treesitter.configs", -- Sets main module to use for opts
		-- [[ Configure Treesitter ]] See `:help nvim-treesitter
		config = function()
			require("nvim-treesitter.install").compilers = { "clang", "cl", "C:/tools/w64devkit/bin/gcc.exe" }
		end,
		opts = {
			-- Autoinstall languages that are not installed
			install = {
				compilers = { "cl", "clang", "gcc" },
			},
			ensure_installed = {
				"python",
				"lua",
				"yaml",
				"toml",
				"json",
				"javascript",
				"c",
				"cpp",
				"c_sharp",
				"rust",
				"zig",
				"markdown",
			},
			auto_install = true,
			highlight = {
				enable = false,
			},
		-- There are additional nvim-treesitter modules that you can use to interact
		-- with nvim-treesitter. You should go explore a few and see what interests you:
		--
		--    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
		--    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
		--    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
    }
	},
}
