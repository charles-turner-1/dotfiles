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

vim.call('plug#end')

--[[
let g:vimtex_fold_enabled=1
let g:latex_view_method='skim'
let g:vimtex_complete_close_braces=1

" lua vim.opt.fillchars = 'fold:\ '

" Configure lightline to show git branch

]]--

--[[
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
]]--

-- Set up lightline with the above configuration (let g:lightline = ...),

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

require("bitsnbobs")
