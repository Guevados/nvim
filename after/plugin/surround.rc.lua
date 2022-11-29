local status, surround = pcall(require, 'nvim-surround')
if (not status) then return end

surround.setup({
  keymaps = {
    normal = "s",
    delete = "ds",
    visual_line = "sg",
    change = "cs"
  },
  surrounds = {
    ["a"] = {
      add = function()
        return { { "(" }, { ")" } }
      end,
      delete = "^(. ?)().-( ?.)()$",
    },
    [")"] = {
      add = function()
        return { { "(" }, { ")" } }
      end,
      delete = "^(.)().-(.)()$",
    },
    ["{"] = {
      add = function()
        return { { "{" }, { "}" } }
      end,
      delete = "^(. ?)().-( ?.)()$",
    },
    ["}"] = {
      add = function()
        return { { "{" }, { "}" } }
      end,
      delete = "^(.)().-(.)()$",
    },
    ["<"] = {
      add = function()
        return { { "<" }, { ">" } }
      end,
      delete = "^(. ?)().-( ?.)()$",
    },
    [">"] = {
      add = function()
        return { { "<" }, { ">" } }
      end,
      delete = "^(.)().-(.)()$",
    },
    ["["] = {
      add = function()
        return { { "[" }, { "]" } }
      end,
      delete = "^(. ?)().-( ?.)()$",
    },
    ["]"] = {
      add = function()
        return { { "[" }, { "]" } }
      end,
      delete = "^(.)().-(.)()$",
    },
    ["'"] = {
      add = function()
        return { { "'" }, { "'" } }
      end,
      delete = "^(.)().-(.)()$",
    },
    ['"'] = {
      add = function()
        return { { '"' }, { '"' } }
      end,
      delete = "^(.)().-(.)()$",
    },
    ["`"] = {
      add = function()
        return { { "`" }, { "`" } }
      end,
      delete = "^(.)().-(.)()$",
    },
  }
})
