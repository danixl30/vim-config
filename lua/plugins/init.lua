return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
   {
        "ziglang/zig.vim",
    },

    {
        "hrsh7th/nvim-cmp",
    },

  {
    'stevearc/conform.nvim',
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
      },
    },
    config = function()
      require "configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
        require('nvim-ts-autotag').setup {
        }
    end,
    lazy = false
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_)
      require 'nvim-treesitter.install'.compilers = { "clang" }
      -- require'nvim-treesitter.configs'.setup {
      --   highlight = {
      --     enable = true,
      --     -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      --     -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      --     -- Using this option may slow down your editor, and you may see some duplicate highlights.
      --     -- Instead of true it can also be a list of languages
      --     additional_vim_regex_highlighting = false,
      --   },
      --   indent = {
      --     enable = true
      --   },
      --   incremental_selection = { enable = true },
      --   textobjects = { enable = true },
      --   autotag = {
      --       enable = true,
      --     }
      -- }
    end,
  },
    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").set_icon {
              ts = {
                icon = "",
                color = "#005ae0",
                cterm_color = "74",
                name = "ts"
              }
            }
        end,
    },

  {
    "nvim-tree/nvim-tree.lua",
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },


  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
