return {
  -- Lazy Events
  -- "User AstroFile" - Trigered after opening a file
  -- "VeryLazy" - Triggered after starting Neovim
  -- "BufEnter *.lua" - Triggered after opening a Lua file
  -- "Insert Enter" - Triggered after entering insert mode
  -- "LspAttach" - Triggered after starting LSPs
  --
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "alexghergh/nvim-tmux-navigation",
    event = "VeryLazy",
    config = function()
      local nvim_tmux_nav = require "nvim-tmux-navigation"
      nvim_tmux_nav.setup {
        disable_when_zoomed = true,
        keybindings = {
          left = "<C-h>",
          down = "<C-j>",
          up = "<C-k>",
          right = "<C-l>",
          previous = "<C-\\>",
        },
      }
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require("todo-comments").setup {} end,
    -- opts = {},
    event = "User AstroFile", -- Override Lazy Loading
    cmd = { "TodoQuickFix" },
    keys = {},
  },
}
