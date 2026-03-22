
return {
-- Using lazy.nvim
  "chomosuke/typst-preview.nvim",
  ft = "typst",
  version = "1.*",
  build = function() require("typst-preview").update() end,
}
