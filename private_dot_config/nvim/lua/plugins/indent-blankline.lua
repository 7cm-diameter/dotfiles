return {
  "lukas-reineke/indent-blankline.nvim",
  config = function ()
    require("indent_blankline").setup({
      space_char_blankline = " ",
      char_highlight_list = {
          "IndentBlanklineIndent1",
          "IndentBlanklineIndent2",
          "IndentBlanklineIndent3",
          "IndentBlanklineIndent4",
          "IndentBlanklineIndent5",
          "IndentBlanklineIndent6",
      },
    })

    vim.cmd [[highlight IndentBlanklineIndent1 guifg=#ff757f gui=nocombine]]
    vim.cmd [[highlight IndentBlanklineIndent2 guifg=#ffc777 gui=nocombine]]
    vim.cmd [[highlight IndentBlanklineIndent3 guifg=#c3e88d gui=nocombine]]
    vim.cmd [[highlight IndentBlanklineIndent4 guifg=#86e1fc gui=nocombine]]
    vim.cmd [[highlight IndentBlanklineIndent5 guifg=#82aaff gui=nocombine]]
    vim.cmd [[highlight IndentBlanklineIndent6 guifg=#c099ff gui=nocombine]]
  end
}
