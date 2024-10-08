-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
--}

-- autostart nvim-tree
--
-- vim.api.nvim_create_autocmd("VimEnter", {
--   command = "set nornu nonu",
--   -- command = "set nornu nonu | Neotree toggle",
-- })
vim.api.nvim_create_autocmd("BufEnter", {
  command = "set nornu nu",
})

vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprev<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>m", ":Glow<CR>", { noremap = true })
