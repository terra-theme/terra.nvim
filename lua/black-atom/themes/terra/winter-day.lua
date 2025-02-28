local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-terra-winter-day",
    label = "Black Atom - Terra Winter Day",
    collection = {
        key = "terra",
        label = "TERRA",
    },
    appearance = "light",
    icon = "  ",
    status = "development",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    "#192125",
    "#1d272c",
    "#212c31",
    "#24333a",
    "#475e6a",
    "#516c7a",
    "#5b7988",
    "#7393a3",
    "#b6c2c9",
    "#c5ced3",
    "#d4dade",
    "#e2e6e9",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = "#212c31",
    gray = "#516c7a",
    dark_red = "#ca6d4c",
    red = "#dd7e5d",
    dark_green = "#4a7126",
    green = "#58852c",
    dark_yellow = "#cc764b",
    yellow = "#d19845",
    dark_blue = "#3d668e",
    blue = "#5980a6",
    dark_magenta = "#ab80a8",
    magenta = "#a58bc1",
    dark_cyan = "#296a50",
    cyan = "#348764",
    light_gray = "#b6c2c9",
    white = "#d4dade",
}

---@type BlackAtom.Theme.UI
M.ui = require("black-atom.themes.terra.ui_light")(M.primaries, M.palette)

---@type BlackAtom.Theme.Syntax
M.syntax = require("black-atom.themes.terra.syntax_light")(M.primaries, M.palette)

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    ui = M.ui,
    syntax = M.syntax,
}

return M
