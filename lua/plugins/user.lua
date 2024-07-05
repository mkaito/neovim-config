-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  "gpanders/editorconfig.nvim",

  {
    "mkaito/barbecue.nvim",
    name = "barbecue",
    -- https://github.com/utilyre/barbecue.nvim/pull/93
    -- version = "*",
    branch = "mkaito/fix-default-icon",
    event = "VeryLazy",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    -- I don't know why this is necessary, but apparently it is.
    opts = {},
  },

  {
    "kylechui/nvim-surround",
    event = "InsertEnter",
    opts = {
      keymaps = {
        visual = "s",
        normal = "s",
      },
    },
  },

  {
    "ethanholz/nvim-lastplace",
    lazy = false,
    opts = {
      lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
      lastplace_ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" },
      lastplace_open_folds = true,
    },
  },

  {
    "klen/nvim-config-local",
    name = "config-local",
    lazy = false,
    opts = {
      config_files = { ".nvimrc.lua", ".nvimrc" },
      lookup_parents = true,
    },
  },

  {
    "tpope/vim-fugitive",
    cmd = "Git",
    version = "*",
  },

  {
    "mihyaeru21/nvim-lspconfig-bundler",
    dependencies = { "neovim/nvim-lspconfig" },
  },

  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "suketa/nvim-dap-ruby",
      name = "dap-ruby",
      opts = {},
      -- config = function() require("dap-ruby").setup() end,
    },
  },

  {
    "tpope/vim-rails",
  },
}
