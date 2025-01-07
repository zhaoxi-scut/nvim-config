-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set('n', '<C-B>', ":NvimTreeToggle<CR>") -- 打开/关闭 nvim-tree
vim.keymap.set('n', 'tr', ":NvimTreeOpen<CR>") -- 打开 nvim-tree

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {"nvim-tree/nvim-web-devicons"},
  config = function()
    require("nvim-tree").setup {}
  end
}
