-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "auto", -- sets vim.opt.signcolumn to auto
        wrap = false, -- sets vim.opt.wrap
        showtabline = 0,
        termguicolors = true,
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<Leader>b"] = { desc = "Buffers" },

        -- second key is the lefthand side of the map
        [";"] = { ":", desc = "Command mode" },

        -- tables with the `name` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
        ["<leader><leader>"] = {
          function() require("telescope.builtin").buffers { sort_mru = true } end,
          desc = "Buffer list",
        },
        ["<leader>fb"] = {
          function() require("telescope.builtin").buffers { sort_mru = true } end,
          desc = "Buffer list",
        },
        ["<leader><TAB>"] = { "<cmd>b #<cr>", desc = "Edit alternate file" },

        -- The default binding hides hidden files, but I want to see them
        ["<leader>ff"] = {
          function() require("telescope.builtin").find_files { hidden = true } end,
          desc = "Find files",
        },
        -- TODO: Filter by project?
        ["<Leader>fO"] = {
          function() require("telescope.builtin").oldfiles { only_cwd = true } end,
          desc = "Find history",
        },

        -- Resume last Telescope session
        ["<leader>f<space>"] = {
          function() require("telescope.builtin").resume() end,
          desc = "Resume last Telescope search",
        },

        -- Find usages of symbol under cursor
        ["gu"] = {
          function() require("telescope.builtin").lsp_references() end,
          desc = "Find usages",
        },
      },
      v = {
        [";"] = { ":", desc = "Command mode" },
      },
      t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
      },
    },
  },
}
