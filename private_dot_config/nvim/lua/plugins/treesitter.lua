return {
  "nvim-treesitter/nvim-treesitter",
  build = function ()
    require("nvim-treesitter.install").update({ with_sync = true })
  end,

  config = function ()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "python", "julia", "r", "lua", "vim"},
      sync_install = true,
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
   end
}
