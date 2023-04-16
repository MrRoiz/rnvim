local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    local list = require('plugins/plugins_list')

    for alias, plugin in pairs(list) do
        local final_plugin = {
            plugin
        }

        -- TODO: refactor this into a cleaner function
        local config_path = 'plugins/configs/' .. alias
        local config_ok, config = pcall(require, config_path)
        if config_ok then
            final_plugin['config'] = config
        end

        local setup_path = 'plugins/setups/' .. alias
        local setup_ok, setup = pcall(require, setup_path)
        if setup_ok then
            final_plugin['setup'] = setup
        end

        local requires_path = 'plugins/requires/' .. alias
        local requires_ok, requires = pcall(require, requires_path)
        if requires_ok then
            final_plugin['requires'] = requires
        end

        local afters_path = 'plugins/afters/' .. alias
        local afters_ok, afters = pcall(require, afters_path)
        if afters_ok then
            final_plugin['after'] = afters
        end

        local runs_path = 'plugins/runs/' .. alias
        local runs_ok, runs = pcall(require, runs_path)
        if runs_ok then
            final_plugin['runs'] = runs
        end

        use(final_plugin)
    end

    if packer_bootstrap then
        require('packer').sync()
    end
end)
