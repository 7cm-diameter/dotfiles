local set = vim.keymap.set

return {
  "akinsho/toggleterm.nvim",
  config = function ()
    require("toggleterm").setup({
      -- set("n", "<leader>tj", "<CMD>ToggleTerm direction=horizontal<CR>"),
      -- set("n", "<leader>tl", "<CMD>ToggleTerm direction=vertical<CR>"),
    })
  end
}
