local wilder = require('wilder')
wilder.setup({modes = {':', '/', '?'}})
wilder.set_option('pipeline', {
  wilder.branch(
    wilder.python_file_finder_pipeline({
      file_command = {'find', '.', '-type', 'f', '-printf', '%P\n'}, 
      dir_command = {'find', '.', '-type', 'd', '-printf', '%P\n'},
      filters = {'fuzzy_filter', 'difflib_sorter'},
    }),
    wilder.cmdline_pipeline(),
    wilder.python_search_pipeline()
  ),
})
wilder.set_option('renderer', wilder.popupmenu_renderer(
  wilder.popupmenu_border_theme({
    highlighter = wilder.basic_highlighter(),
    min_width = '100%',
    max_height = '30%',
    reverse = 0,
    highlights = {
      border = 'Normal',
    },
    border = 'rounded',
  })
))

