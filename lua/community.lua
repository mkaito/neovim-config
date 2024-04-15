-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  { import = "astrocommunity.pack.lua" },

  -- Colors
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.nord-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },

  -- Fancy
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 99,
      disabled_filetypes = { "help" },
    },
  },

  -- Brag
  { import = "astrocommunity.media.presence-nvim" },
  {
    "andweeb/presence.nvim",
    opts = {
      -- log_level = "debug",
    },
  },

  -- Distract
  { import = "astrocommunity.completion.copilot-lua-cmp" },
}
