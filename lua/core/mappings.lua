--[[
    Schema:

        Mappings {
            leader_key: "set leader key"

            [name of mapping group]: {

                [short mode name]: {
                    [alias of the mapping (just to indentify them easier)]: {
                        command: "Command you want to use for this mapping can also be a Table to set multiple mappings to one command (useful when using PC and Mac)"
                        mapping: "Command to be executed when you press the command you set above"
                    }
                }
            }
        }
]]

local Mappings = {
	neovim = {
		n = {
			["Update buffer"] = {
				command = "<F5>",
				mapping = ":bufdo e!<CR>",
			},
			["Where am I"] = {
				command = "<Leader>wai",
				mapping = ":echo expand('%:p')<CR>",
			},
		},
	},
	navigation = {
		i = {
			["go to the beggining of the line"] = {
				command = "<c-b>",
				mapping = "<esc>^i",
			},
			["go to the end of the line"] = {
				command = "<c-e>",
				mapping = "<end>",
			},
		},
		n = {
			-- FIXME: Disabled because of conflicts with nvim-tree mappings
			-- ["go to the beggining of the line"] = {
			-- 	command = "<c-b>",
			-- 	mapping = "^",
			-- },
			-- ["go to the end of the line"] = {
			-- 	command = "<c-e>",
			-- 	mapping = "$",
			-- },
			["Quit Nvim"] = {
				command = "<C-q>",
				mapping = ":q<CR>",
			},
			["Move down faster"] = {
				command = "<C-j>",
				mapping = "10j",
			},
			["Move up faster"] = {
				command = "<C-k>",
				mapping = "10k",
			},
			["Toggle line number"] = {
				command = "<Leader>n",
				mapping = ":set nu!<CR>",
			},
			["Toggle relative line number"] = {
				command = "<Leader>rn",
				mapping = ":set rnu!<CR>",
			},
		},
		v = {
			["Move down faster"] = {
				command = "<C-j>",
				mapping = "10j",
			},
			["Move up faster"] = {
				command = "<C-k>",
				mapping = "10k",
			},
		}
	},
	general = {
		i = {
			["Save current file"] = {
				command = "<C-s>",
				mapping = "<Esc>:w<CR>li",
			},
		},
		n = {
			["Save current file"] = {
				command = "<C-s>",
				mapping = ":w<CR>",
			},
			["Select all"] = {
				command = "<Leader>a",
				mapping = "ggvG<S-End>",
			},
			["Test keymap"] = {
				command = "<Leader>test",
				mapping = ":echo 'This is a test keymap!'<CR>",
			},
			["Clear search highlight"] = {
				command = "_",
				mapping = ":noh<CR>",
			},
		},
	},
	nvimtree = {
		n = {
			["Open Nvimtree"] = {
				command = "<C-b>",
				mapping = ":NvimTreeFindFileToggle<CR>",
			},
			["Focus Nvimtree"] = {
				command = "<Leader>b",
				mapping = ":NvimTreeFocus<CR>",
			},
		},
	},
	toggleterm = {
		n = {
			["Open a floating term"] = {
				command = "<Leader>tt",
				mapping = ":ToggleTerm direction=float<CR>",
			},
		},
	},
	telescope = {
		n = {
			["Open Telescope"] = {
				command = "<Leader>ff",
				mapping = ":Telescope find_files<CR>",
			},
			["Open Telescope Keymaps"] = {
				command = "<Leader>k",
				mapping = ":Telescope keymaps<CR>",
			},
			["Show git log"] = {
				command = "<Leader>glo",
				mapping = ":Telescope git_commits initial_mode=normal<CR>",
			},
			["Show git status"] = {
				command = "<Leader>gst",
				mapping = ":Telescope git_status initial_mode=normal<CR>",
			},
			["Show git branches"] = {
				command = "<Leader>gb",
				mapping = ":Telescope git_branches initial_mode=normal<CR>",
			},
			["Open Telescope live_grep"] = {
				command = "<Leader>fg",
				mapping = ":Telescope live_grep<CR>",
			},
		},
	},
	bufferline = {
		n = {
			["Move to the next buffer"] = {
				-- Next in Mac is disabled because in Mac is an space like our Leader key
				-- command = {"<M-l>", " "},
				command = "<M-l>",
				mapping = ":BufferLineCycleNext<CR>",
			},
			["Move to the previous buffer"] = {
				command = { "<M-h>", "™" },
				mapping = ":BufferLineCyclePrev<CR>",
			},
			["Close current buffer"] = {
				command = { "<M-w>", "æ" },
				mapping = ":bd<CR>",
			},
		},
	},
	octo = {
		n = {
			["List PR's"] = {
				command = "<Leader>opl",
				mapping = ":Octo pr list<CR>",
			},
			["Start PR review"] = {
				command = "<Leader>ors",
				mapping = ":Octo review start<CR>",
			},
			["Resume PR review"] = {
				command = "<Leader>orr",
				mapping = ":Octo review resume<CR>",
			},
			["Submit PR review"] = {
				command = "<Leader>orss",
				mapping = ":Octo review submit<CR>",
			},
			["Close current review"] = {
				command = "<Leader>orc",
				mapping = ":Octo review close<CR>",
			},
			["Reload current PR"] = {
				command = "<Leader>opr",
				mapping = ":Octo pr reload<CR>",
			},
		},
	},
	diffview = {
		n = {
			["Open diffview"] = {
				command = "<Leader>dv",
				mapping = ":DiffviewOpen<CR>",
			},
			["Close diffview"] = {
				command = "<Leader>dcc",
				mapping = ":DiffviewClose<CR>",
			},
			["Show Commit history with changes"] = {
				command = "<Leader>dh",
				mapping = ":DiffviewFileHistory<CR>",
			},
			["Show current file history"] = {
				command = "<Leader>dch",
				mapping = ":DiffviewFileHistory %<CR>"
			}
		},
	},
	ufo = {
		n = {
			["Open all folds"] = {
				command = "zR",
				mapping = function()
					require("ufo").openAllFolds()
				end,
			},
			["Close all folds"] = {
				command = "zM",
				mapping = function()
					require("ufo").closeAllFolds()
				end,
			},
		},
	},
	null_ls = {
		n = {
			["Format file"] = {
				command = { "<M-F>", "ﬁ" },
				mapping = ":lua vim.lsp.buf.format({ timeout_ms = 5000 })<CR>",
			},
		},
	},
}

return Mappings
