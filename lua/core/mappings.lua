--[[ 
    Schema:
    
        Mappings {
            leader_key: "set leader key"

            [name of mapping group]: {

                plugin: "Mark this group as a plugin, then this group won't be loaded until you ask it to in a plugin setup option"

                [short mode name]: {
                    [alias of the mapping (just to indentify them easier)]: {
                        command: "Command you want to use for this mapping"
                        mapping: "Command to be executed when you press the command you set above"
                    }
                }
            }
        }
]]

local Mappings = {
    leader_key = " ",

    neovim = {
        n = {
            -- ['Re-source current luafile'] = {
            --     command = "<F5>",
            --     mapping = ":luafile %<CR>"
            -- },
            ["Sync Packer"] = {
                command = "<F4>",
                mapping = ":PackerSync<CR>"
            },
            ['Update buffer'] = {
                command = "<F5>",
                mapping = ":bufdo e!<CR>"
            }
        }
    },

    navigation = {
        i = {
            ['Go to the beggining of the line'] = {
                command = "<C-b>",
                mapping = "<ESC>^i"
            },
            ['Go to the end of the line'] = {
                command = "<C-e>",
                mapping = "<End>"
            }
        },
        n = {
            ['Quit Nvim'] = {
                command = "<C-q>",
                mapping = ":q<CR>"
            },
            ['Move down faster'] = {
                command = "<C-j>",
                mapping = "10j"
            },
            ['Move up faster'] = {
                command = "<C-k>",
                mapping = "10k"
            },
            ["Toggle line number"] = {
                command = '<Leader>n',
                mapping = ":set nu!<CR>"
            },
            ["Toggle relative line number"] = {
                command = '<Leader>rn',
                mapping = ":set rnu!<CR>"
            }
        }
    },

    general = {
        i = {
            ['Save current file'] = {
                command = "<C-s>",
                mapping = "<Esc>:w<CR>li"
            },
            -- ['Exit insert mode'] = {
            --     command = "<C-q>",
            --     mapping = "<Esc><Esc>"
            -- }
        },
        n = {
            ['Save current file'] = {
                command = "<C-s>",
                mapping = ":w<CR>"
            },
            -- ['Undo'] = {
            --     command = "<C-z>",
            --     mapping = "u"
            -- },
            -- ['Redo'] = {
            --     command = "<C-y>",
            --     mapping = "<C-r>"
            -- },

            -- Need to check this mapping out, not working properly
            ['Select all'] = {
                command = "<Leader>a",
                mapping = "ggvG<S-End>"
            },
            ['Move line up'] = {    -- Issues when moving at the end of files
                command = "<A-k>",
                mapping = "ddkP"
            },
            ['Move line down'] = {  -- Issues when moving at the end of files
                command = "<A-j>",
                mapping = "ddp"
            },
            ['Test keymap'] = {
                command = "<Leader>test",
                mapping = ":echo 'This is a test keymap!'<CR>"
            },
            ['Clear search highlight'] = {
                command = "_",
                mapping = ":noh<CR>"
            },
        }
    },

    nvimtree = {
        plugin = true,
        n = {
            ['Open Nvimtree'] = {
                command = "<C-b>",
                mapping = ":NvimTreeFindFileToggle<CR>"
            },
            ['Focus Nvimtree'] = {
                command = "<Leader>b",
                mapping = ":NvimTreeFocus<CR>"
            }
        }
    },

    toggleterm = {
        plugin = true,
        n = {
            ['Open a floating term'] = {
                command = "<Leader>tt",
                mapping = ":ToggleTerm direction=float<CR>"
            }
        }
    },

    telescope = {
        plugin = true,
        n = {
            ['Open Telescope'] = {
                command = "<Leader>ff",
                mapping = ":Telescope find_files<CR>"
            },
            ['Open Telescope Keymaps'] = {
                command = "<Leader>k",
                mapping = ":Telescope keymaps<CR>"
            },
            ['Show git log'] = {
                command = "<Leader>glo",
                mapping = ":Telescope git_commits initial_mode=normal<CR>"
            },
            ['Show git status'] = {
                command = "<Leader>gst",
                mapping = ":Telescope git_status initial_mode=normal<CR>"
            },
            ['Open Telescope live_grep'] = {
                command = "<Leader>fg",
                mapping = ":Telescope live_grep<CR>"
            }
        }
    },

    bufferline = {
        plugin = true,
        n = {
            ['Move to the next buffer'] = {
                command = "<A-l>",
                mapping = ":BufferLineCycleNext<CR>"
            },
            ['Move to the previous buffer'] = {
                command = "<A-h>",
                mapping = ":BufferLineCyclePrev<CR>"
            },
            ['Close current buffer'] = {
                command = "<A-w>",
                mapping = ":bd<CR>"
            }
        }
    },

    octo = {
        plugin = true,
        n = {
            ["List PR's"] = {
                command = "<Leader>opl",
                mapping = ":Octo pr list<CR>"
            },
            ['Start PR review'] = {
                command = "<Leader>ors",
                mapping = ":Octo review start<CR>"
            },
            ['Resume PR review'] = {
                command = "<Leader>orr",
                mapping = ":Octo review resume<CR>"
            },
            ['Submit PR review'] = {
                command = "<Leader>orss",
                mapping = ":Octo review submit<CR>"
            }
        }
    },

    diffview = {
        plugin = true,
        n = {
            ["Open diffview"] = {
                command = "<Leader>dv",
                mapping = ":DiffviewOpen<CR>"
            },
            ["Close diffview"] = {
                command = "<Leader>dvc",
                mapping = ":DiffviewClose<CR>"
            }
        }
    },

    ufo = {
        plugin = true,
        n = {
            ["Open all folds"] = {
                command = "zR",
                mapping = function()
                    require('ufo').openAllFolds()
                end
            },
            ["Close all folds"] = {
                command = "zM",
                mapping = function()
                    require('ufo').closeAllFolds()
                end
            }
        }
    },

    null_ls = {
        plugin = true,
        n = {
            ["Format file"] = {
                command = "<A-F>",
                mapping = ":lua vim.lsp.buf.format({ timeout_ms = 5000 })<CR>"
            }
        }
    }
}

return Mappings
