# NeoViM Plugin for Ketho's WoW Completions

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/thatnerdjosh/nvim-ketho-wow/lint-test.yml?branch=main&style=for-the-badge)
![Lua](https://img.shields.io/badge/Made%20with%20Lua-blueviolet.svg?style=for-the-badge&logo=lua)

## Setup

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{ "thatnerdjosh/nvim-ketho-wow" }
```

## Configuration

```lua
-- IMPORTANT: make sure to setup nvim-ketho-wow BEFORE lspconfig
require("nvim-ketho-wow").setup({
  -- add any options here, or leave empty to use the default settings
  -- enabled_completions = {
  --     "API",
  --     "Optional",
  -- }
})
```

## Features and structure

- Amends to, doesn't replace libraries.
- Easy to configure enabled completions when running `setup`.

## Known Limitations

- As of right now, the completions are set globally.

## Credits

* [ellisonleao](https://github.com/ellisonleao) for the [NViM Plugin Template](https://github.com/ellisonleao/nvim-plugin-template).
* [ketho](https://github.com/ketho) for help understanding the completions.
* [folke](https://github.com/folke) for creating neodev which inspired the path for amending libraries.
