-- 导入管理插件的插件
require('plugins')
-- ts/js语言服务初始化
require'lspconfig'.tsserver.setup{}
-- 不需要调用rust语言服务的setup
-- 由插件帮你完成
local rt = require("rust-tools")
rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      -- vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      -- vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})
-- 导入语言服务配置
require('init-cmp')
-- 导入改键配置
require('keymap')
-- 导入nvim配置
require('config-nvim')
-- 导入语法高亮
require('config-nvim-treesitter')
-- 主题配置
require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = false,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  overrides = {},
})
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])