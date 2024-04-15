---@type LazySpec
return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    local actions = require "telescope.actions"

    -- Do not search in .git/, remove leading indentation from results
    local telescopeConfig = require "telescope.config"
    local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }
    table.insert(vimgrep_arguments, "--hidden")
    table.insert(vimgrep_arguments, "--trim")
    table.insert(vimgrep_arguments, "--glob")
    table.insert(vimgrep_arguments, "!**/.git/*")

    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      layout_strategy = "vertical",
      layout_config = {
        height = 0.85,
        width = 0.9,
      },
      mappings = {
        i = {
          ["<C-Space>"] = actions.to_fuzzy_refine,
        },
      },
      vimgrep_arguments = vimgrep_arguments,
    })

    opts.pickers = vim.tbl_deep_extend("force", opts.pickers or {}, {
      find_files = {
        -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
        find_command = {
          "rg",
          "--files",
          "--hidden",
          "--glob",
          "!**/.git/*",
        },
      },
      buffers = {
        mappings = {
          i = {
            ["<C-d>"] = actions.delete_buffer,
          },
        },
      },
    })

    return opts
  end,
}
