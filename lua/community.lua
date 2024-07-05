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

  -- Packs
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.nix" },
  { import = "astrocommunity.pack.python-ruff" },

  -- Brag
  { import = "astrocommunity.media.presence-nvim" },
  {
    "andweeb/presence.nvim",
    opts = {},
  },
}
