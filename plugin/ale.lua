-- vim.g.ale_use_neovim_diagnostics_api = 1
-- vim.g.ale_virtualtext_cursor = "disabled"

vim.g.ale_linters = {
  apkbuild = { "apkbuild_lint" },
  -- TODO: https://github.com/kisielk/errcheck
  markdown = { "proselint", "vale" },
	javascript = { "prettier", "eslint" },
	javascriptreact = { "prettier", "eslint" },
	typescript = { "prettier", "eslint" },
	typescriptreact = { "prettier", "eslint" },
}
vim.g.ale_linters_explicit = 1
vim.g.ale_lint_on_text_changed = 'always'
vim.g.ale_lint_on_enter = 1

vim.g.ale_fixers = {
  go = { "gofmt" },
  html = { "prettier" },
  json = { "prettier" },
  lua = { "stylua" },
  markdown = { "prettier" }, -- Disables trim_whitespace. See: https://github.com/dense-analysis/ale/discussions/4640
  scss = { "prettier" },
  sql = { "pgformatter" },
	javascript = { "prettier", "eslint" },
	javascriptreact = { "prettier", "eslint" },
  typescript = { "prettier", "eslint" },
  typescriptreact = { "prettier", "eslint" },
  vue = { "prettier" },
  yaml = { "prettier" },
  ["*"] = { "remove_trailing_lines", "trim_whitespace" },
}
vim.g.ale_fix_on_save = true;
