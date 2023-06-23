local set = vim.keymap.set

return {
  "nvim-telescope/telescope.nvim",

  dependencies = {
    'nvim-lua/plenary.nvim',
    "fannheyward/telescope-coc.nvim"
  },

  config = function()
    local builtin = require("telescope.builtin")
    local actions = require("telescope.actions")

    set("n", "<leader>ff", builtin.find_files)
    set("n", "<leader>fl", builtin.current_buffer_fuzzy_find)
    set("n", "<leader>fb", builtin.buffers)
    set("n", "<leader>fg", builtin.live_grep)

    require('telescope').setup{
      defaults = {
        winblend = 30,
        pumblend = 30,
        sorting_strategy = "ascending",
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
        prompt_prefix = "   ",
        selection_caret = "󰋇 ",
        layout_config = {
          horizontal = { prompt_position = "top" },
          vertical = { mirror = false },
          width = 0.7,
          height = 0.7,
          preview_cutoff = 120,
        },

        mappings = {
          n = { ["q"] = actions.close },
          i = {
            ["<C-k>"] = {
              actions.move_selection_previous,
              type = "action"
            },
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.close,
          }
        },

        file_ignore_patterns = {
          "^.git/",
          "^node_modules/",
          "^.venv",
          "%.png",
          "%.jpg",
          "%.pdf",
          "%.gif",
        },
      },

      pickers = {
        find_files = {
          -- theme = "dropdown",
          hidden = true,
          preview = true,
          find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
        },

        live_grep = {
          hidden = true,
          preview = true,
          find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
        },
      },

      buffers = { preview = false },

      extensions = {
        coc = { prefer_location = false },
      },

      -- settings for coc
      set("n", "gd", "<CMD>Telescope coc definitions<CR>", { silent = true }),
      set("n", "gt", "<CMD>Telescope coc type_definitions<CR>", { silent = true }),
      set("n", "gr", "<CMD>Telescope coc references<CR>", { silent = true }),
      set("n", "<leader>fd", "<CMD>Telescope coc diagnostics<CR>", { silent = true })
    }

    require("telescope").load_extension("coc")
  end,
}
