return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local ts = require("nvim-treesitter")

    ts.setup()

    -- Languages for your CUDA workflow
    ts.install({
      -- Core languages
      "python",
      "c",
      "cpp",
      "cuda",

      -- Configuration & data
      "lua",           -- Neovim config
      "vim",           -- Vim script
      "json",          -- Config files
      "yaml",          -- Config files
      "toml",          -- Python pyproject.toml

      -- Development essentials
      "bash",          -- Shell scripts
      "cmake",         -- Build files
      "make",          -- Makefiles
      "dockerfile",    -- Containers

      -- Documentation
      "markdown",      -- README files
      "markdown_inline",
      "rst",           -- Python docs

      -- Git & regex
      "git_config",
      "gitcommit",
      "gitignore",
      "regex",
    })

    -- Enable highlighting and treesitter indentation per buffer
    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        -- Fails quietly for filetypes without an installed parser
        if pcall(vim.treesitter.start, args.buf) then
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
