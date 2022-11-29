local status, autotag = pcall(require, 'nvim-ts-autag')
if (not status) then return end

autotag.setup {}
