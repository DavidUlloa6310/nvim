vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format() end, { desc = "Format buffer" })
