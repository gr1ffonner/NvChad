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
    ["<leader>i"] = { "<cmd> wa <CR>", "Save file" },
    ["<leader>I"] = { "<cmd> 1,$bd! <CR>", "Delete all buffers" },
  }
}

return M
