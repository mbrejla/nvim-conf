return {
  { -- Autoformat
    "stevearc/conform.nvim",
    lazy = false,
    keys = {
      {
        "<leader>f",
        function()
          require("conform").format({
            async = true,
            lsp_fallback = true,
          })
        end,
        mode = "",
        desc = "[F]ormat buffer",
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        -- Disable "format_on_save lsp_fallback" for languages that don't
        -- have a well standardized coding style. You can add additional
        -- languages here or re-enable it for the disabled ones.
        local disable_filetypes = {
          c = true,
          cpp = true,
        }
        return {
          timeout_ms = 500,
          lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
        }
      end,
      formatters = {
        -- opinionated custom settings for stylua
        lua = {
          command = "stylua",
          args = {
            "--column-width", "120",
            "--indent-type", "Spaces",
            "--indent-width", "2",
            "--quote-style", "AutoPreferSingle",
          },
          -- If stylua reads from stdin, set `stdin` to true
          stdin = true,
        },
      },
      formatters_by_ft = {
        -- Conform can also run multiple formatters sequentially
        -- python = { "isort", "black" },
        --
        -- You can use a sub-list to tell conform to run *until* a formatter
        -- is found.
        javascript = { { "prettierd", "prettier" } },
      },
    },
  },
}
