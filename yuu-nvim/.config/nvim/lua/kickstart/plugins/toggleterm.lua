local function get_shell()
  if vim.fn.has 'win32' == 1 or vim.fn.has 'win64' == 1 then
    return 'pwsh.exe'
  else
    return '/usr/bin/zsh'
  end
end

return {
  'akinsho/toggleterm.nvim',
  version = '*',
  cmd = 'ToggleTerm',
  build = ':ToggleTerm',
  keys = { { '<c-t>' } },
  opts = {
    size = 20,
    open_mapping = [[<c-t>]],
    direction = 'float',
    terminal_mappings = true,
    hide_numbers = true,
    start_in_insert = true,
    close_on_exit = true,
    persist_size = true,
    shell = get_shell(),
  },
}
