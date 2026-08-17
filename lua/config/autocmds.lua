local tex_group = vim.api.nvim_create_augroup("LatexCompile", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
	group = tex_group,
	pattern = "tex",
	callback = function(ev)
		local bufnr = ev.buf

		local function compile_tex()
			vim.cmd("write")
			vim.fn.jobstart(
				{ "latexmk", "-pdf", "-interaction=nonstopmode", "-synctex=1", "-outdir=build", vim.fn.expand("%") },
				{
					on_exit = function(_, code)
						if code == 0 then
							vim.notify("latexmk: compiled successfully", vim.log.levels.INFO)
						else
							vim.notify("latexmk: compile failed (exit " .. code .. ")", vim.log.levels.ERROR)
						end
					end,
				}
			)
		end

		local function open_pdf()
			local pdf = "build/" .. vim.fn.expand("%:r") .. ".pdf"
			vim.fn.jobstart({ "open", "-a", "Skim", pdf }, { detach = true })
		end

		vim.keymap.set("n", "<leader>tc", compile_tex, { buffer = bufnr, desc = "Compile tex (latexmk)" })
		vim.keymap.set("n", "<leader>to", open_pdf, { buffer = bufnr, desc = "Open PDF in Skim" })
	end,
})
