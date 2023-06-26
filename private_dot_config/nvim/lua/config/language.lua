local autocmd = vim.api.nvim_create_autocmd
local set = vim.keymap.set

autocmd("FileType", {
  pattern = {"r"},
  callback = function ()
    set("i", ">>", "%>%")
    set("i", "<C-i><C-n>", "%in%")
  end,
})
