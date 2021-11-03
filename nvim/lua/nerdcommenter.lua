local api = vim.api
local N = {
  rb = '#',
  go = '//',
  py = '#',
  js = '//',
  lua = '--'
}

function N.get_file_type()
  print(vim.inspect)
end


function N.set_file_type(file_type)
  N['file_type'] = file_type
end




return N
