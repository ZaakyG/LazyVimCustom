-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

--vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
--  desc = "Automatically open mini.map",
--  pattern = "*",
--  callback = function()
--    -- Only open if it's a normal file buffer and not an empty/special window
--    if vim.o.buftype == "" then
--      require('mini.map').open()
--    end
--  end,
--})
