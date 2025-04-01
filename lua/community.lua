-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- Colors
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },

  -- Packs
  -- { import = "astrocommunity.pack.cs" },
  -- { import = "astrocommunity.pack.docker" },
  -- { import = "astrocommunity.pack.json" },
  -- { import = "astrocommunity.pack.lua" },
  -- { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.pack.proto" }, # Needs update to remove deprecated tool entry
  -- { import = "astrocommunity.pack.python-ruff" },
  -- { import = "astrocommunity.pack.rust" },
  -- { import = "astrocommunity.pack.ruby" }, # You REALLY want to install your Ruby tools using Bundler
  -- { import = "astrocommunity.pack.terraform" },
  -- { import = "astrocommunity.pack.toml" },
  -- { import = "astrocommunity.pack.typescript" },
  -- { import = "astrocommunity.pack.yaml" },
  -- { import = "astrocommunity.pack.zig" },
}
