local status, packer = pcall(require, "packer")
print("Plug Lua")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use "EdenEast/nightfox.nvim"
  use({
	"nvim-treesitter/nvim-treesitter",
	commit = "518e27589c0463af15463c9d675c65e464efc2fe",
  })
  use {
	'nvim-lualine/lualine.nvim',
  	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
   }
  -- Your plugins go here
end)