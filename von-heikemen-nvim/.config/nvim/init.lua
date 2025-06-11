-- Configure diagnostics FIRST (prevents deprecated calls)
vim.diagnostic.config({
  signs = true,  -- Required to avoid warnings
  virtual_text = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Optional: Custom sign icons
local signs = { Error = "", Warn = "", Hint = "", Info = ""}
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

local load = function(mod)
  package.loaded[mod] = nil
  require(mod)
end

load('user.settings')
load('user.commands')
load('user.keymaps')
require('user.plugins')

pcall(vim.cmd.colorscheme, 'tokyonight')
