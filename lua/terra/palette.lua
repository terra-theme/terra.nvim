local themes = require("terra.config").themes
local validate_theme = require("terra.actions.config").validate_theme

---@param theme TerraConfig.Theme
---@param variant TerraConfig.Variant
local get_palette = function(theme, variant)
    local valid_theme = validate_theme(themes, theme)

    if not valid_theme then
        local notify = require("terra.actions.ui").notify

        local error_message = "Unknown theme '" .. theme .. "'!\nCheck for typos.\nCurrently only 'spring' is available!"

        notify(error_message, vim.log.levels.ERROR, {
            title = "Terra - Error",
            timeout = 5000,
            icon = "",
        })

        return
    else
        return require("terra.themes." .. theme .. "." .. variant)
    end
end

return get_palette
