---@type ChadrcConfig
local M = {}

-- Path to overriding,stheme and highlights files
local highlights = require "custom.highlights"

M.ui = {
    changed_themes = {
        decay = {
            base_30 = {
                folder_bg = "#f7c305",
            },
            base_16 = {
                base0B = "green",
                base07 = "#8947fc",
            }
        }
    },
    statusline = {
        theme= "minimal",
        separator_style = "round"
    },
  theme = "decay",
  theme_toggle = { "decay", "one_light" },
  nvdash = {
    load_on_startup = true,
    buttons = {
      { "  Find File", ", f f", "Telescope find_files" },
      { "󰙅  Find File", "F2", "File tree" },
      { "󰈚  Recent Files", ", f o", "Telescope oldfiles" },
      { "󰈭  Find Word", ", f w", "Telescope live_grep" },
      { "  Bookmarks", ", m a", "Telescope marks" },
      { "  Themes", ", t h", "Telescope themes" },
      { "  Mappings", ", c h", "NvCheatsheet" },
    },
    },

  hl_override = {
    LspReferenceWrite = {
       underline = true,
       bg = "green",
    },
    LspReferenceRead = {
       underline = true,
       bg = "green",
    },
    LspReferenceText = {
       underline = true,
       bg = "green",
    },
  },
  hl_add = {
    LspReferenceWrite = {
       underline = true,
       bg = "green",
    },
    LspReferenceRead = {
       underline = true,
       bg = "green",
    },
    LspReferenceText = {
       underline = true,
       bg = "green",
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M

-- base00 = "#171B20",
--   base01 = "#21262e",
--   base02 = "#242931",
--   base03 = "#485263",
--   base04 = "#485263",
--   base05 = "#b6beca",
--   base06 = "#dee1e6",
--   base07 = "#dee1e6",
--   base08 = "#70A5EB",
--   base09 = "#e9a180",
--   base0A = "#f1cf8a",
--   base0B = "#78DBA9",
--   base0C = "#e26c7c",
--   base0D = "#86aaec",
--   base0E = "#c68aee",
--   folder_bg = "#78DBA9",-   base0F = "#9cd1ff",
