return {
	"kevinhwang91/nvim-ufo",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "kevinhwang91/promise-async" },
	config = function()
		local ufo = require("ufo")

		ufo.setup({
			provider_selector = function()
				return { "lsp", "indent" }
			end,
		})

		vim.keymap.set("n", "zR", ufo.openAllFolds, { desc = "Open all folds" })
		vim.keymap.set("n", "zM", ufo.closeAllFolds, { desc = "Close all folds" })
		vim.keymap.set("n", "zr", ufo.openFoldsExceptKinds, { desc = "Open folds by level" })
		vim.keymap.set("n", "zm", ufo.closeFoldsWith, { desc = "Close folds by level" })
		vim.keymap.set("n", "zK", function()
			ufo.peekFoldedLinesUnderCursor()
		end, { desc = "Peek fold" })
	end,
}
