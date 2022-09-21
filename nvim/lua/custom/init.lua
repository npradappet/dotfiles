require("custom.set")
require("custom.packer")
require("custom.remap")
require("custom.telescope")


local db = require "dashboard"
db.custom_header = {
	"",
	"",
	"",
	"",
	" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
	" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
	" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
	" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
	" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
	" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
	"",
	"",
	"",
}
db.custom_center = {
	{
		icon = " ",
		desc = "BBU            ",
		action = "edit /Users/npradappet/_Clients/BBU/bmark/bbu/",
		shortcut = "SPC b",
	},
	{
		icon = " ",
		desc = "(Live) Fossil Emails            ",
		action = "edit /Users/npradappet/Google Drive/Shared drives/CLIENTS/Fossil/Natcha",
		shortcut = "SPC f",
	},
	{
		icon = " ",
		desc = "New File            ",
		action = "DashboardNewFile",
		shortcut = "SPC o",
	},
	{
		icon = " ",
		desc = "Browse Files        ",
		action = "Telescope file_browser",
		shortcut = "SPC n",
	},
	{
		icon = " ",
		desc = "Find File           ",
		action = "Telescope find_files",
		shortcut = "SPC f",
	},
	{
		icon = " ",
		desc = "Configure Neovim    ",
		action = "edit ~/.config/nvim/lua/custom/set.lua",
		shortcut = "SPC v",
	},
	{
		icon = " ",
		desc = "Configure Yabai    ",
		action = "edit /Users/npradappet/.yabairc",
		shortcut = "SPC y",
	},
	{
		icon = " ",
		desc = "Configure SKHD    ",
		action = "edit /Users/npradappet/.skhdrc",
		shortcut = "SPC s",
	},
	{
		icon = " ",
		desc = "Configure Packer    ",
		action = "edit ~/.config/nvim/lua/custom/packer.lua",
		shortcut = "SPC p",
	},
	{
		icon = " ",
		desc = "Configure zsh    ",
		action = "edit /Users/npradappet/.zshrc",
		shortcut = "SPC z",
	},
	{
		icon = " ",
		desc = "Configure Dashboard    ",
		action = "edit ~/.config/nvim/lua/custom/init.lua",
		shortcut = "SPC d",
	},
	{
		icon = " ",
		desc = "Configure Keyboard Bindings    ",
		action = "edit ~/.config/nvim/lua/custom/remap.lua",
		shortcut = "SPC r",
	},
	{
		icon = " ",
		desc = "Exit Neovim              ",
		action = "quit",
	},
}
vim.keymap.set("n", "<Leader>o", ":DashboardNewFile<CR>", { silent = true })

local luasnip = require "luasnip"
local cmp = require "cmp"
cmp.setup {
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert {
		["<C-Space>"] = cmp.mapping.complete(),
		["<CR>"] = cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Replace, select = true },
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, { "i", "s" }),
	},
	sources = { { name = "nvim_lsp" }, { name = "luasnip" } },
}



local lspconfig = require "lspconfig"
