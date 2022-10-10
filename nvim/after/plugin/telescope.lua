require("telescope").setup {
    extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown {}
		},
        lsp_handlers = {
			disable = {
				['textDocument/codeAction'] = true,
			},
		},
    }
}

require("telescope").load_extension("ui-select")
require("telescope").load_extension("lsp_handlers")

local keymap_helper = require("snooze/keymap_helper")
local nnoremap = keymap_helper.nnoremap

nnoremap("<C-p>", ":Telescope\n")

nnoremap("<leader>ps", function()
    require('telescope.builtin')
        .grep_string { search = vim.fn.input("Grep for > ") }
end)

nnoremap("<leader>pf", function()
    require('telescope.builtin').find_files()
end)

nnoremap("<leader>pw", function()
    require('telescope.builtin')
        .grep_string { search = vim.fn.expand("<cword>") }
end)

nnoremap("<leader>pb", function()
    require('telescope.builtin').buffers()
end)
