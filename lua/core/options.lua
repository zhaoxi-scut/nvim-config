----------------------- 通用选项设置 -----------------------
local opt = vim.opt

-- 编辑器配置
opt.clipboard = 'unnamedplus' -- 使用系统剪贴板
opt.completeopt = {'menu', 'menuone', 'noselect'} -- 补全菜单
opt.mouse = 'a' -- 允许鼠标操作

-- 缩进
opt.tabstop = 4 -- 每个 TAB 4 个空格
opt.softtabstop = 4 -- 编辑时 TAB 4 个空格
opt.shiftwidth = 4 -- 插入时 4 个空格
opt.expandtab = true -- 用空格代替 TAB
opt.autoindent = true -- 自动缩进

-- UI 配置
opt.number = true -- 显示绝对行号
opt.relativenumber = true -- 显示相对行号
opt.cursorline = true -- 高亮当前行
opt.splitbelow = true -- 新窗口在下方打开
opt.splitright = true -- 新窗口在右侧打开
opt.wrap = false -- 不换行
opt.showmode = false -- 不显示模式
opt.termguicolors = true -- 启用 24 位 RGB 颜色
opt.signcolumn = 'yes' -- 总是显示标记列

-- 搜索
opt.incsearch = true -- 输入时搜索
opt.hlsearch = false -- 不高亮搜索结果
opt.ignorecase = true -- 忽略大小写
opt.smartcase = true -- 但是如果输入了大写字母，就区分大小写

-- 部分文件类型配置
-- Markdown, txt
vim.api.nvim_create_autocmd("FileType", {
  pattern = {'markdown', 'txt'},
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = false
  end
})

-- RMVL Parameters IDL
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = "*.para",
  callback = function()
    vim.bo.filetype = "rmvlpara"
    vim.cmd("source syntax/rmvlpara.vim")
  end
})
