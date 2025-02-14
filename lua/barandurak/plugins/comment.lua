local setup, comment = pcall(require, "Comment")
if not setup then
	return
end

local setupCommentString, commentstring = pcall(require, "ts_context_commentstring")
if not setupCommentString then
	return
end

commentstring.setup({
	enable_autocmd = false,
})

comment.setup({
	pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
})
