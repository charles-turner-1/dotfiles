-- Set a bunch of options using lua
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.laststatus = 2
vim.opt.guicursor = "i:block"
vim.opt.hlsearch = false
vim.opt.showmode = false
vim.opt.wrap = true
vim.opt.hidden = true
vim.opt.scrolloff = 5



-- Change the current directory to the directory of the file in the buffer - useful for :find and stuff
vim.keymap.set('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>')

-- Highlight current line with a light grey background
vim.api.nvim_command('highlight CursorLine ctermbg=darkGrey guibg=darkGrey')
vim.opt.cursorline = true


vim.opt.filetype = 'on'
vim.opt.filetype = 'indent'


local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('https://github.com/itchyny/lightline.vim')
Plug('https://github.com/lervag/vimtex')
Plug('JuliaEditorSupport/julia-vim')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-telescope/telescope-fzy-native.nvim')
Plug('nvim-treesitter/nvim-treesitter')
Plug('https://github.com/lukas-reineke/indent-blankline.nvim')
Plug('https://github.com/tpope/vim-fugitive')
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')
Plug('folke/neodev.nvim')
Plug('https://github.com/folke/neoconf.nvim')

vim.call('plug#end')


vim.g.vimtex_fold_enabled = 1
vim.g.latex_view_method = 'skim'
vim.g.vimtex_complete_close_braces = 1

 -- vim.opt.fillchars = 'fold:\\ '    | Don't know what this does. Maybe something important


vim.g.lightline = {
    active = {
	left = {
	    { 'mode', 'paste' },
	    { 'gitbranch', 'readonly', 'filename', 'modified' }
	}
    },
    component_function = {
	gitbranch = 'FugitiveHead'
    }
}

require("neodev").setup({})
require("mason").setup()
require('mason-lspconfig').setup({
  ensure_installed = {"volar", "tsserver"}
})
local lspconfig = require('lspconfig')

require('mason-lspconfig').setup_handlers({
  function(server_name)
    local server_config = {}
    if require("neoconf").get(server_name .. ".disable") then
      return
    end
    if server_name == "volar" then
        server_config.filetypes = { 'vue', 'typescript', 'javascript' }
    end
    lspconfig[server_name].setup(server_config)
  end,
})

vim.keymap.set('v', '<leader>p', '"_dP')
vim.keymap.set('n', '<leader>ve', ':Ve<CR><C-w>r')
vim.keymap.set('n', '<leader>ex', ':Explore<CR>')

builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Toggle numbers (copy pasta)
vim.keymap.set('n', '<leader>nn', ':exec &nu==&rnu? "se nu!" : "se rnu!"<cr>')

vim.opt.spelllang = 'en_gb'
-- Set it so spelling is only on for markdown, .tex, and .txt files
vim.api.nvim_command('autocmd FileType markdown,txt,tex setlocal spell')
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0
vim.opt.tabstop = 4

--[[
-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.tsserver.setup {}
lspconfig.volar.setup {}
lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
}

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gh', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
--]]

require("bitsnbobs")
