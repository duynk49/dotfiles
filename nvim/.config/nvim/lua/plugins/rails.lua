return {
  {
    "tpope/vim-rails",
  },

  -- Better syntax highlighting for ERB files (Rails Views)
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "ruby", "embedded_template" })
      end
    end,
  },
}
