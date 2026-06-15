return {
  "lualine.nvim",
  opts = {
    sections = {
      lualine_x = {
        "searchcount", -- 🔥 THIS is what you want
        -- "encoding",
        -- "fileformat",
        "filetype",
      },
    },
  },
}
