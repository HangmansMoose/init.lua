--local util = require 'lspconfig.util'

return {
  default_config = {
    cmd = { 'C:/tools/language_servers/zigls/zls.exe' },
    filetypes = { 'zig', 'zir' },
    root_markers = { 'zls.json', 'build.zig', '.git' },
    workspace_required = false,
    semantic_tokens = "partial"
  },
}
