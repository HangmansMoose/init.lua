local kujukuju = {}

local default_config = {
	italics = false,
	bold = false,
}

kujukuju.setup = function(config)
	kujukuju.config = vim.deepcopy(default_config)
	kujukuju.config = vim.tbl_deep_extend("force", kujukuju.config, config or {})
end

kujukuju.load = function()
	if not kujukuju.config then
		kujukuju.config = vim.deepcopy(default_config)
	end

	if vim.g.colors_name then
		vim.cmd.hi("clear")
		if vim.fn.exists("syntax_on") then
			vim.cmd("syntax reset")
		end
	end
	vim.g.colors_name = "kujukuju"
	vim.o.termguicolors = true

	local colors = {
		bg = "#141824",
		bg_inactive = "#050505",
		fg = "#CBCEBC",
		invalid = "#FF0000",
		string_literal = "#BAE67E",
		multiline_string = "#BAE67E",
		raw_string = "#bae67e",
		char_literal = "#BAE67E",
		identifier = "#CBCEBC",
		note = "#E0AD82",
		number = "#9DD2BB",
		error = "#FF0000",
		warning = "#E4D97D",
		highlight = "#E4D97D",
		comment = "#87919D",
		multiline_comment = "#87919D",
		operation = "#F07178",
		punctuation = "#CBCEBC",
		keyword = "#F07178",
		type = "#FFA759",
		value = "#FF6A27",
		modifier = "#FFA759",
		attribute = "#FFA759",
		enum_variant = "#CBCEBC",
		macro = "#E0AD82",
		func = "#FFCC66",
		builtin_variable = "#9DD2BB",
		builtin_function = "#E0AD82",
		builtin_exception = "#E0AD82",
		directive = "#FFA759",
		directive_modifier = "#FFA759",
		cursor_line_highlight = "#1C2748",
		ui_default = "#CBCEBC",
		ui_dim = "#87919D",
		ui_neutral = "#4C4C4C",
		ui_warning = "#F8AD34",
		ui_warning_dim = "#986032",
		ui_error = "#772222",
		ui_error_bright = "#FF0000",
		ui_success = "#227722",
		cursor = "#26B2B2",
	}

	local config = kujukuju.config

	local ghl = function(groupnames, opts)
		if type(groupnames) == "string" then
			vim.api.nvim_set_hl(0, groupnames, opts)
		else
			for _, group in ipairs(groupnames) do
				vim.api.nvim_set_hl(0, group, opts)
			end
		end
	end

	-- UI
	ghl("Normal", { fg = colors.fg, bg = colors.bg })
	ghl("NormalNC", { fg = colors.fg, bg = colors.bg })
	ghl("StatusLine", { fg = colors.bg, bg = colors.fg }) -- Inverted
	ghl("StatusLineNC", { fg = colors.bg_faded, bg = colors.fg }) -- Inverted, faded
	ghl("LineNr", { fg = colors.fg })
	ghl("cursor", { fg = colors.cursor })
	ghl("CursorLineNr", { fg = colors.fg, bold = config.bold })
	ghl("CursorLine", { fg = colors.cursor_line_highlight })

	-- Syntax
	ghl("Comment", { fg = colors.comment })
	ghl("String", { fg = colors.string_literal })
	ghl("Character", { fg = colors.char_literal })
	ghl("Number", { fg = colors.number })
	ghl("Keyword", { fg = colors.keyword })
	ghl("Statement", { fg = colors.builtin_function })
	ghl("Function", { fg = colors.func })
	ghl("Boolean", { fg = colors.keyword })
	ghl("Type", { fg = colors.type })
	ghl("PreProc", { fg = colors.macro })
	ghl("Identifier", { fg = colors.identifier })
	ghl("Operator", { fg = colors.operation })
	ghl("Delimiter", { fg = colors.punctuation })
	ghl("Error", { fg = colors.error })
	ghl("Exception", { fg = colors.builtin_exception })
	ghl("Property", { fg = colors.value })
	ghl("@variable.builtin", { fg = colors.builtin_variable })
	ghl("@function.builtin", { fg = colors.builtin_function })
	ghl("Visual", { fg = colors.pure_cyan, bg = colors.pure_blue })
end

return kujukuju
