return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  -- ColorSchemes
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.nightfox" },
  { import = "astrocommunity.colorscheme.oxocarbon" },

  -- Language Support
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.yaml" },

  -- Markdown
  { import = "astrocommunity.markdown-and-latex.glow-nvim" },

  -- Completion
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  {
    "copilot.lua",
    opts = {
      suggestion = {
        keymap = {},
      },
    },
  },
}
