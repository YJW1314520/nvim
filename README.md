# 本仓库用于存放nvim配置

## 目录介绍

- lua
  - config-nvim-treesitter.lua 高亮配置
	- config-nvim.lua nvim配置
	- init-cmp.lua 语言服务配置
	- init-pairs.lua 符号自动闭合配置
	- keymap.lua 快捷键键位设置
	- plugins.lua 此插件是管理插件的插件,新增插件就往这里加
- plugin
  - packer_compiled.lua plugins.lua的产物,不要动
- init-lua nvim首先加载此文件
- README.md 说明文件

## 首先

安装插件，由于某些众所周知的原因失败率非常高，反复重装即可

```nvim
:PackerInstall
```

## 必需依赖

[] nodejs 
[] c/c++编译器 去vs官网装

## 可选依赖(语言服务)

对应ts/tsx
[] tsserver  用node安装至全局
对应rust
[] rust_analyzer github搜lsp

**在c/c++编译器环境下下载语言服务。然后就可以在各处享受到语言服务了。**

## 最后一步

查看keymap文件，熟读键位配置
