require('telescope').setup {
    defaults = {
        layout_config = {
            height = 0.95,
        },
    },
    pickers = {
        find_files = {
            layout_strategy = 'horizontal',
            theme = "dropdown",
            layout_config = {
                height = 0.95,
                width = 0.70,
            }
        }
    },
}

-- Define a custom telescope command to list files in $HOME/.config
function List_config_files()
    local config_dir = os.getenv('HOME') .. '/.config/nvim'
    local find_command = {
        'find', config_dir, '-type', 'f', '-print'
    }

    require 'telescope.builtin'.find_files {
        find_command = find_command,
        prompt_title = 'Config Files',
    }
end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', List_config_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>qf', builtin.quickfix, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>col', builtin.colorscheme, {})
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>fss', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
