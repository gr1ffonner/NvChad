local M = {}
-- Disabling some junk mappings
M.disabled = {
  n = {
      -- disabling toggling nvimtree 
      ["<C-n>"] = "",
      -- disabling which key function 
  }
}

M.abc = {
  n = {
    ["<leader>o"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
    ["<leader>i"] = { "<cmd> w <CR>", "Save file" },
  }
}

return M
