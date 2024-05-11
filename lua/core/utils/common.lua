local M = {}

M.table_contains = function(given_table, given_key)
  for key, value in pairs(given_table) do
    if given_key == key then
      return true
    end
  end
  return false
end

M.extend_table = function(table1, table2)
  local result = {}

  for key, value in ipairs(table1) do
    table.insert(result, value)
  end

  for key, value in ipairs(table2) do
    table.insert(result, value)
  end

  return result
end

M.dump_to_file = function(file_name, value)
  vim.fn.system('echo ' .. vim.fn.json_encode(value) .. ' >> ' .. file_name)
end

return M
