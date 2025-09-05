--require('lualine').setup()
require('lualine').setup {
    options = {
         --theme = bubbles_theme,
        component_separators = '|',
        section_separators = '',
		theme = 'gruvbox',
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {
            'filename', 'branch'
            -- require("lsp-progress").progress  
        },
        lualine_c = {'fileformat'},
        lualine_x = {},
        lualine_y = {'filetype', 'progress'},
        lualine_z = {
            {'location'}
        }
    },
    inactive_sections = {
        lualine_a = {'filename'},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'location'}
    },
    tabline = {},
    extensions = {}
}

vim.cmd([[
augroup lualine_augroup
    autocmd!
    autocmd User LspProgressStatusUpdated lua require("lualine").refresh()
augroup END
]])
