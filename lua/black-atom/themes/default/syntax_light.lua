---@param prim BlackAtom.Theme.Primaries
---@param pal BlackAtom.Theme.Palette
return function(prim, pal)
    ---@type BlackAtom.Theme.Syntax
    return {
        variable = {
            default = prim[5],
            builtin = prim[3],
            member = prim[5],
            parameter = pal.dark_yellow,
        },
        property = {
            default = prim[5],
        },
        string = {
            default = pal.green,
            doc = pal.green,
            regexp = pal.red,
            escape = pal.red,
        },
        constant = {
            default = pal.gray,
            builtin = pal.dark_red,
        },
        module = {
            default = pal.dark_blue,
        },
        boolean = {
            default = pal.dark_green,
        },
        number = {
            default = pal.dark_green,
        },
        type = {
            default = pal.cyan,
            builtin = pal.dark_cyan,
        },
        attribute = {
            default = pal.dark_yellow,
            builtin = pal.dark_yellow,
        },
        func = {
            default = pal.yellow,
            builtin = pal.yellow,
            method = pal.yellow,
        },
        constructor = {
            default = pal.yellow,
        },
        keyword = {
            default = pal.magenta,
            import = pal.red,
            export = pal.red,
        },
        operator = {
            default = pal.magenta,
        },
        punctuation = {
            default = pal.gray,
            delimiter = prim[8],
            bracket = pal.gray,
            special = pal.gray,
        },
        comment = {
            default = prim[7],
            doc = pal.dark_green,
            todo = pal.green,
            error = pal.red,
            warn = pal.yellow,
            info = pal.blue,
            hint = pal.dark_yellow,
        },
        markup = {
            heading = {
                h1 = pal.yellow,
                h2 = pal.yellow,
                h3 = pal.yellow,
                h4 = pal.gray,
                h5 = pal.gray,
                h6 = pal.gray,
            },
            list = {
                default = pal.gray,
                checked = pal.green,
                unchecked = pal.gray,
            },
            quote = pal.green,
            math = pal.dark_green,
            link = pal.green,
            code = {
                fg = prim[6],
                bg = prim[10],
            },
        },
        tag = {
            default = pal.yellow,
            builtin = pal.dark_yellow,
            custom = pal.yellow,
            attribute = prim[5],
            delimiter = pal.dark_green,
        },
    }
end
