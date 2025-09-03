return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      python = { "ruff_fix", "ruff_format" },
      sql = { "sqlfluff" },
    },
    formatters = {
      ruff_fix = {
        command = "ruff",
        args = { "check", "--select", "I", "--fix", "--stdin-filename", "$FILENAME", "-" },
        stdin = true,
      },
      ruff_format = {
        command = "ruff",
        args = { "format", "-" },
        stdin = true,
      },
      sqlfluff = {
        command = "sqlfluff",
        args = { "fix", "--dialect", "clickhouse", "-" },
        stdin = true,
      },
    },
    format_on_save = {
      timeout_ms = 1000,
      lsp_fallback = true,
    },
  },
}
