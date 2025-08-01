return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require "cmp"
    opts.mapping = vim.tbl_extend("force", opts.mapping or {}, {
      ["<Tab>"] = function(fallback)
        local copilot = require "copilot.suggestion"
        if copilot.is_visible() then
          copilot.accept()
        elseif cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end,
      ["<S-Tab>"] = nil,
      ["<C-n>"] = cmp.mapping.select_next_item(),
      ["<C-p>"] = cmp.mapping.select_prev_item(),
      ["<CR>"] = cmp.mapping.confirm { select = true },
    })
  end,
}
