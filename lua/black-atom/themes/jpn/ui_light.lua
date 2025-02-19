---@param primaries BlackAtom.Theme.Primaries
---@param palette BlackAtom.Theme.Palette
return function(primaries, palette)
    ---@type BlackAtom.Theme.UI
    return {
        bg = {
            default = primaries[11],
            panel = primaries[10],
            float = primaries[10],
            active = primaries[9],
            disabled = primaries[8],
            hover = primaries[9],
            selection = primaries[9],
            search = primaries[9],
            contrast = primaries[2],
            negative = palette.red,
            warn = palette.yellow,
            info = palette.blue,
            hint = palette.dark_yellow,
            positive = palette.green,
            add = palette.green,
            delete = palette.red,
            modify = palette.blue,
        },
        fg = {
            default = primaries[2],
            subtle = primaries[4],
            disabled = primaries[6],
            accent = palette.yellow,
            contrast = primaries[11],
            negative = palette.red,
            warn = palette.yellow,
            info = palette.blue,
            hint = palette.dark_yellow,
            positive = palette.green,
            add = palette.green,
            delete = palette.red,
            modify = palette.blue,
        },
    }
end
