local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("laxman.lsp.lsp-installer")
require("laxman.lsp.handlers").setup()
