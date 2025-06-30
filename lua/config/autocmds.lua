-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})


-- Turn off the LSP when in a specific directory, mainly using this for Handmade Hero
-- as it uses a unity build system which does not play well with clang

local function disable_lsp_in_dir(dir)
  vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      local client = vim.lsp.get_client_by_id(args.data.client_id)
      local bufname = vim.api.nvim_buf_get_name(args.buf)
      if vim.startswith(bufname, vim.fn.expand(dir)) then
        client.stop()
        vim.api.nvim_notify(
          "LSP disabled for " .. bufname,
          vim.log.levels.INFO,
          {}
        )
      end
    end
  })
end

-- Replace this with your target directory (absolute path or use ~)
disable_lsp_in_dir("G:/Code/HHFollow/")
