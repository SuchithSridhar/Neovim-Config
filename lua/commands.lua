local create_cmd = vim.api.nvim_create_user_command

create_cmd("SpellToggle", "set spell!", { desc = "Toggle spell checker" })

create_cmd(
	"AddCreditsHash",
	"read $HOME/Programming/snippets/author-hash.txt",
	{ desc = "Insert credits snippets preceded with hashes" }
)

create_cmd(
	"AddCreditsSlash",
	"read $HOME/Programming/snippets/author-slash.txt",
	{ desc = "Insert credits snippets preceded with slashes" }
)

create_cmd(
	"AddCreditsStar",
	"read $HOME/Programming/snippets/author-slash-star.txt",
	{ desc = "Insert credits snippets preceded with slash star" }
)

create_cmd("Tab2", "set tabstop=2 softtabstop=2 shiftwidth=2", { desc = "Set the tabstop to 2 for current file" })

create_cmd("Tab4", "set tabstop=4 softtabstop=4 shiftwidth=4", { desc = "Set the tabstop to 4 for current file" })
