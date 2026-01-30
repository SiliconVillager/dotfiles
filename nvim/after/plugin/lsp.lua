-- =========================
-- nvim-cmp setup
-- =========================
local cmp = require("cmp")

cmp.setup({
  mapping = {
    ["<C-p>"]     = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    ["<C-n>"]     = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    ["<C-y>"]     = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<Tab>"]     = nil,
    ["<S-Tab>"]   = nil,
  },
})

-- =========================
-- Shared LSP on_attach
-- =========================
local function on_attach(_, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
  vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end

-- =========================
-- Capabilities for nvim-cmp
-- =========================
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- =========================
-- Lua Language Server
-- =========================
vim.lsp.config("lua_ls", {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      diagnostics = { globals = { "vim" } },
      workspace = { library = vim.api.nvim_get_runtime_file("", true) },
      telemetry = { enable = false },
    },
  },
})

-- =========================
-- Godot GDScript LSP
-- =========================
local pipe = '/tmp/godot.pipe'

vim.lsp.config("gdscript", {
  name = "Godot",
  cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
  filetypes = { "gdscript" },
  root_dir = vim.fs.dirname(vim.fs.find({ 'project.godot', '.git' }, { upward = false })[1]),

  capabilities = capabilities,

  on_attach = function(client, bufnr)
    vim.api.nvim_command('echo serverstart("' .. pipe .. '")')

    local _notify = client.notify
    client.notify = function(method, params)
      if method == "textDocument/didClose" then
        return
      end
      _notify(method, params)
    end

    on_attach(client, bufnr)
  end,
})

-- =========================
-- Enable LSP servers
-- =========================
vim.lsp.enable("lua_ls")
vim.lsp.enable("gdscript")
