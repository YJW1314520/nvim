vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- 插件管理器
  use 'wbthomason/packer.nvim'
  -- 这三个都是语言服务,不要动
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  -- cmp扩展
  use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
    -- 路径提示
  use 'hrsh7th/cmp-path'
    -- 命令模式时有提示
  use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
  -- vsnip 一些自定义代码块
  use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  -- lspkind 配合语言服务使用
  use 'onsails/lspkind-nvim'
  use 'simrat39/rust-tools.nvim'
  -- 符号自动闭合
  use {'ZhiyuanLck/smart-pairs', event = 'InsertEnter', config = function() require('init-pairs') end}
  -- 文件目录树
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- 可选依赖,使目录树文件有好看图标
    },
    config = function() require'nvim-tree'.setup {} end
  }
  -- 美化多页面样式
  use{'akinsho/bufferline.nvim',
  config = function()
    require("bufferline").setup{}
  end
  }
  -- 美化下方状态栏
  use{'windwp/windline.nvim',
  config = function()
    require('wlsample.airline_anim')
  end
  }
  -- 主题
  use { "ellisonleao/gruvbox.nvim" }
  -- 代码高亮
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  -- 终端
  use 'voldikss/vim-floaterm'
  -- git
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  -- 模糊搜索
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                          branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
end)