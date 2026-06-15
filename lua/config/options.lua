-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = false
vim.g.snacks_animate = false

--vim.opt.laststatus = 2
--vim.opt.statusline = "%f %y %m %=%l:%c"
--vim.opt.statusline = vim.opt.statusline:get()
--    .. " [%{searchcount().current}/%{searchcount().total}]"

vim.opt.hlsearch = true
vim.opt.incsearch = true

local function set_background_from_os()
  local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
  local result = ""
  if handle then
    result = handle:read("*a")
    handle:close()
  end

  if result:match("Dark") then
    --vim.opt.background = "light"
    vim.cmd("colorscheme tokyonight")
  else
    vim.cmd("colorscheme tokyonight-day")
    --vim.opt.background = "light"

    --vim.api.nvim_set_hl(0, "LineNr", { fg = "#808080" })
    vim.api.nvim_set_hl(0, "CursorLineNr", {
      bold = true,
      fg = "#ffffff",
      bg = "#000000",
    })
    -- vim.api.nvim_set_hl(0, "CursorLine", {
    --   bg = "#000000",
    --   fg = "#ffffff",
    -- })
  end
end

-- Run on startup
vim.api.nvim_create_autocmd("VimEnter", {
  callback = set_background_from_os,
})

-- diagnostics inline
vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
  float = {
    boder = "rounded",
  },
})
