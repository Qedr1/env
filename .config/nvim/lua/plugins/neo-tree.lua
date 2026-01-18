return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      bind_to_cwd = true,
      cwd_target = {
        sidebar = "global",
      },
      window = {
        mappings = {
          ["."] = function(state)
            local node = state.tree:get_node()
            local path = node.type == "directory" and node.path or vim.fn.fnamemodify(node.path, ":h")
            local current_cwd = vim.fn.getcwd()

            if current_cwd == path then
              -- повторное нажатие — переход на уровень выше
              local parent = vim.fn.fnamemodify(current_cwd, ":h")
              vim.cmd("cd " .. parent)
              require("neo-tree.sources.filesystem.commands").navigate_up(state)
            else
              -- первое нажатие — установить текущую директорию
              vim.cmd("cd " .. path)
              require("neo-tree.sources.filesystem.commands").set_root(state)
            end
          end,
        },
      },
    },
  },
}
