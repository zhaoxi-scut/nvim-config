# 个人 Neovim 配置

使用前请确保已安装 [Neovim](https://github.com/neovim/neovim/releases/latest) (>=0.10) 和 [Node.js](https://nodejs.org/zh-cn/download)，在 `$HOME/.config` 文件夹下执行以下命令：

```bash
git clone https://github.com/zhaoxi-scut/nvim-config
mv nvim-config nvim # 需要重命名为 nvim
```

在终端输入 `nvim` 以打开 Neovim，打开后即可自动安装插件，在安装插件过程可能会遇到 `coc.nvim` 的安装问题，一般进入 `$HOME/.local/share/nvim/lazy/coc.nvim` 文件夹，执行

```bash
npm install
```

即可解决。