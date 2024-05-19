local lib = require("black-atom-core.lib")

local M = {}

---@type BlackAtomCore.Colors.Primaries
M.primaries = {
    -- Lows
    "#040505",
    "#0e1110",
    "#181b19",
    "#1d201e",

    -- Mids
    "#3e4441",
    "#565f59",
    "#606a65",
    "#79857f",

    -- Highs
    "#9fafa7",
    "#abbbb3",
    "#c4d4cc",
    "#d0e0d8",
}

---@type BlackAtomCore.Colors.Palette
M.palette = {
    black = M.primaries[2],
    gray = M.primaries[5],

    dark_red = "#9891d6",
    red = "#a6a1df",

    dark_green = "#4a9a64",
    green = "#64b47e",

    dark_yellow = M.primaries[9],
    yellow = M.primaries[11],

    dark_blue = M.primaries[8],
    blue = M.primaries[10],

    dark_magenta = "#a498e9",
    magenta = "#b7aded",

    dark_cyan = "#61d098",
    cyan = "#88DCB2",

    light_gray = M.primaries[8],
    white = M.primaries[11],
}

---@type BlackAtomCore.Colors.Semantics
M.semantics = {
    bg = {
        primary = {
            dark = M.primaries[1],
            main = M.primaries[2],
            light = M.primaries[3],
        },
        secondary = {
            dark = M.primaries[4],
            main = M.primaries[5],
            light = M.primaries[6],
        },
        active = M.primaries[4],
        match = {
            active = lib.color.darken(M.palette.magenta, 0.25, M.primaries[1]),
            passive = lib.color.darken(M.palette.magenta, 0.15, M.primaries[1]),
        },
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
    fg = {
        primary = {
            dark = M.primaries[10],
            main = M.primaries[11],
            light = M.primaries[12],
        },
        secondary = {
            dark = M.primaries[7],
            main = M.primaries[8],
            light = M.primaries[9],
        },
        active = M.palette.cyan,
        invert = M.primaries[2],
        neutral = M.primaries[6],
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
}

---@type BlackAtomCore.ThemeColors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    semantics = M.semantics,
}

---@type BlackAtomCore.ThemeMeta
M.meta = {
    key = "black-atom-engineering",
    label = "Black Atom - Engineering",
    collection_key = "black_atom",
    collection_label = "Black Atom",
    appearance = "dark",
    icon = " 󰖔 ",
    status = "release",
    module_path = "black-atom-core.themes.black-atom-engineering",
}

return M
