local settings = {
  mouse = "a",
  number = true,
  relativenumber = true,
  swapfile = false,
  backup = false,
  clipboard = "unnamedplus",
  smartcase = true,
  smartindent = true,
  autoindent = true,
  scrolloff = 6,
  sidescrolloff = 6,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
}

for k, v in pairs(settings) do 
  vim.opt[k] = v
end

