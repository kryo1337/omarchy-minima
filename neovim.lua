return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = true,
		opts = {
			flavour = "mocha",
			transparent_background = true,
			float = {
				transparent = true,
			},

			color_overrides = {
				mocha = {
					blue = "#c6a0f6",
				},
			},

			custom_highlights = function(colors)
				return {
					-- Dashboard/Alpha (LazyVim startup screen)
					AlphaHeader = { fg = colors.mauve },
					AlphaButtons = { fg = colors.mauve },
					AlphaShortcut = { fg = colors.mauve },
					AlphaFooter = { fg = colors.mauve },

					-- Dashboard specific
					DashboardHeader = { fg = colors.mauve },
					DashboardCenter = { fg = colors.mauve },
					DashboardShortCut = { fg = colors.mauve },
					DashboardFooter = { fg = colors.mauve },

					-- Cursor and line numbers
					LineNr = { fg = colors.mauve },
					CursorLineNr = { fg = colors.mauve, style = { "bold" } },

					-- Syntax highlighting
					Keyword = { fg = colors.mauve },
					Function = { fg = colors.mauve },
					Type = { fg = colors.mauve },
					["@function"] = { fg = colors.mauve },
					["@keyword"] = { fg = colors.mauve },
					["@type"] = { fg = colors.mauve },

					-- Directories and folders
					Directory = { fg = colors.mauve },

					-- Search
					Search = { bg = colors.surface1, fg = colors.mauve },
					IncSearch = { bg = colors.mauve, fg = colors.base },

					-- Visual selection
					Visual = { bg = colors.surface1, style = { "bold" } },

					-- LSP
					LspReferenceText = { bg = colors.surface1 },
					LspReferenceRead = { bg = colors.surface1 },
					LspReferenceWrite = { bg = colors.surface1 },

					-- Telescope
					TelescopeSelectionCaret = { fg = colors.mauve },
					TelescopeSelection = { fg = colors.mauve, bg = colors.surface0, style = { "bold" } },
					TelescopePromptPrefix = { fg = colors.mauve },
					TelescopeBorder = { fg = colors.mauve },

					-- Neo-tree
					NeoTreeDirectoryIcon = { fg = colors.mauve },
					NeoTreeDirectoryName = { fg = colors.mauve },

					-- Git signs
					GitSignsAdd = { fg = colors.green },
					GitSignsChange = { fg = colors.mauve },
					GitSignsDelete = { fg = colors.red },

					-- Indent guides
					IndentBlanklineChar = { fg = colors.surface0 },
					IndentBlanklineContextChar = { fg = colors.mauve },

					-- Statusline components
					StatusLine = { bg = colors.mantle },

					-- Tabs
					TabLine = { bg = colors.mantle },
					TabLineSel = { fg = colors.mauve, bg = colors.base, style = { "bold" } },

					-- Noice (command line)
					NoiceCmdlineIcon = { fg = colors.mauve },
					NoiceCmdlinePopupBorder = { fg = colors.mauve },
				}
			end,

			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				neotree = true,
				treesitter = true,
				notify = true,
				mini = {
					enabled = true,
					indentscope_color = "mauve",
				},
				telescope = {
					enabled = true,
				},
				which_key = true,
				alpha = true,
				dashboard = true,
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
	specs = {
		{
			"akinsho/bufferline.nvim",
			optional = true,
			opts = function(_, opts)
				if (vim.g.colors_name or ""):find("catppuccin") then
					opts.highlights = require("catppuccin.special.bufferline").get_theme()
				end
			end,
		},
	},
}
