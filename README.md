# 个人 Neovim 配置

## 下载安装

使用前请确保已安装 [Neovim](https://github.com/neovim/neovim/releases/latest) (>=0.10) 和 [Node.js](https://nodejs.org/zh-cn/download)，在 `$HOME/.config` 文件夹下执行以下命令：

```bash
git clone https://github.com/zhaoxi-scut/nvim-config
mv nvim-config nvim # 需要重命名为 nvim
```

在终端输入 `nvim` 以打开 Neovim，打开后即可自动安装插件，在安装插件过程可能会遇到 `coc.nvim` 的安装问题，执行

```bash
chmod +x extra_config
./extra_config
```

即可解决。

## 开发环境准备

若要使用 `coc.nvim` 的自动补全功能，还需要安装 `coc` 扩展以启用 LSP 支持，`extra_config` 预先安装了

- `coc-clangd` C/C++ 的补全扩展
- `coc-cmake` CMake 的补全扩展
- `coc-python` Python 的补全扩展

两个插件，还有其他语言需求可以在 Neovim 中执行

- `:CocInstall coc-json` 安装 JSON 的补全扩展
- `:CocInstall coc-yaml` 安装 YAML 的补全扩展

若要使用 `coc.nvim` 的其他功能，请参考 [coc.nvim](https://github.com/neoclide/coc.nvim/)。

## 快捷键

### 普通模式

- `Ctrl + Up` 切换到上方窗口
- `Ctrl + Down` 切换到下方窗口
- `Ctrl + Left` 切换到左方窗口
- `Ctrl + Right` 切换到右方窗口

### 插入模式

- `Shift + Left` 向左选中字符，并进入可视模式
- `Shift + Right` 向右选中字符，并进入可视模式
- `Ctrl + V` 粘贴剪贴板内容

### 可视模式

- `Ctrl + C` 复制选中内容，并进入插入模式

## 插件列表

- [coc.nvim](https://github.com/neoclide/coc.nvim) 自动补全插件，及其子扩展
- [copilot](https://github.com/github/copilot.vim) GitHub Copilot 插件
- [everforest](https://github.com/sainnhe/everforest) 主题插件
- [lualine](https://github.com/nvim-lualine/lualine.nvim) 状态栏插件
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) 文件树插件
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) 语法高亮插件
- [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow) 括号颜色显示插件
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) 窗口切换插件
