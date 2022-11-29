local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

bufferline.setup {
  options = {
    mode = 'tabs',
    separator_style = 'thick',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = false,
    max_name_length = 18,
    max_prefix_length = 15,
    modified_icon = '●',
  },
  highlights = {
    separator = {
      fg = '#073642',
      bg = '#002b36'
    },
    separator_selected = {
      fg = '#073642'
    },
    background = {
      fg = '#657b83',
      bg = '#002b36'
    },
    buffer_selected = {
      fb = '#fdf6e3',
      --bold = true
    },
    fill = {
      bg = '#073642'
    }
  }
}

vim.api.nvim_set_keymap('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>', {})
vim.api.nvim_set_keymap('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>', {})
