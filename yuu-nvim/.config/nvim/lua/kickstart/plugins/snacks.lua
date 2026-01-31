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
    indent = { enabled = true },
  },
}
