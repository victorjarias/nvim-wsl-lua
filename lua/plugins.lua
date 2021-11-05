local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- TokyoNight Theme
  use 'morhetz/gruvbox'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'ghifarit53/tokyonight-vim'


  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
	}
   --IDE
  use 'easymotion/vim-easymotion'
  use 'editorconfig/editorconfig-vim'
  use 'preservim/nerdcommenter'

  -- Light Line
  use 'itchyny/lightline.vim'


  --Higlight 
  use 'sheerun/vim-polyglot'
  use 'nvim-treesitter/nvim-treesitter'
  --Autopairs
  use 'jiangmiao/auto-pairs'
  use 'alvan/vim-closetag'

  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'


  use 'terryma/vim-multiple-cursors'

  --Git
  use 'tpope/vim-fugitive'
  use 'mhinz/vim-signify'
  use 'tpope/vim-rhubarb'
  use 'junegunn/gv.vim'
  use 'itchyny/vim-gitbranch'



  --Telescope
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'psliwka/vim-smoothie'
  use 'yggdroot/indentline'
  use 'christoomey/vim-tmux-navigator'

  use 'omnisharp/omnisharp-vim'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'onsails/lspkind-nvim'
  use 'norcalli/nvim-colorizer.lua'
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup{current_line_blame = true}
    end
  }
end)
