-- START HARPOON CONFIG
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>m", function()
  harpoon:list():add()
end)
vim.keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<F5>", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<F6>", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<F7>", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<F8>", function()
  harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<F4>", function()
  harpoon:list():prev()
end)
vim.keymap.set("n", "<F9>", function()
  harpoon:list():next()
end)

-- END HARPOON CONFIG

-- Start Keymap to save with Leader + w or W
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>W", ":w<CR>", { noremap = true, silent = true })
-- End keymap config.
