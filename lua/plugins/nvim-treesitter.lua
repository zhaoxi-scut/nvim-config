return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local configs = require('nvim-treesitter.configs')

    configs.setup({
      ensure_installed = {'c', 'cpp', 'lua', 'vim', 'javascript', 'html', 'markdown', 'markdown_inline'},
      sync_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = {'rmvlpara'}
      },
      indent = {
        enable = true
      },

      rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = 1000,
        colors = {"#d79921", "#b16286", "#458588"}
      }
    })
  end
}
