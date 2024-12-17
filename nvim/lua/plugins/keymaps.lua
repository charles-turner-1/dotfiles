return {
  -- telescope
  { vim.keymap.set("n", "<leader>ff", ":Telescope find_files<cr>", { desc = "Fuzzy find files"}) },
  { vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>", { desc = "Fuzzy find git files"}) },
  { vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<cr>", { desc = "Live grep"}) },
  { vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>", { desc = "Find old files"}) },
  { vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<cr>", { desc = "Fuzzy find help"}) },
  { vim.keymap.set("n", "<leader>fb", ":Telescope buffers<cr>", { desc = "Fuzzy buffer search"}) },

  -- tree
  { vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>", {desc = "Toggle explorer"}) },

  -- format code using LSP
  { vim.keymap.set("n", "<leader>fmd", vim.lsp.buf.format) },

  -- markdown preview
  { vim.keymap.set("n", "<leader>mdp", ":MarkdownPreviewToggle<cr>") },

  -- nvim-comment
  { vim.keymap.set({"n", "v"}, "<c-/>", ":CommentToggle<cr>", {desc = "Comment/ uncomment line"}) },
}
