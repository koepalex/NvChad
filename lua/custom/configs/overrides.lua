local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "c_sharp",
    "rust",
    "python",
    "rust",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- shell stuff
    "shfmt",

    -- own
    "csharp_ls",
    "pyre",
    -- "rust_analyzer",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.codesnap = {
  save_path = "/home/koepalex/codesnippet.png",
  bg_theme = "sea",
  watermark = "",
  title = "www.alexander-koepke.de",
  has_breadcrumps = true,
}

M.neorg = {
  load = {
    ["core.defaults"] = {},
		["core.concealer"] = {
      config = {
        icon_preset = "diamond",
        init_open_folds = "always",
        icons = {
          code_block = {
            width = "content",
            min_width = 85,
            conceal = true,
          },
        },
      }
    },
		["core.completion"] = {
      config = {
        engine = "nvim-cmp",
        name = "[Norg]"
      }
    },
    ["core.integrations.nvim-cmp"] = {},
    ["core.qol.toc"] = {
      config = {
        close_split_on_jump = true,
        toc_split_placement = "right",
      }
    },
    ["core.qol.todo_items"] = {
      config = {
        create_todo_items = true,
        create_todo_parents = false,
      }
    },
    ["core.dirman"] = {
      config = {
          workspaces = {
              private = "~/src/pkb/private", -- Format: <name_of_workspace> = <path_to_workspace_root>
              work = "~/src/pkb/work",
          },
          index = "index.norg", -- The name of the main (root) .norg file
          default_workspace = "work",
      }
    },
    ["core.integrations.telescope"] = {},
    ["core.export"] = {
      config = {
        export_dir = "~/notes/"
      }
    },
    ["core.export.markdown"] = {
      config = {
        extensions = "all"
      }
    },
    ["core.summary"] = {},
    ["core.ui.calendar"] = {},
    ["core.esupports.metagen"] = {
      config = {
        type = "auto",
        update_date = true,
        author = "Alexander Köpke",
      }
    },
    ["core.journal"] = {
      config = {
        workspace = "private",
        strategy = "flat",
      }
    },
  }
}

M.oil = {
  default_file_explorer = true,
  columns = {
    "icon",
    "permissions",
    "size",
  },
  view_options = {
    show_hidden = true,
  }
}

return M
