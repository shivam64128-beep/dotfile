return {
  "David-Kunz/gen.nvim",
  cmd = { "Gen" },
  config = function()
    require("gen").setup({
      model = "llama3.2:3b",
      host = "localhost",
      port = "11434",
      display_mode = "float",
      width = 80, -- reduced width
      height = 40, -- increased height
      show_prompt = true,
      show_model = true,
      no_auto_close = true,
    })
  end,
}
