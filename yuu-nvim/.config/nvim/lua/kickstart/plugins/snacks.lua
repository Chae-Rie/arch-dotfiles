return {
  'folke/snacks.nvim',
  priority = 1000, -- Load early for bigfile, quickfile, dashboard
  lazy = false, -- Don't lazy-load (some modules need early startup)
  ---@type snacks.Config
  opts = {
    -- Start with ONLY these essential modules enabled
    bigfile = { enabled = true },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    indent = { enabled = false },
    scope = { enabled = false },
    zen = { enabled = true },
    picker = { enabled = true },
  },
  config = function(_, opts)
    -- Let Snacks apply your config
    require('snacks').setup(opts)

    -- Define a global :ZenMode command
    vim.api.nvim_create_user_command('ZenMode', function()
      Snacks.zen()
    end, { desc = 'Toggle Snacks zen mode' })

    -- Files picker (replacement for e.g. :Telescope find_files)
    vim.keymap.set('n', '<leader>ff', function()
      Snacks.picker.files()
    end, { desc = 'Snacks: find files' })

    -- Live grep
    vim.keymap.set('n', '<leader>fg', function()
      Snacks.picker.grep()
    end, { desc = 'Snacks: live grep' })

    -- Neo-tree-style file explorer toggle
    vim.keymap.set('n', '<leader>e', function()
      Snacks.picker.explorer()
    end, { desc = 'Snacks: explorer' })
  end,
}
