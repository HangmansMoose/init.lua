--return {
--    cmd = {
--        'clangd',
--        '--header-insertion=never'
--    },
--    filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda', 'proto' },
--    root_dir = function(fname)
--        -- Define the directory to exclude
--        local exclude_dir = "G:/Code/HHFollow/handmade" -- Use double backslashes for Windows paths
--        local absolute_fname = vim.fn.expand('%:h')
--
--        -- If the file is in the excluded directory or its subdirectories, return nil
--        --if absolute_fname:find(exclude_dir) then
--        --    return nil
--        --end
--
--        -- Otherwise, use the default root pattern logic
--        return util.root_pattern(
--            '.clangd',
--            '.clang-tidy',
--            '.clang-format',
--            'compile_commands.json',
--            'compile_flags.txt',
--            'configure.ac',
--            '.git'
--        )(fname) or util.path.dirname(fname)
--    end,
--    capabilities = {
--        textDocument = {
--            completion = {
--                editsNearCursor = true,
--            },
--        },
--        offsetEncoding = { 'utf-8', 'utf-16' },
--    },
--    on_init = function(client, init_result)
--        if init_result.offsetEncoding then
--            client.offset_encoding = init_result.offsetEncoding
--        end
--    end,
--}






return {
  cmd = { 'clangd',
	},
  filetypes = { 'c', 'cpp', 'h', 'hpp' },
  root_markers = {
    '.clangd',
    '.clang-tidy',
    '.clang-format',
    'compile_commands.json',
    'compile_flags.txt',
    'configure.ac', -- AutoTools
    '.git',
  },
  capabilities = {
    textDocument = {
      completion = {
        editsNearCursor = true,
      },
    },
    offsetEncoding = { 'utf-8', 'utf-16' },
    },
}
