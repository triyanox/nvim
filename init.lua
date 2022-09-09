require('achaq.base')
require('achaq.highlights')
require('achaq.maps')
require('achaq.plugins')

local has = function(x)
  return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('achaq.macos')
end
if is_win then
  require('achaq.windows')
end
