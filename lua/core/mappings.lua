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
            ['Re-source current luafile'] = {
                command = "<F5>",
                mapping = ":luafile %<CR>"
            },
            ["Sync Packer"] = {
                command = "<F4>",
                mapping = ":PackerSync<CR>"
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
        n = {
            ['Save current file'] = {
                command = "<C-s>",
                mapping = ":w<CR>"
            },
            ['Undo'] = {
                command = "<C-z>",
                mapping = "u"
            },
            ['Select all'] = {
                command = "<Leader>a",
                mapping = "ggvG<S-End>"
            },
            ['Redo'] = {
                command = "<C-y>",
                mapping = "<C-r>"
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
            }
        }
    },

    nvimtree = {
        plugin = true,
        n = {
            ['Open Nvimtree'] = {
                command = "<C-b>",
                mapping = ":NvimTreeToggle<CR>"
            },
            ['Focus Nvimtree'] = {
                command = "<Leader>b",
                mapping = ":NvimTreeFocus<CR>"
            }
        }
    },

    floaterm = {
        plugin = true,
        n = {
            ['Open Floaterm'] = {
                command = "<Leader>tt",
                mapping = ":FloatermNew<CR>"
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
            }
        }
    },
}

return Mappings
