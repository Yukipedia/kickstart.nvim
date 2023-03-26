return {
  "natecraddock/workspaces.nvim",
  dependencies = {
    "rmagatti/auto-session"
  },
  config = function ()
    require("workspaces").setup{
      hooks = {
        open = function ()
          require("auto-session").AutoRestoreSession(nil)
        end
      }
    }
  end
}
