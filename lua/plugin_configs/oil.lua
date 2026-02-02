local function reveal_in_finder()
  if vim.bo.filetype == "oil" then
    local oil = require("oil")
    local entry = oil.get_cursor_entry()
    local dir = oil.get_current_dir(0)
    if not entry or not dir then
      return
    end
    local path = vim.fs.joinpath(dir, entry.name)
    vim.fn.jobstart({ "open", "-R", path }, { detach = true })
    return
  end

  local path = vim.fn.expand("%:p")
  if path == "" then
    return
  end
  vim.fn.jobstart({ "open", "-R", path }, { detach = true })
end

require("oil").setup()
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>r", reveal_in_finder, { desc = "Reveal in Finder" })
