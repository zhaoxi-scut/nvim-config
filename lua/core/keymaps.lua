----------------------- 通用键位设置 -----------------------
vim.g.mapleader = ' ' -- 设置 <Space> 为 leader 键

local keymap = vim.keymap

-- 可视模式
keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv") -- 单行、多行下移
keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv") -- 单行、多行上移

-- 普通模式
keymap.set('n', "<C-\\>", "<C-w>v") -- 垂直分割窗口 Ctrl + \
keymap.set('n', "<C-k><C-\\>", "<C-w>s") -- 水平分割窗口 Ctrl + K Ctrk + \

-- 创建终端缓冲区并执行命令的辅助函数
local function create_term(cmd, name, size)
  vim.cmd('botright split')
  vim.cmd('resize ' .. (size))

  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_win_set_buf(0, buf)
  vim.api.nvim_buf_set_name(buf, name)

  vim.keymap.set('n', 'q', ':close<CR>', {
    buffer = buf,
    silent = true
  })
  vim.fn.termopen(cmd, {
    on_exit = function(_, code)
      if code == 0 then
        vim.notify(name .. "完成，按 'q' 退出", vim.log.levels.INFO)
      else
        vim.notify(name .. "失败，按 'q' 退出", vim.log.levels.ERROR)
      end
    end
  })
  vim.cmd('startinsert')
end

-- 配置命令
vim.api.nvim_create_user_command('Config', function()
  create_term('cmake -G Ninja -S . -B build', 'CMake 配置', 10)
end, {
  desc = 'CMake 配置项目'
})

-- GUI 配置命令
vim.api.nvim_create_user_command('ConfigGUI', function()
  create_term('ccmake -G Ninja -S . -B build', 'CMake 配置', 15)
end, {
  desc = 'CMake GUI 配置项目'
})

-- 构建命令
vim.api.nvim_create_user_command('Build', function()
  create_term('cmake --build build --parallel', 'CMake 构建', 2)
end, {
  desc = 'CMake 构建项目'
})

-- 安装命令
vim.api.nvim_create_user_command('Install', function()
  create_term('sudo cmake --install build', 'CMake 安装', 3)
end, {
  desc = 'CMake 安装项目'
})

-- 配置、构建、安装
vim.api.nvim_create_user_command('CMakeAll', function()
  create_term('cmake -G Ninja -S . -B build && cmake --build build --parallel && sudo cmake --install build',
    'CMake 一键配置、构建、安装', 10)
end, {
  desc = 'CMake 配置、构建、安装项目'
})

-- 测试命令
vim.api.nvim_create_user_command('Test', function()
  create_term('ctest --test-dir build', 'CTest 测试', 3)
end, {
  desc = 'CTest 运行测试'
})

-- 运行命令
vim.api.nvim_create_user_command('Run', function(args)
  local executable = './build/' .. args.args
  -- 检查可执行文件是否存在
  if vim.fn.filereadable(executable) == 0 then
    vim.notify('可执行文件 ' .. executable .. ' 不存在', vim.log.levels.ERROR)
    return
  end
  create_term(executable, '可执行程序 ' .. args.args .. ' 运行', 5)
end, {
  nargs = 1,
  desc = '运行可执行文件'
})
