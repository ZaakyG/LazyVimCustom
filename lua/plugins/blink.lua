return {
  "blink.cmp",
  opts = {
    keymap = {
      ["<C-j>"] = { "show", "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
      ["<C-e>"] = { "hide" },
    },
    completion = {
      ghost_text = {
        enabled = false,
      },
      menu = {
        border = "rounded",
        --   auto_show = false,
      },
    },
    signature = { enabled = false },
  },
}
