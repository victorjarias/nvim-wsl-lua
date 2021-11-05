-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig/configs'.ls_emmet = {
  default_config = {
    cmd = { 'ls_emmet', '--stdio' };
    filetypes = { 'html', 'css', 'scss' }; -- Add the languages you use, see language support
    root_dir = function(_)
      return vim.loop.cwd()
    end;
    settings = {};
  };
}



local langservers = {
  'html',
  'cssls',
  'tsserver',
  'pylsp',
  'ls_emmet',
  'omnisharp'
}

for _, server in ipairs(langservers) do
    require'lspconfig'[server].setup {
      capabilities = capabilities
    }
end

