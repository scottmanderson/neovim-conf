local lsp = require("lsp-zero")

local cmp = require("cmp")
local types = require("cmp.types")

lsp.preset("recommended") -- these defaults set up autocomplete in was I find too aggressive

vim.opt.completeopt = "menu,noselect,noinsert"

local cmp_mappings = lsp.defaults.cmp_mappings({
	-- make any desired remappings here
	-- ['<Tab>'] = cmp.mapping.complete(),
})


lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}
  
  vim.o.completeopt = "menu,noselect,noinsert"

  if client.name == "eslint" then
      vim.cmd.LspStop('eslint')
      return
  end

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
  vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

lsp.setup_nvim_cmp({
	mapping = cmp_mappings,
	completion = {
		autocomplete = {
			types.cmp.TriggerEvent.TextChanged,
		},
		completeopt = 'menu,menuone,noselect',
		keyword_pattern = [[\%(-\?\d\+\%(\.\d\+\)\?\|\h\w*\%(-\w*\)*\)]],
		keyword_length = 1,
	}
})

lsp.setup()
