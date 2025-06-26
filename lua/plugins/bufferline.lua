return  {
    "akinsho/bufferline.nvim",
		lazy = true,
		dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
		config = function()
			local bufferline = require("bufferline")
			bufferline.setup {
				keys = {
    		  { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
    		  { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
    		  { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
    		  { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
    		  { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    		  { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    		  { "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    		  { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    		  { "[B", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
    		  { "]B", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
    		},
    		options = {
    		    close_command = function(n) 
							Snacks.bufdelete(n) 
						end,
    		    right_mouse_command = function(n) 
							Snacks.bufdelete(n) 
						end,
						numbers = function(opts)
							return string.format("%s", opts.ordinal)
						end,
						custom_filter = function(buf_number)
            -- filter out filetypes you don't want to see
							if vim.bo[buf_number].filetype ~= "qf" then
								return true
							end
						end,
    		    diagnostics = "nvim_lsp",
						style_preset = bufferline.style_preset.no_italic,
						show_buffer_close_icons = false,
						separator_style = { "", "" },
						always_show_bufferline = true,
						offsets = {
							{
								filetype = "neo-tree",
								text = "Neo-tree",
								highlight = "Directory",
								text_align = "left",
							},
							{
								filetype = "snacks_layout_box",
							},
						},
						style_presets = {
							require("bufferline").style_preset.no_italic,
						},
					},
				}
						-- Fix bufferline when restoring a session
				vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete" }, {
					callback = function()
						vim.schedule(function()
							pcall(nvim_bufferline)
						end)
					end,
				})
		end
  }
