local M = {}

---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    ---@type TerraHighlightGroup
    highlights.syntax.sass = {
        -- Native Regex Highlights
        sassVariable = { fg = colors.palette.dark_yellow },
        sassProperty = { fg = colors.palette.blue },
        sassMixing = { fg = colors.palette.red },
        sassMixinName = { fg = colors.palette.magenta },
        sassCssAttribute = { fg = colors.palette.yellow },
        sassDefinition = { fg = colors.palette.white },
        sassAmbersand = { fg = colors.palette.yellow },
        Character = { fg = colors.palette.yellow },

        -- TreeSitter Highlights
        -- If you want to add TreeSitter highlights, you can do so here.
    }
end

return M
