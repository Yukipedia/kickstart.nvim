vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup({
      source_selector = {
        winbar = true,
        statusline = false
      },
      window = {
        width = 30
      },
      auto_clean_after_session_restore = true
    })
    vim.cmd([[nnoremap \ :Neotree toggle<cr>]])
  end,
}
