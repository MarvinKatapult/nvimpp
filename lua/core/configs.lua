-- Vim Enstellungen
vim.g.did_load_filetypes = 1
vim.g.formatoptions = "qrn1"
vim.opt.showmode = false
vim.opt.updatetime = 100
vim.wo.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.wo.linebreak = true
vim.opt.virtualedit = "block"
vim.opt.undofile = true
vim.opt.shell = "/bin/bash"

-- Letzte Cursor Position merken
vim.o.shada = "'100,f1"

-- Speichert automatisch, wenn nötig
vim.opt.autowrite = true 

-- Aktive Zeile
vim.opt.cursorline = false

-- Maus
vim.opt.mouse = "a"
vim.opt.mousefocus = true

-- Linien Nummer
vim.opt.number = true
vim.opt.relativenumber = true

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Shorter Nachrichten
vim.opt.shortmess:append("c")

-- Indent Einstellungen
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.cindent = true

-- Fuelchars
vim.opt.fillchars = {
    vert = "│",
    fold = "⠀",
    eob = " ", -- suppress ~ at EndOfBuffer
    -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
    msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸"
}

-- Hervorhebung zurücksetzen
vim.cmd([[highlight clear LineNr]])
vim.cmd([[highlight clear SignColumn]])

-- Letzte Cursor Position merken
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local last_pos = vim.api.nvim_buf_get_mark(0, '"')
    local line_count = vim.api.nvim_buf_line_count(0)

    if last_pos[1] > 0 and last_pos[1] <= line_count then
      vim.api.nvim_win_set_cursor(0, last_pos)
    end
  end,
})

-- Leerzeichen sichtbar machen
vim.opt.list = true
vim.opt.listchars = {
  space = "·",
	tab = "  "
}
