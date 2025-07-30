--require('lualine').setup()
require('lualine').setup {
    options = {
        theme = moonfly,
        component_separators = '|',
        section_separators = {left = '', right = ''}
    },
    sections = {
        lualine_a = {{'mode', separator = {left = ''}, right_padding = 2}},
        lualine_b = {},
        lualine_c = {'filename', 'branch', 'fileformat'},
        lualine_x = {'filetype', 'progress',{'location', separator = {right = ''}, left_padding = 2}},
        lualine_y = {},
        lualine_z = {}
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
