--- Custom global command to print vim.inspect to passed in arg
---
--- @param i any
_G.P = function(i)
  print(vim.inspect(i))
end
