# Rupan Prasai Neovim Configuration

A modular Neovim configuration built for productivity and maintainability. Originally based on Kickstart.nvim but completely restructured into a clean, organized setup.

## Features

- **Modular Architecture** - Clean separation of concerns with logical file organization
- **LSP Support** - Full language server protocol integration with Mason
- **Modern Plugin Management** - Using lazy.nvim for fast startup times
- **Catppuccin Theme** - Beautiful, eye-friendly colorscheme
- **Enhanced Navigation** - File explorer, fuzzy finding, and quick navigation
- **Smart Completion** - Intelligent autocompletion and snippets
- **Git Integration** - Built-in git workflow tools
- **Syntax Highlighting** - Tree-sitter powered highlighting

## Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lua/
│   ├── setup.lua           # Lazy.nvim bootstrap
│   ├── core/               # Core Neovim settings
│   │   ├── options.lua     # Vim options & leader keys
│   │   ├── keymaps.lua     # All keymaps
│   │   ├── autocmds.lua    # Autocommands
│   │   └── health.lua      # Health checks
│   ├── plugins/            # Plugin specifications
│   │   ├── lsp.lua         # LSP configuration
│   │   ├── telescope.lua   # Fuzzy finder
│   │   ├── treesitter.lua  # Syntax highlighting
│   │   ├── neo-tree.lua    # File explorer
│   │   └── [other plugins]
│   └── themes/
│       └── catppuccin.lua     # Colorscheme configuration
```

## Installation

### Prerequisites

- Neovim 0.10+ (latest stable recommended)
- Git
- A Nerd Font (for icons)
- ripgrep (for telescope grep functionality)

### Install

```bash

# Clone this configuration
git clone https://github.com/RupanPrasai/nvim-config.git ~/.config/nvim

# Start Neovim (plugins will install automatically)
nvim
```

### Post-Installation

1. **LSP Setup**: Run `:Mason` to install language servers
2. **Health Check**: Run `:checkhealth` to verify everything is working
3. **Update Plugins**: Run `:Lazy sync` to update all plugins

## Key Bindings

### Leader Key: `<Space>`

| Key | Mode | Action |
|-----|------|--------|
| `<leader>sf` | Normal | Find files |
| `<leader>sg` | Normal | Live grep in project root |
| `<leader>sh` | Normal | Find help |
| `<leader>sp` | Normal | Find files in project root |
| `<leader>sn` | Normal | Find files in Neovim Files |
| `<leader>m` | Normal | Toggle Grapple Menu |
| `<leader>1-9` | Normal | Select Grapple Tag 1-9 |
| `<leader>n` | Normal | Select Next Grapple Tag |
| `<leader>p` | Normal | Select Next Grapple Tag |
| `<leader>[` | Normal | Toggle Neo-tree Focus |
| `<leader>{` | Normal | Toggle Neo-tree open |
| `<C-h/j/k/l>` | Normal | Navigate splits |

## Key Plugins

- **[lazy.nvim](https://github.com/folke/lazy.nvim)** - Plugin manager
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** - LSP configurations
- **[mason.nvim](https://github.com/williamboman/mason.nvim)** - LSP installer
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Syntax highlighting
- **[neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)** - File explorer
- **[catppuccin.nvim](https://https://github.com/catppuccin/nvim)** - Colorscheme
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** - Completion engine

## Customization

### Adding New Plugins

Create a new file in `lua/plugins/` and return a plugin specification:

```lua
-- lua/plugins/my-plugin.lua
return {
  'author/plugin-name',
  config = function()
    -- Plugin configuration
  end,
}
```

### Modifying Settings

- **Vim options**: Edit `lua/core/options.lua`
- **Key mappings**: Edit `lua/core/keymaps.lua`
- **Autocommands**: Edit `lua/core/autocmds.lua`

### Local Overrides

Create a `local.lua` file in the root directory for machine-specific settings (this file is gitignored).

## Troubleshooting

### Common Issues

**Plugins not loading?**
```bash
# Clean and reinstall
rm -rf ~/.local/share/nvim
nvim
```

**LSP not working?**
```bash
# Check Mason installations
:Mason
# Check LSP status
:LspInfo
```

**Icons not showing?**
- Install a [Nerd Font](https://www.nerdfonts.com/)
- Set your terminal to use the Nerd Font

## License

MIT License - feel free to use and modify as needed.

## Acknowledgments

- Originally inspired by [Kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
- Thanks to the Neovim community for amazing plugins and support
