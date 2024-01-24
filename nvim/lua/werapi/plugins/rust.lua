return {
	"rust-lang/rust.vim",
	config = function()
		vim.cmd("let g:rustfmt_autosave = 1 \n let g:rust_fold = 1")
	end,
}
