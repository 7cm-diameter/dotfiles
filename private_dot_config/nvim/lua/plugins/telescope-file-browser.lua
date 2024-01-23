return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },

  require("telescope").setup{
    vim.api.nvim_set_keymap("n", "<space>fe", ":Telescope file_browser<CR>", { noremap = true })
  }
}
