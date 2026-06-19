-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = false
vim.g.snacks_animate = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

--vim.opt.guicursor = {
--  "n-v-c:block",   -- normal mode: block
--  "i-ci-ve:ver25", -- insert mode: vertical line (25% width)
--  "r-cr:hor20",    -- replace mode: horizontal
--  "o:hor50",
--}
vim.opt.guicursor = "n-v-c:block,i:ver25-blinkwait300-blinkon200-blinkoff150"

local function set_background_from_os()
  local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
  local result = ""
  if handle then
    result = handle:read("*a")
    handle:close()
  end

  if result:match("Dark") then
    vim.cmd("colorscheme miniautumn")
  else
    --vim.cmd("colorscheme miniautumn")
    -- vim.opt.background = "light"
    vim.cmd("colorscheme tokyonight-day")

    vim.schedule(function()
      vim.opt.guicursor = {
        "n-v-c:block",
        "i-ci-ve:ver30-blinkwait150-blinkon200-blinkoff150",
        "r-cr:hor20"
      }
      vim.api.nvim_set_hl(0, "Cursor", { fg = "white", bg = "black" })
      vim.api.nvim_set_hl(0, "TermCursor", { fg = "white", bg = "black" })
    end)

    --vim.cmd("colorscheme tokyonight-day")

    --vim.api.nvim_set_hl(0, "LineNr", { fg = "#808080" })
    --    vim.api.nvim_set_hl(0, "CursorLineNr", {
    --      bold = true,
    --      fg = "#ffffff",
    --      bg = "#000000",
    --    })
    --vim.api.nvim_set_hl(0, "Cursor", {
    --  bg = "gray",
    --  fg = "black",
    --})
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
