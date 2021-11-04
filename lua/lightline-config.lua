vim.cmd [[colorscheme tokyonight]]
vim.cmd('let g:lightline = { "colorscheme": "tokyonight","active": { "left": [ [ "mode", "paste" ],[ "gitbranch", "readonly", "filename", "modified" ]]},"component_function": {"gitbranch": "FugitiveHead" },}')
--vim.cmd [[ let g:lightline = {'colorscheme': 'tokyonight'} ]]
