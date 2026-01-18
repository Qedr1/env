-- bootstrap lazy.nvim, LazyVim and your plugins
-- Отключаем стандартное дополнение Vim для SQL, которое вызывает ошибку
vim.g.omni_sql_no_default_maps = 1

-- Дополнительно: принудительно отключаем загрузку встроенного плагина sqlcomplete
vim.g.loaded_sql_completion = 1
require("config.lazy")
