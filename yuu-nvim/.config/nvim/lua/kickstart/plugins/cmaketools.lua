return {
  'Civitasv/cmake-tools.nvim',
  opts = {
    cmake_executor = {
      name = 'quickfix',
      opts = {
        auto_close_when_success = false, -- Should be kept open, so I can read the console
        show = 'always',
      },
    },
  },
}
