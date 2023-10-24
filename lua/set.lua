-- Enable line numbers
vim.opt.nu = true

-- Show existing tab with 4 spaces width
vim.opt.tabstop = 4

-- Show existing tab with 4 spaces width
vim.opt.softtabstop = 4

-- When indenting with ">", use 4 spaces width
vim.opt.shiftwidth = 4

-- On pressing tab, insert 4 spaces
vim.opt.expandtab = true

-- insert tabs on the start of a line according to shiftwidth
vim.opt.smarttab = true

-- Automatically inserts one extra level of indentation in some cases
vim.opt.smartindent = true

-- Hides the current buffer when a new file is openned
vim.opt.hidden = true

-- Incremental search
vim.opt.incsearch = true

-- Ingore case in search
vim.opt.ignorecase = true

-- Consider case if there is a upper case character
vim.opt.smartcase = true

-- Minimum number of lines to keep above and below the cursor
vim.opt.scrolloff = 8

-- Add a column on the left. Useful for linting
vim.opt.signcolumn = "yes"

-- Give more space for displaying messages
vim.opt.cmdheight = 2

-- Time in miliseconds to consider the changes
vim.opt.updatetime = 100

-- The encoding should be utf-8 to activate the font icons
vim.opt.encoding = "utf-8"

-- No backup files
vim.opt.backup = false

-- No backup files
vim.opt.writebackup = false

-- Create the vertical splits to the right
vim.opt.splitright = true

-- Create the horizontal splits below
vim.opt.splitbelow = true

-- Update vim after file update from outside
vim.opt.autoread = true

-- Enable mouse support
vim.opt.mouse = "a"
