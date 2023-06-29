local set = vim.keymap.set

return {
  "akinsho/toggleterm.nvim",
  config = function ()
    require("toggleterm").setup({
      set("n", "<leader>tt", "<CMD>ToggleTerm direction=float<CR>"),
    })
  end
}
