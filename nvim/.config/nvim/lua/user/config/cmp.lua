local cmp = require 'cmp'

cmp.setup {
  mapping = {
    ['<Tab>']     = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<S-Tab>']   = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<C-n>']     = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<C-p>']     = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<C-f>']     = cmp.mapping.scroll_docs(4),
    ['<C-d>']     = cmp.mapping.scroll_docs(-4),
    ['<CR>']      = cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Replace, select = true },
  },
  sources = {
    { name = 'nvim_lua'   },
    { name = 'path'       },
    { name = 'buffer'     },
    { name = 'rg'     },
  },
}

cmp.setup.cmdline('/', { sources = { { name = 'buffer'  } } })
cmp.setup.cmdline(':', { sources = { { name = 'cmdline', keyword_length = 3} } })

