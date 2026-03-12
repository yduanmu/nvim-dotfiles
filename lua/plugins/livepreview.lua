return {
  {
    'brianhuster/live-preview.nvim',
    dependencies = {
      'echasnovski/mini.pick',
    },
    config = function()
      require('livepreview').setup({
      })
    end,
  },
}
