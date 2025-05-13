return {
  'ahmedkhalf/project.nvim',
  config = function()
  require("project_nvim").setup({
    detection_methods = { "pattern" },
    patterns = { ".git", ".clang-format", ".cpplintrc", "compile_commands.json" },
  })
  end,
}
