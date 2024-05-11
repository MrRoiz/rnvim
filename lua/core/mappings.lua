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
  -- leader_key= " ",

  neovim = {
    n = {
      ['Update buffer'] = {
        command = '<F5>',
        mapping = ':bufdo e!<CR>',
      },
      ['Where am I'] = {
        command = '<Leader>wai',
        mapping = ":echo expand('%:p')<CR>",
      },
    },
  },
  navigation = {
    i = {
      ['go to the beggining of the line'] = {
        command = '<c-b>',
        mapping = '<esc>^i',
      },
      ['go to the end of the line'] = {
        command = '<c-e>',
        mapping = '<end>',
      },
    },
    n = {
      ['go to the beggining of the line'] = {
        command = 'B',
        mapping = '^',
      },
      ['go to the end of the line'] = {
        command = 'E',
        mapping = '$',
      },
      ['Quit Nvim'] = {
        command = '<C-q>',
        mapping = ':q<CR>',
      },
      ['Move down faster'] = {
        command = '<C-j>',
        mapping = '10j',
      },
      ['Move up faster'] = {
        command = '<C-k>',
        mapping = '10k',
      },
    },
    v = {
      ['Move down faster'] = {
        command = '<C-j>',
        mapping = '10j',
      },
      ['Move up faster'] = {
        command = '<C-k>',
        mapping = '10k',
      },
    },
  },
  general = {
    i = {
      ['Save current file'] = {
        command = '<C-s>',
        mapping = '<Esc>:w<CR>li',
      },
    },
    n = {
      ['Save current file'] = {
        command = '<C-s>',
        mapping = ':w<CR>',
      },
      ['Select all'] = {
        command = '<Leader>a',
        mapping = 'ggvG<S-End>',
      },
      ['Test keymap'] = {
        command = '<Leader>test',
        mapping = ":echo 'This is a test keymap!'<CR>",
      },
      ['Clear search highlight'] = {
        command = '_',
        mapping = ':noh<CR>',
      },
    },
  },
  neo_tree = {
    n = {
      ['Open neo_tree'] = {
        command = '<C-b>',
        mapping = ':Neotree toggle<CR>',
      },
    },
  },
  toggleterm = {
    n = {
      ['Open a floating term'] = {
        command = '<Leader>tt',
        mapping = ':ToggleTerm direction=float<CR>',
      },
    },
  },
  telescope = {
    n = {
      ['Open Telescope'] = {
        command = '<Leader>ff',
        mapping = ':Telescope find_files<CR>',
      },
      ['Open Telescope Keymaps'] = {
        command = '<Leader>k',
        mapping = ':Telescope keymaps<CR>',
      },
      ['Show git log'] = {
        command = '<Leader>glo',
        mapping = ':Telescope git_commits initial_mode=normal<CR>',
      },
      ['Show git status'] = {
        command = '<Leader>gst',
        mapping = ':Telescope git_status initial_mode=normal<CR>',
      },
      ['Show git branches'] = {
        command = '<Leader>gb',
        mapping = ':Telescope git_branches initial_mode=normal<CR>',
      },
      ['Open Telescope live_grep'] = {
        command = '<Leader>fg',
        mapping = ':Telescope live_grep<CR>',
      },
    },
  },
  bufferline = {
    n = {
      ['Move to the next buffer'] = {
        -- Next in Mac is disabled because in Mac is an space like our Leader key
        -- command = {"<M-l>", " "},
        command = '<M-l>',
        mapping = ':BufferLineCycleNext<CR>',
      },
      ['Move to the previous buffer'] = {
        command = { '<M-h>', '™' },
        mapping = ':BufferLineCyclePrev<CR>',
      },
      ['Close current buffer'] = {
        command = { '<M-w>', 'æ' },
        mapping = ':bd<CR>',
      },
    },
  },
  octo = {
    n = {
      ["List PR's"] = {
        command = '<Leader>opl',
        mapping = ':Octo pr list initial_mode=normal<CR>',
      },
      ['Start PR review'] = {
        command = '<Leader>ors',
        mapping = ':Octo review start<CR>',
      },
      ['Resume PR review'] = {
        command = '<Leader>orr',
        mapping = ':Octo review resume<CR>',
      },
      ['Submit PR review'] = {
        command = '<Leader>orss',
        mapping = ':Octo review submit<CR>',
      },
      ['Close current review'] = {
        command = '<Leader>orc',
        mapping = ':Octo review close<CR>',
      },
      ['Reload current PR'] = {
        command = '<Leader>opr',
        mapping = ':Octo pr reload<CR>',
      },
    },
  },
  diffview = {
    n = {
      ['Open diffview'] = {
        command = '<Leader>dv',
        mapping = ':DiffviewOpen<CR>',
      },
      ['Close diffview'] = {
        command = '<Leader>dcc',
        mapping = '<cmd>set hidden<CR><cmd>DiffviewClose<CR><cmd>set nohidden<CR>',
      },
      ['Show Commit history with changes'] = {
        command = '<Leader>dh',
        mapping = ':DiffviewFileHistory<CR>',
      },
      ['Show current file history'] = {
        command = '<Leader>dch',
        mapping = ':DiffviewFileHistory %<CR>',
      },
    },
  },
  ufo = {
    n = {
      ['Open all folds'] = {
        command = 'zR',
        mapping = function()
          require('ufo').openAllFolds()
        end,
      },
      ['Close all folds'] = {
        command = 'zM',
        mapping = function()
          require('ufo').closeAllFolds()
        end,
      },
    },
  },
  conform = {
    n = {
      ['Format file'] = {
        command = { '<M-F>', 'ﬁ' },
        mapping = ':Format<CR>',
      },
    },
    v = {
      ['Format selectoin'] = {
        command = { '<M-F>', 'ﬁ' },
        mapping = ':Format<CR>',
      },
    },
  },
  nvim_spectre = {
    n = {
      ['Open Spectre'] = {
        command = '<Leader>ss',
        mapping = ":lua require('spectre').open()<CR>",
      },
      ['Search current word with Spectre'] = {
        command = '<Leader>sw',
        mapping = ":lua require('spectre').open_visual({select_word=true})<CR>",
      },
      ['Search on current file with Spectre'] = {
        command = '<Leader>sf',
        mapping = ":lua require('spectre').open_file_search({select_word=true})<CR>",
      },
    },
    v = {
      ['Search on current file with Spectre'] = {
        command = '<Leader>sw',
        mapping = "<esc><cmd>lua require('spectre').open_visual()<CR>",
      },
    },
  },
}

return Mappings
