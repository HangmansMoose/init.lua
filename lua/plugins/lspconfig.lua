return {
	-- LSP Plugins
	{
		-- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
		-- used for completion, annotations and signatures of Neovim apis
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				-- Load luvit types when the `vim.uv` word is found
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},
	{
		-- Main LSP Configuration
		"neovim/nvim-lspconfig",
		dependencies = {
			-- Allows extra capabilities provided by blink.cmp
			"saghen/blink.cmp",
		},
		config = function()
		--	--  So, we create new capabilities with blink.cmp, and then broadcast that to the servers.
			local capabilities = require("blink.cmp").get_lsp_capabilities()

		--	-- Enable the following language servers
		--	--  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
		--	--
		--	--  Add any additional override configuration in the following tables. Available keys are:
		--	--  - cmd (table): Override the default command used to start the server
		--	--  - filetypes (table): Override the default list of associated filetypes for the server
		--	--  - capabilities (table): Override fields in capabilities. Can be used to disable certain LSP features.
		--	--  - settings (table): Override the default settings passed when initializing the server.
		--	--        For example, to see the options for `lua_ls`, you could go to: https://luals.github.io/wiki/settings/
        --
        --	Configs placed in lsp/<lsp_name>.lua take precedence over any configs defined here
			--local servers = {
			--	clangd = {
			--		opts = {
			--			cmd = {
			--				"clangd",
			--				"--header-insertion=never",
			--			},
            --            root_directories = {
            --                '.clangd',
            --                '.clangd.lua',
            --                '.clang-tidy',
            --                '.clang-format',
            --                'compile_commands.json',
            --                'compile_flags.txt',
            --                'configure.ac', -- AutoTools
            --                '.git',
            --            }
			--		},
			--	},
			--	rust_analyzer = {},
		--	--	-- ... etc. See `:help lspconfig-all` for a list of all the pre-configured LSPs
		--	--	--
		--	--	-- Some languages (like typescript) have entire language plugins that can be useful:
		--	--	--    https://github.com/pmizio/typescript-tools.nvim
		--	--	--
		--	--	-- But for many setups, the LSP (`ts_ls`) will work just fine
			--	lua_ls = {
			--		-- cmd = {...},
			--		-- filetypes = { ...},
			--		-- capabilities = {},
			--		settings = {
			--			Lua = {
			--				completion = {
			--					callSnippet = "Replace",
			--				},
			--				diagnostics = {
			--					globals = { "vim", "Snacks", "snacks" },
			--					disable = { "missing-fields", "trailing-space" },
			--				},

			--				-- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
			--				-- diagnostics = { disable = { 'missing-fields' } },
			--			},
			--		},
			--	},
			--}
		--	-- Ensure the servers and tools above are installed
		--	--
		--	-- To check the current status of installed tools and/or manually install
		--	-- other tools, you can run
		--	--    :Mason
		--	--
		--	-- You can press `g?` for help in this menu.
		--	--
		--	-- `mason` had to be setup earlier: to configure its options see the
		--	-- `dependencies` table for `nvim-lspconfig` above.
		--	--
		--	-- You can add other tools here that you want Mason to install
		--	-- for you, so that they are available from within Neovim.
        end,
    }
}

