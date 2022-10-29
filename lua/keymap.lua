-- nvim-tree.lua的映射,按Ctrl+n打开关闭目录树
vim.keymap.set('', '<C-n>', '<esc>:NvimTreeToggle<CR>')
vim.keymap.set('!', '<C-n>', '<esc>:NvimTreeToggle<CR>')

-- buuferline.nvim 的映射--
--跳到上一个/下一个标签页
vim.keymap.set('', '<C-c>', ':BufferLineCycleNext<CR>')
vim.keymap.set('!', '<C-c>', ':BufferLineCycleNext<CR>')
vim.keymap.set('', '<C-b>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('!', '<C-b>', ':BufferLineCyclePrev<CR>')
-- 模糊搜索
vim.keymap.set('', 'ff', ':Telescope<CR>')
-- jk连按 切换普通模式
vim.keymap.set('i', 'jk', '<esc>')
-- ctrl-s 保存 本质上是切换到普通模式然后保存,再切换回输入模式
-- 再加一条格式化
-- 这里使用eslint格式化js/ts文件
-- 如果是其他语言需要使用 :lua vim.lsp.buf.formatting()
vim.keymap.set('i', '<C-s>', '<esc>:lua vim.lsp.buf.formatting()<CR>:w<CR>a')
-- 普通模式也能保存
vim.keymap.set('', '<C-s>', ':lua vim.lsp.buf.formattin()<CR>')
-- 空格用于打开代码悬浮提示
vim.keymap.set('', '<space>', ':lua vim.lsp.buf.hover()<CR>')
-- gd go define 跳转至定义
vim.keymap.set('', 'gd', ':lua vim.lsp.buf.definition()<CR>')
-- gr go rename 重命名
vim.keymap.set('', 'gr', ':lua vim.lsp.buf.rename()<CR>')
-- H 移动光标至行首
vim.keymap.set('', 'H', '^')
-- L 移动光标至行尾
vim.keymap.set('', 'L', '$')
-- 普通模式下
-- zc折叠代码
-- zo展开
-- 输入模式下
-- alt-. 开启自动补全提示
-- alt-, 关闭提示
-- tab 在提示中向下移动
-- shift-tab 在提示中向上移动
-- p 确认提示
