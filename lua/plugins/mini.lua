return {
  {
    "nvim-mini/mini.map",
    keys = {
      { "<leader>mc", "<cmd>lua MiniMap.toggle()<cr>", desc = "Toggle Minimap" },
      { "<leader>mf", "<cmd>lua MiniMap.toggle_focus()<cr>", desc = "Focus Minimap" },
    },
    opts = {
      layout = "split",
      side = "right",
    },
    -- config = function(_, opts)
    --         require("mini.map").setup(opts)
    --         MiniMap.open()
    --     end,
  },
}
