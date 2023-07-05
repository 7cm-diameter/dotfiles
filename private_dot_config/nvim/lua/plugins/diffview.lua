return {
  "sindrets/diffview.nvim",

  config = function ()
    require("diffview").setup({
      vim.keymap.set("n", "-d", "<CMD>DiffviewOpen<CR>"),
      hooks = {
        view_opened = function(view)
          vim.keymap.set("n", "-d", "<CMD>DiffviewClose<CR>")
        end,
        view_closed = function(view)
          vim.keymap.set("n", "-d", "<CMD>DiffviewOpen<CR>")
        end,
      }
    })
  end
}
