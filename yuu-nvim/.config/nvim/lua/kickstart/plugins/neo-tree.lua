-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<leader>e', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['<leader>e'] = 'close_window',
          ['<c-h>'] = 'toggle_hidden',
          ['<a>'] = 'add',
          ['<d>'] = 'delete',
          ['<i>'] = 'show_file_details',
          ['<y>'] = 'copy_to_clipboard', -- marks file to be copied | supports visual selection btw
          ['<p>'] = 'paste_from_clipboard', -- supports visual selection btw
          ['<R>'] = 'refresh', -- usually this happens automatically, but if you make changes somewhere else this will be handy
          ['<t>'] = 'toggle_node', -- toggles the folder
          ['<cr>'] = 'open', -- opens in new tab
          ['<T>'] = 'open_tabnew', -- opens in new tab | 'open' is the base version of this
          ['<S>'] = 'open_split', -- opens the file in horizontal split
          ['<s>'] = 'open_vsplit', -- opens the file in vertical split
        },
      },
    },
  },
}
